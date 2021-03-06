use crate::{
  config::Config,
  database::{
    DbConn,
    models::users::{User, NewUser},
    schema::users,
  },
  errors::*,
  i18n::prelude::*,
  models::id::UserId,
  routes::web::{context, AddCsp, Honeypot, Rst, OptionalWebUser, Session},
  utils::{email, AcceptLanguage, PasswordContext, HashedPassword, Validator},
};

use chrono::Utc;

use diesel::{dsl::count_star, prelude::*};

use rocket::{
  State,
  request::Form,
  response::Redirect,
};

use rocket_contrib::templates::Template;

use serde_json::json;

use sidekiq::Client as SidekiqClient;

use uuid::Uuid;

#[get("/register")]
pub fn get(config: State<Config>, user: OptionalWebUser, mut sess: Session, langs: AcceptLanguage) -> AddCsp<Rst> {
  if user.is_some() {
    return AddCsp::none(Rst::Redirect(Redirect::to(uri!(crate::routes::web::index::get))));
  }

  let honeypot = Honeypot::new();
  let mut ctx = context(&*config, user.as_ref(), &mut sess, langs);
  ctx["honeypot"] = json!(honeypot);
  ctx["links"] = json!(links!(
    "register_action" => uri!(crate::routes::web::auth::register::post),
  ));
  AddCsp::new(
    Rst::Template(Template::render("auth/register", ctx)),
    vec![format!("style-src '{}'", honeypot.integrity_hash)],
  )
}

#[derive(Debug, FromForm, Serialize)]
pub struct RegistrationData {
  name: String,
  username: String,
  email: String,
  #[serde(skip)]
  password: String,
  #[serde(skip)]
  password_verify: String,
  #[serde(skip)]
  anti_csrf_token: String,
  #[serde(skip)]
  #[form(field = "title")]
  honeypot: String,
}

#[post("/register", format = "application/x-www-form-urlencoded", data = "<data>")]
pub fn post(data: Form<RegistrationData>, mut sess: Session, conn: DbConn, config: State<Config>, sidekiq: State<SidekiqClient>, l10n: L10n) -> Result<Redirect> {
  let data = data.into_inner();
  sess.set_form(&data);

  if !sess.check_token(&data.anti_csrf_token) {
    sess.add_data("error", l10n.tr("error-csrf")?);
    return Ok(Redirect::to(uri!(get)));
  }

  if !data.honeypot.is_empty() {
    sess.add_data("error", l10n.tr(("antispam-honeypot", "error"))?);
    return Ok(Redirect::to(uri!(get)));
  }

  if data.username.is_empty() || data.name.is_empty()  || data.email.is_empty() || data.password.is_empty() {
    sess.add_data("error", l10n.tr(("register-error", "empty-fields"))?);
    return Ok(Redirect::to(uri!(get)));
  }
  let username = match Validator::validate_username(&data.username) {
    Ok(u) => u,
    Err(e) => {
      sess.add_data("error", l10n.tr_ex(
        ("account-error", "invalid-username"),
        |req| req.arg("err", e),
      )?);
      return Ok(Redirect::to(uri!(get)));
    },
  };
  let display_name = match Validator::validate_display_name(&data.name) {
    Ok(d) => d.into_owned(),
    Err(e) => {
      sess.add_data("error", l10n.tr_ex(
        ("account-error", "invalid-display-name"),
        |req| req.arg("err", e),
      )?);
      return Ok(Redirect::to(uri!(get)));
    },
  };

  if !email::check_email(&data.email) {
    sess.add_data("error", l10n.tr(("account-error", "invalid-email"))?);
    return Ok(Redirect::to(uri!(get)));
  }

  // perform checks for closed registrations
  if !config.read().registration.open {
    // check that the email is in the whitelisted emails
    if !config.read().registration.whitelisted_emails.contains(&data.email) {
      sess.add_data("error", l10n.tr(("register-error", "closed"))?);
      return Ok(Redirect::to(uri!(get)));
    }

    // check that the email hasn't already been used (regardless of verification)
    let existing: i64 = users::table
      .filter(users::email.eq(&data.email))
      .select(count_star())
      .first(&*conn)?;
    if existing > 0 {
      sess.add_data("error", l10n.tr(("register-error", "duplicate-email"))?);
      return Ok(Redirect::to(uri!(get)));
    }
  }

  {
    let pw_ctx = PasswordContext::new(
      &data.password,
      &data.password_verify,
      &data.name,
      &data.username,
      &data.email,
    );
    if let Err(e) = pw_ctx.validate() {
      sess.add_data("error", e);
      return Ok(Redirect::to(uri!(get)));
    }
  }

  let existing_names: i64 = users::table
    .filter(users::username.eq(&username))
    .select(count_star())
    .get_result(&*conn)?;
  if existing_names > 0 {
    sess.add_data("error", l10n.tr(("account-error", "duplicate-username"))?);
    return Ok(Redirect::to(uri!(get)));
  }

  let id = UserId(Uuid::new_v4());

  let nu = NewUser::new(
    id,
    username.into_owned(),
    HashedPassword::from(data.password).into_string(),
    Some(display_name),
    Some(data.email),
  );

  let user: User = diesel::insert_into(users::table)
    .values(&nu)
    .get_result(&*conn)?;

  let (ver, secret) = user.create_email_verification(&conn, Some(Utc::now().naive_utc()))?;

  sidekiq.push(ver.job(&*config, &user, &secret)?.into())?;

  sess.user_id = Some(id);

  sess.take_form();
  Ok(Redirect::to("lastpage"))
}
