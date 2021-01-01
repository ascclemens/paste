-brand = paste

## Nav

nav =
  .new = Neu
  .about = Über
  .log-in = Einloggen
  .log-out = Ausloggen
  .register = Registrieren
  .settings = Einstellungen
  .admin = Admin
  .swap-theme = Theme ändern

## Footer

footer-code = Code
# $version (string) version of the server
footer-server-version = Server: {$version}
# $version (string) version of the resources
footer-resources-version = Ressourcen: {$version}
footer-credits = Credits

## Avatar

# $username (string) username associated with the avatar
avatar-alt = {$username} Avatar

## Home

new = Neu
new-paste = Neuer Paste
new-paste-desc = Erstelle einen neuen Paste.

## Paste attributes

paste-name = Paste name
  .placeholder = Paste name
paste-description = Beschreibung
  .placeholder = Paste Beschreibung
paste-visibility = Sichtbarkeit
  .public = Öffentlich
  .public-desc = {paste-visibility.public} - Sichtbar für Suchmaschinen und auf deinem öffentlichen Profil
  .unlisted = Ungelistet
  .unlisted-desc = {paste-visibility.unlisted} - Versteckt vor Suchmaschinen und nur die mit dem Link können es sehen
  .private = Privat
  .private-desc = {paste-visibility.private} - Nur für dich sichtbar wenn eingeloggt
paste-expires = Läuft ab
  .no = Nie
  .relative = Relativ
  .absolute = Absolut

paste-absolute-expiry =
  .date = Ablaufdatum
  .time = Ablaufzeit
  .timezone = Ablauf Zeitzone

paste-relative-expiry =
  .years = Jahre
  .days = Tage
  .hours = Stunden
  .minutes = Minuten

## Antispam

# $a (number) first number to add
# $b (number) second number to add
antispam-math = Was ist {$a} + {$b}?
  .why = Warum?
  .description = Da du kein JavaScript verwendest verlangt {-brand} von dir, diese einfache Mathefrage zu beantworten um Bot-Spam zu verhindern. {-brand} hat eine API wenn du legitime sachen versuchst!
  .placeholder = Antwort

antispam-honeypot =
  .email = Email
  .title = Titel
  .error = Ein Fehler ist aufgetreten. Bitte versuch es erneut.

## Paste UI

paste-add-file = Datei Hinzufügen
paste-submit-anonymous = Anonym abschicken
paste-submit = Abschicken

## Paste display

disp-untitled = Unbetitelter Paste
# $files (number) number of files the paste has
disp-num-files = {$files} {$files ->
  [one] Datei
 *[other] Dateien
}
# put directly before the paste expiration date
# rendered, it ends up like "expires in 10 minutes"
disp-expires = Erlischt

disp-tab-files = Dateien
disp-tab-revisions = Überarbeitungen

disp-delete-title = Paste löschen
disp-delete-description = Um einen anonymen Paste zu löschen, musst du den Löschschlüssel verwenden. Gib ihn unten ein und klicke "{disp-delete-button}" zum löschen dieses Pastes.
disp-delete-key-placeholder = Löschschlüssel
disp-delete-button = Löschen
disp-delete-confirm = Bitte bestätige dass du diesen Paste löschen möchtest.

disp-dkey-title = Löschschlüssel
disp-dkey-msg-1 = Um diesen Paste löschen zu können musst du den unten stehenden Schlüssel verwenden. Diese Nachricht wird nur einmal angezeigt.
disp-dkey-msg-2 = Beachte, dass dieser Schlüssel auf <em>diesem Browser</em> für 30 Tage gespeichert wird. Wenn du den Cache leerst ist der Schlüssel weg.

disp-file-tab-rendered = Gerendert
disp-file-tab-source = Quelle
disp-file-raw = Roh
disp-file-binary-content = Binär Inhalt

## Revisions

revisions-page-title =
  .named = Überarbeitungen für {$name}
  .unnamed = Überarbeitungen für {disp-untitled}

revisions-title =
  .named = Überarbeitungen für <span class="keeps-spaces">{$name}</span>
  .unnamed = Überarbeitungen für <em>{disp-untitled}</em>

revisions-subtitle = Sieh dir die änderungen für diesen Paste an.

revisions-unknown-file = Unbekannte Datei

## Edit

edit-page-title =
  .named = {$name} bearbeiten
  .unnamed = {disp-untitled} bearbeiten

edit-title =
  .named = <span class="keeps-spaces">{$name}</span> bearbeiten
  .unnamed = <em>{disp-untitled}</em> bearbeiten

edit-subtitle = Ändere diesen Paste<span class="requires-js"> und seine Dateien</span>.

## User page

# $name (string) user's name
user-title = {$name}'s Pastes
# $pastes (number) number of pastes the user has
user-num-pastes = {$pastes} {$pastes ->
  [one] Paste
 *[other] Pastes
}
# $name (string) user's name
user-no-pastes = Sieht so aus als ob {$name} keine Pastes hat!

user-delete-selected = Auswahl löschen
user-delete = Pastes löschen
  .body = Bitte bestätige, dass du die ausgewählten Pastes löschen möchtest.
  .button = Alle löschen

user-select = Auswählen
  .all = Alle
  .none = Keine

## Pagination

pagination =
  .next = Nächste
  .previous = Vorherige

## File attributes

file-name-placeholder = Dateiname mit Erweiterung
file-language = Sprache hervorheben
file-language-auto = automatisch
file-hello-world = Hallo Welt!

## About

about-title = Über
# $siteName (string) name of this paste instance
about-blurb =
  .before = {$siteName} läuft auf
  .paste = {-brand},
  .after = ein Quelloffenes Project welches sich dem entwickeln eines vernünftigen, modernen Pastebins widmet, welches jeder selber hosten kann.

## Log in

login = Einloggen
  .description = In deinen Account einloggen.

login-username = Benutzername
  .placeholder = jimbo123

login-password = Passwort
  .placeholder = Dein sicheres Passwort

login-2fa = 2FA Code
  .placeholder = Erstellter Code odeer Backup Code

login-forgot-password = Passwort vergessen?

login-submit = Einloggen

login-error =
  .username = Benutzername nicht gefunden.
  .password = Inkorrektes Passwort.
  .tfa = Incorrekter Authentifizierungscode.
  .rate-limit = Bitte versuche es in {$minutes} erneut {$minutes ->
    [one] Minute
   *[other] Minuten
  }.
  .rate-limit-soon = Bitter versuche es in ein paar Sekunden erneut.

## Register

register = Registrieren
  .description = Erstelle einen Account.

register-display-name = Anzeigename
  .placeholder = Jim Bob Jones

register-username = Benutzername
  .placeholder = jimbo123

register-password = Passwort
  .placeholder = Etwas wirklich sicheres bitte <3

register-password-again = Passwort wiederholen
  .placeholder = Was du darüber geschrieben hast

register-email = Email
  .placeholder = your@email.com

register-submit = Abschicken

register-error =
  .empty-fields = Keines der Felder darf leer sein.
  .closed = Registrierung ist nicht offen und diese Email ist nicht auf der Liste.
  .duplicate-email = Ein Benutzer mit dieser Email existiert bereits.

## Forgot password

forgot = Passwort vergessen
  .description = Starte den Password-Reset Vorgang.

forgot-email = Email
  .placeholder = your@email.com

forgot-submit = Abschicken

## Reset password

reset = Password resetten
  .description = Resette dein Passwort hier.

reset-password = Passwort
  .placeholder = Etwas wirklich sicheres bitte <3

reset-password-again = Password (again)
  .placeholder = Was du darüber geschrieben hast

reset-submit = Abschicken

reset-error =
  .bad-url = Ungültige Passwort-Reset URL.
  .bad-reset = Ungültiger Password Reset.
  .missing-account = Dieser Account existiert nicht.

reset-success =
  .email = Wenn ein Account eine bestätigter Email Adresse mit {$email} hat wird eine Passwort-Reset Email zu ihr geschickt.
  .reset = Passwort aktualisiert.

## Settings

settings-tabs =
  .settings = Einstellungen
  .api-keys = API Schlüssel
  .two-factor = 2FA
  .delete = Löschen

## Account

account = Account
  .description = Accounteinstellungen verwalten.

email-not-verified = Deine Email ist nicht bestätigt!
  .body = Klicke auf den unteren Knopf um eine Bestätigungs-Email erneut zu senden.
  .button = Bestätigungs-Email senden

account-display-name = Anzeigename

account-username = Benutzername
  .help = Das ändern deines Benutzernamens wird alle Links mit deinem alten namen darin ungültig machen.

account-avatar = Avatar
  .help = Dein Avatar wird durch einen Avatar-Provider welcher mit deiner Email verknüpft ist bestimmt. Du kannst deinen Avatar beim Provider welchen du gewählt hast ändern.

account-avatar-provider = Avatar-Provider
  .link = Link

account-email = Email

account-change-password = Passwort ändern
  .help = Lasse das leer um dein Passwort gleich zu behalten.

account-change-password-again = Passwort erneut ändern

account-current-password = Aktuelles Passwort
  .help = Benötigt um jede Information zu ändern.

account-submit = Ändern

email-verify-error =
  .already-verified = Deine Email ist bereits bestätigt.
  .resend-too-soon = Du must 15 Minuten zwischen dem senden der Bestätigungs-Emails warten.
  .invalid = Ungültige Email Bestätigung.

email-verify-sent = Email gesendet.

email-verify-success = Email bestätigt.

account-error =
  .current-empty = Aktuelles Passwort darf nicht leer sein.
  .invalid-email = Ungültige Email.
  .invalid-display-name = Ungültiger Anzeigename: {$err}.
  .invalid-username = Ungültiger Benutzername: {$err}.
  .duplicate-username = Ein Benutzer mit diesem namen existiert bereits.
  .new-password-different = Neues Passwort passt nicht.
  .new-password-too-short = Das neue Passwort muss mindestens 10 Zeichen lang sein.
  .new-password-invalid = Das neue Password darf nicht dein Name, Benutzer, deine Email oder "passwort" sein.

account-success = Account aktualisiert.

## API keys

api-keys = API Schlüssel
  .description = API Schlüssel verwalten.

api-keys-table-header =
  .name = Name
  .key = Schlüssel

api-keys-no-keys = Du hast keine Schlüssel!

api-key-add =
  .name-placeholder = Schlüssel name
  .submit = Hinzufügen

api-key-error =
  .empty-name = API Schlüssel name darf nicht leer sein

## Delete account

delete-account = Account löschen
  .description = Lösche deinen Account hier.

delete-account-warning = Warte ne Sekunde!
  .line-1 = Bitte nimm dir Zeit um diesen text zu lesen!
  .line-2 = Das löschen deines Accounts ist <em>sofort und permanent</em>. Alle deine Pastes werden sofort aufhören, verfügbar zu sein und werden eventuell durch einen Task vom Server gelöscht werden.
  .line-3 = Wenn du wirklich deinen Account löschen willst, schreibe dein Passwort in die untere Box und klicke auf den Knopf. Du wirst auf die Startseite weitergeleitet nachdem dein Account gelöscht wurde.

delete-account-password = Dein sicheres Passwort
  .help = Schreibe dein Passwort zum bestätigen des Account löschen.

delete-account-submit = Lösche meinen Account

## 2FA

tfa = 2FA
  .description = Zwei Faktoren-Authentifizierung verwalten.

tfa-backup = Backup-Codes
  .body-1 = Wenn du jemals zugang zu deinem 2FA Gerät verliest, kannst du diese Codes anstelle von einem generierten Code verwenden um auf deinen Account zugreifen zu können. Jeder Code kann nur einmal verwendet werden. Sie werden nur einmal angezeigt, also verlier sie nicht!
  .body-2 = Du kannst zu jeder Zeit neue Codes erstellen während du eingeloggt bist. Verwende den unteren Knopf um dies zu tun.

tfa-new-backup = Neue Backup-Codes erstellen

tfa-enabled = 2FA ist aktiviert
tfa-disabled = 2FA ist nicht aktiviert.

tfa-turn-off = 2FA ausschalten
tfa-turn-on = 2FA einschalten

tfa-explanation =
  .part-1 = Zwei-Faktor-Authentifizierung (Eine Form von <a class="external" target="_blank" href="https://de.wikipedia.org/wiki/Multi-Faktor-Authentisierung">Multi-Faktor-Authentisierung</a>) erhöht die Sicherheit deines Accounts dadurch, dass du ein einmalig erstelltes Passwort, welches von einem anderen Gerät erstellt wird, angeben musst um dich einzuloggen.
  .part-2 = Dieses Feature benötigt ein Smart-Device oder Smart-Card und eine App um die Codes zu erstellen. Für Android und iOS Geräte kannst du dir die unten stehende Tabelle ansehen.

tfa-devices =
  .play-store = Android (Play Store)
  .ios = iOS (App Store)
  .fdroid = Android (F-Droid)

tfa-error =
  .already-enabled = 2FA ist bereits für deinen Account aktiviert.
  .not-enabled = 2FA ist nicht auf deinem Account aktiviert.
  .missing-secret = Keine geteilten Geheimnisse wurden bisher erstellt.

## Enable 2FA

tfa-enable = 2FA aktivieren
  .description = Aktiviere Zwei-Faktor-Authentifizierung.

tfa-enable-scan-qr = Skanne den unten stehenden QR-Code mit deiner Authentifizierungs-App. Wenn du den Code nicht scannen kannst, kannst du das geteilte Geheimnis manuell und <strong>ohne Lücken</strong> eingeben:

tfa-enable-new-secret = Wenn du ein neues geteiltes Geheimnis erstellen willst kannst du den Knopf unten anklicken.
  .button = Geheimnis neu erstellen

tfa-enable-enter-code = Nachdem einstellen der Authentifizierungs-App, gib den erstellten Code unten ein.
  .placeholder = 2FA Code
  .button = Aktivieren

## Disable 2FA

tfa-disable = 2FA deaktivieren
  .description = Zwei-Faktor-Authentifizierung ausschalten.

tfa-disable-warning = Das ausschalten von 2FA wird die sicherheit deines Accounts verringern. Wenn du es weiterhin deaktivieren willst, gib dein Passwort unten ein.

tfa-disable-password =
  .placeholder = Dein sicheres Passwort
  .button = Deaktivieren

## Credits

credits = Credits
  .description = Wenn {-brand} ein Film wäre würden diese hier am enge sein.

## Errors

error-400 = Schlechte Anfrage.
  .description = Du hast eine ungültige Anfrage gemacht.

error-403 = Verboten.
  .description = Dir ist es nicht erlaubt, zu sehen oder zu machen was auch immer es war dass du versucht hast zu sehen oder zu tun.

error-404 = Seite nicht gefunden.
  .description = Wir konnten die Seite nicht finden, welche du sehen wolltest. Sorry!

error-500 = Interner Serverfehler.
  .description = Auch bekannt als "Wir habens verbockt." Dies ist immer ein bug also gönn es dir, <a href="https://github.com/ascclemens/paste/issues/new?title=500%20on%20%3Croute%3E&body=So%20I%20was%20trying%20to%20go%20to%20%3Croute%3E,%20but%20then%20the%20server%20was%20all%20like%20nah,%20bb,%20500!">diesen Fehler zu melden!</a>

error-other = Fehler.
  .description = Du hast einen merkwürdigen Fehler.

error-csrf = Ungültiger Anti-CSRF Zeichen.

## Admin

admin-success = Du bist jetzt ein Admin.

## Admin errors

admin-no-key = Kein Admin Schlüssel wurde gesetzt.
admin-bad-key = Ungültiger Schlüssel
admin-already-admin = Du bist bereits ein Admin.
admin-exists = Du kannst auf diese weise kein Admin werden wenn Admins bereits existieren.

## Admin nav

admin-tabs =
  .overview = Übersicht
  .pastes = Pastes
  .users = Benutzer
  .config = Config
  .maintenance = Wartung

## Admin overview

admin-overview =
  .title = Admin
  .subtitle = Führe Administrations-Tasks aus.

admin-stats =
  .pastes = Pastes
  .users = Benutzer

## Admin pastes

admin-pastes =
  .title = Pastes
  .subtitle = Verwalte alle Pastes.

admin-pastes-list-headers =
  .link = Link
  .name = Name
  .description = Beschreibung
  .visibility = Sichtbarkeit
  .author = Autor
  .files = Dateien
  .created = Erstellt
  .expires = Erlischt
  .actions = Aktionen

admin-pastes-list =
  .anonymous = anonymous
  .empty = leer
  .never = nie

admin-paste-delete =
  .success = Paste gelöscht.
  .missing = Konnte diesen Paste nicht finden. Wurde es bereits gelöscht?

admin-paste-delete-modal =
  .title = Lösche Paste als Admin
  .confirm = Bitte bestätige, dass du diesen Paste als Admin löschen willst.
  .button = Lösche Paste als Admin

admin-batch-delete = Batch löschen
  .desc = Gib Paste IDs oder URLs, eine pro Linie, zum löschen ein.
  .placeholder = Paste IDs oder URLs, eine pro Linie
  .button = Löschen
  .error = Konnte <code>{$id}</code> nicht löschen: {$error}.
  .success = {$pastes} gelöscht {$pastes ->
    [one] Paste
   *[other] Pastes
  }.

admin-batch-delete-missing = Konnte Paste nicht finden

admin-batch-delete-bad-id = Ungültige ID: {$err}.

## Admin users

admin-users =
  .title = Benutzer
  .subtitle = Alle Benutzer verwalten.

admin-users-table =
  .name = Name
  .username = Benutzername
  .email = Email
  .email-verified = Email bestätigt
  .tfa-enabled = 2FA aktiviert
  .admin = Admin
  .actions = Aktionen

admin-users-yes-no =
  .yes = Ja
  .no = Nein

admin-users-admin =
  .super = Super
  .normal = Admin
  .none = Keine

admin-users-delete =
  .missing = Kein solcher Benutzer.
  .success = Benutzer gelöscht.
  .super = Kann einen Superadmin nicht löschen.
  .other-admin = Kann einen anderen Admin nicht löschen.

admin-users-delete-modal =
  .title = Benutzer löschen
  .confirm = Bitte bestätige dass du diesen Benutzer löschen willst.
  .button = Löschen

admin-users-promote-modal =
  .title = Befördere <em>{$user}</em>
  .line-1 = Auf was für einen Level möchtest du <em>{$user}</em> befördern?
  .superadmin = Superadmin
  .superadmin-desc = Superadmins können nicht gelöscht werden und können den Adminstatus anderer Benutzer ändern. Sie können alles kontrollieren.
  .superadmin-warning = <strong class="has-text-danger">Wichtig</strong>: Der einzige Weg um einen Superadmin zu degradieren ist nur durch das direkte zugreifen auf die Datenbank möglich.
  .admin = Admin
  .admin-desc = Admins können gelöscht werden und können den Adminstatus von anderen Benutzern nicht kontrollieren. Admins können andere Admins nicht löschen
  .button = Befördern

admin-users-demote-modal =
  .title = <em>{$user}</em> degradieren
  .desc = Degradierte Benutzer werden zu normalen Benutzern ohne Adminstatus.
  .button = Degradieren

admin-users-status =
  .must-be-super = Du musst ein Superadmin sein um Benutzer zu befördern/degradieren.
  .missing = Kein solcher Benutzer.
  .target-super = Du kannst einen Superadmin nicht befördern/degradieren.
  .already-admin = Dieser Benutzer ist bereits ein Admin.
  .not-admin = Dieser Benutzer ist kein Admin.
  .promoted = Benutzer erfolgreich befördert.
  .demoted = Benutzer erfolgreich degradiert.
  .invalid-level = Ungültiger Adminlevel.

## Admin config

admin-config =
  .title = Config
  .subtitle = Bearbeite die Seitenconfiguration.

admin-config-save = Speichern

## CSV

csv-error =
  .utf-8 = {-brand} möchte dir gerne diese CSV Datei als Tabelle anzeigen, konnte es aber nicht als gültige UTF-8 lesen: {$err}.
  .utf-8-pos = {-brand} möchte dir gerne diese CSV Datei als Tabelle anzeigen, konnte es aber nicht als gültige UTF-8 auf Linie {$line} (byte {$byte}) lesen:: {$err}.
  .lengths = {-brand} möchte dir gerne diese CSV Datei als Tabelle anzeigen, aber es hat eine Reihe mit {$secondRowFields} {$secondRowFields ->
    [one] Feld
   *[other] Felder
  } während die vorherige Reihe {$firstRowFields} hatte. {$firstRowFields ->
    [one] Feld
   *[other] Felder
  }
  .lengths-pos = {-brand} möchte dir gerne diese CSV Datei als Tabelle anzeigen, aber es hat eine Reihe mit {$secondRowFields} {$secondRowFields ->
    [one] Feld
   *[other] Felder
  } (Linie {$line}, byte {$byte}) während die vorherige Reihe {$firstRowFields} hatte. {$firstRowFields ->
    [one] Feld
   *[other] Felder
  }
