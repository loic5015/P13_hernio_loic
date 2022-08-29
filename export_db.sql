--
-- Fichier généré par SQLiteStudio v3.2.1 sur lun. août 29 11:38:05 2022
--
-- Encodage texte utilisé : System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table : annuaire_adressenew
CREATE TABLE "annuaire_adressenew" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "number" integer unsigned NOT NULL CHECK ("number" >= 0), "street" varchar(64) NOT NULL, "city" varchar(64) NOT NULL, "state" varchar(2) NOT NULL, "zip_code" integer unsigned NOT NULL CHECK ("zip_code" >= 0), "country_iso_code" varchar(3) NOT NULL);
INSERT INTO annuaire_adressenew (id, number, street, city, state, zip_code, country_iso_code) VALUES (1, 7217, 'Bedford Street', 'Brunswick', 'GA', 31525, 'USA');
INSERT INTO annuaire_adressenew (id, number, street, city, state, zip_code, country_iso_code) VALUES (2, 4, 'Military Street', 'Willoughby', 'OH', 44094, 'USA');
INSERT INTO annuaire_adressenew (id, number, street, city, state, zip_code, country_iso_code) VALUES (3, 340, 'Wintergreen Avenue', 'Newport News', 'VA', 23601, 'USA');
INSERT INTO annuaire_adressenew (id, number, street, city, state, zip_code, country_iso_code) VALUES (4, 9230, 'E. Joy Ridge Street', 'Marquette', 'MI', 49855, 'USA');
INSERT INTO annuaire_adressenew (id, number, street, city, state, zip_code, country_iso_code) VALUES (5, 9606, 'Harvard Street', 'Aliquippa', 'PA', 15001, 'USA');
INSERT INTO annuaire_adressenew (id, number, street, city, state, zip_code, country_iso_code) VALUES (6, 588, 'Argyle Avenue', 'East Meadow', 'NY', 11554, 'USA');

-- Table : annuaire_lettingnew
CREATE TABLE "annuaire_lettingnew" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "title" varchar(256) NOT NULL, "address_id" integer NOT NULL UNIQUE REFERENCES "annuaire_adressenew" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO annuaire_lettingnew (id, title, address_id) VALUES (1, 'Joshua Tree Green Haus /w Hot Tub', 1);
INSERT INTO annuaire_lettingnew (id, title, address_id) VALUES (2, 'Oceanview Retreat', 2);
INSERT INTO annuaire_lettingnew (id, title, address_id) VALUES (3, '''Silo Studio'' Cottage', 3);
INSERT INTO annuaire_lettingnew (id, title, address_id) VALUES (4, 'Pirates of the Caribbean Getaway', 4);
INSERT INTO annuaire_lettingnew (id, title, address_id) VALUES (5, 'The Mushroom Dome Retreat & LAND of Paradise Suite', 5);
INSERT INTO annuaire_lettingnew (id, title, address_id) VALUES (6, 'Underground Hygge', 6);

-- Table : auth_group
CREATE TABLE "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(150) NOT NULL UNIQUE);

-- Table : auth_group_permissions
CREATE TABLE "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table : auth_permission
CREATE TABLE "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (1, 1, 'add_address', 'Can add address');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (2, 1, 'change_address', 'Can change address');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (3, 1, 'delete_address', 'Can delete address');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (4, 1, 'view_address', 'Can view address');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (5, 2, 'add_profile', 'Can add profile');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (6, 2, 'change_profile', 'Can change profile');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (7, 2, 'delete_profile', 'Can delete profile');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (8, 2, 'view_profile', 'Can view profile');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (9, 3, 'add_letting', 'Can add letting');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (10, 3, 'change_letting', 'Can change letting');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (11, 3, 'delete_letting', 'Can delete letting');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (12, 3, 'view_letting', 'Can view letting');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (13, 4, 'add_logentry', 'Can add log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (14, 4, 'change_logentry', 'Can change log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (15, 4, 'delete_logentry', 'Can delete log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (16, 4, 'view_logentry', 'Can view log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (17, 5, 'add_permission', 'Can add permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (18, 5, 'change_permission', 'Can change permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (19, 5, 'delete_permission', 'Can delete permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (20, 5, 'view_permission', 'Can view permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (21, 6, 'add_group', 'Can add group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (22, 6, 'change_group', 'Can change group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (23, 6, 'delete_group', 'Can delete group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (24, 6, 'view_group', 'Can view group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (25, 7, 'add_user', 'Can add user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (26, 7, 'change_user', 'Can change user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (27, 7, 'delete_user', 'Can delete user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (28, 7, 'view_user', 'Can view user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (29, 8, 'add_contenttype', 'Can add content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (30, 8, 'change_contenttype', 'Can change content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (31, 8, 'delete_contenttype', 'Can delete content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (32, 8, 'view_contenttype', 'Can view content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (33, 9, 'add_session', 'Can add session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (34, 9, 'change_session', 'Can change session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (35, 9, 'delete_session', 'Can delete session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (36, 9, 'view_session', 'Can view session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (37, 10, 'add_adressenew', 'Can add adresse new');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (38, 10, 'change_adressenew', 'Can change adresse new');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (39, 10, 'delete_adressenew', 'Can delete adresse new');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (40, 10, 'view_adressenew', 'Can view adresse new');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (41, 11, 'add_lettingnew', 'Can add letting new');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (42, 11, 'change_lettingnew', 'Can change letting new');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (43, 11, 'delete_lettingnew', 'Can delete letting new');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (44, 11, 'view_lettingnew', 'Can view letting new');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (45, 12, 'add_profilenew', 'Can add profile new');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (46, 12, 'change_profilenew', 'Can change profile new');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (47, 12, 'delete_profilenew', 'Can delete profile new');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (48, 12, 'view_profilenew', 'Can view profile new');

-- Table : auth_user
CREATE TABLE "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "username" varchar(150) NOT NULL UNIQUE, "first_name" varchar(30) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "last_name" varchar(150) NOT NULL);
INSERT INTO auth_user (id, password, last_login, is_superuser, username, first_name, email, is_staff, is_active, date_joined, last_name) VALUES (1, 'pbkdf2_sha256$180000$p35UH2yYInHF$4LTphT2basUmvfLq+XHETVvKONZrWUsLfKu1K8/Hqdk=', '2022-08-18 14:16:59.381117', 1, 'admin', '', 'admin@email.com', 1, 1, '2020-06-14 09:41:15.326411', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, first_name, email, is_staff, is_active, date_joined, last_name) VALUES (2, 'pbkdf2_sha256$180000$8ZKjEEdeYubZ$jq4T/Vaa2DWdAvzNys4ynNO6Wd/PsWe3dux20F7BGgQ=', NULL, 0, '4meRomance', 'John', 'coemperor@famemma.net', 0, 1, '2020-06-14 09:44:05', 'Rodriguez');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, first_name, email, is_staff, is_active, date_joined, last_name) VALUES (3, 'pbkdf2_sha256$180000$DdNkE39rolFF$nGmWZanXv4GlcTxtfUgc+MUIqBgDszAtvFfuFu538LQ=', NULL, 0, 'AirWow', 'Ada', 'flocation.vam4@glendenningflowerdesign.com', 0, 1, '2020-06-14 09:44:45', 'Paul');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, first_name, email, is_staff, is_active, date_joined, last_name) VALUES (4, 'pbkdf2_sha256$180000$3VJdHtu39cbD$8qNVkvJ0KddsvfFueEm09Sg0LxgFievigmtAEb39paE=', NULL, 0, 'DavWin', 'Cassandra', '5houssam.kessaiso@facpidif.ml', 0, 1, '2020-06-14 09:46:28', 'Grahm');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, first_name, email, is_staff, is_active, date_joined, last_name) VALUES (5, 'pbkdf2_sha256$180000$zjnQu4LiqMAT$Qxom08ahzw11iPlX6kYyySa94yJXdjrptta6Qzx8HWE=', NULL, 0, 'HeadlinesGazer', 'Jamie', 'jssssss33@acee9.live', 0, 1, '2020-06-14 09:47:21', 'Lal');

-- Table : auth_user_groups
CREATE TABLE "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table : auth_user_user_permissions
CREATE TABLE "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table : django_admin_log
CREATE TABLE "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "action_time" datetime NOT NULL, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "action_flag" smallint unsigned NOT NULL CHECK ("action_flag" >= 0));
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (1, '2020-06-14 09:44:05.888484', '2', '4meRomance', '[{"added": {}}]', 7, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (2, '2020-06-14 09:44:45.294240', '3', 'AirWow', '[{"added": {}}]', 7, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (3, '2020-06-14 09:45:14.363463', '3', 'AirWow', '[{"changed": {"fields": ["First name", "Last name", "Email address"]}}]', 7, 1, 2);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (4, '2020-06-14 09:45:57.716652', '2', '4meRomance', '[{"changed": {"fields": ["First name", "Last name", "Email address"]}}]', 7, 1, 2);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (5, '2020-06-14 09:46:29.087354', '4', 'DavWin', '[{"added": {}}]', 7, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (6, '2020-06-14 09:46:46.028853', '4', 'DavWin', '[{"changed": {"fields": ["First name", "Last name", "Email address"]}}]', 7, 1, 2);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (7, '2020-06-14 09:47:21.157003', '5', 'HeadlinesGazer', '[{"added": {}}]', 7, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (8, '2020-06-14 09:47:39.497282', '5', 'HeadlinesGazer', '[{"changed": {"fields": ["First name", "Last name", "Email address"]}}]', 7, 1, 2);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (9, '2020-06-14 09:47:42.559245', '5', 'HeadlinesGazer', '[]', 7, 1, 2);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (10, '2020-06-14 09:49:23.116969', '1', '7217 Bedford Street', '[{"added": {}}]', 1, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (11, '2020-06-14 09:49:50.934835', '2', '4 Military Street', '[{"added": {}}]', 1, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (12, '2020-06-14 09:50:23.835740', '3', '340 Wintergreen Avenue', '[{"added": {}}]', 1, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (13, '2020-06-14 09:50:52.590818', '4', '9230 E. Joy Ridge Street', '[{"added": {}}]', 1, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (14, '2020-06-14 09:51:21.192094', '5', '9606 Harvard Street', '[{"added": {}}]', 1, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (15, '2020-06-14 09:51:46.901429', '6', '588 Argyle Avenue', '[{"added": {}}]', 1, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (16, '2020-06-14 09:52:18.053407', '1', 'Joshua Tree Green Haus /w Hot Tub', '[{"added": {}}]', 3, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (17, '2020-06-14 09:52:32.121032', '2', 'Oceanview Retreat', '[{"added": {}}]', 3, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (18, '2020-06-14 09:52:43.896407', '3', '''Silo Studio'' Cottage', '[{"added": {}}]', 3, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (19, '2020-06-14 09:52:59.316126', '4', 'Pirates of the Caribbean Getaway', '[{"added": {}}]', 3, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (20, '2020-06-14 09:53:41.990687', '5', 'The Mushroom Dome Retreat & LAND of Paradise Suite', '[{"added": {}}]', 3, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (21, '2020-06-14 09:53:54.720878', '6', 'Underground Hygge', '[{"added": {}}]', 3, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (22, '2020-06-14 09:54:29.736336', '1', 'HeadlinesGazer', '[{"added": {}}]', 2, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (23, '2020-06-14 09:54:41.934625', '2', 'DavWin', '[{"added": {}}]', 2, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (24, '2020-06-14 09:54:53.201841', '3', 'AirWow', '[{"added": {}}]', 2, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (25, '2020-06-14 09:55:06.931625', '4', '4meRomance', '[{"added": {}}]', 2, 1, 1);

-- Table : django_content_type
CREATE TABLE "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO django_content_type (id, app_label, model) VALUES (1, 'oc_lettings_site', 'address');
INSERT INTO django_content_type (id, app_label, model) VALUES (2, 'oc_lettings_site', 'profile');
INSERT INTO django_content_type (id, app_label, model) VALUES (3, 'oc_lettings_site', 'letting');
INSERT INTO django_content_type (id, app_label, model) VALUES (4, 'admin', 'logentry');
INSERT INTO django_content_type (id, app_label, model) VALUES (5, 'auth', 'permission');
INSERT INTO django_content_type (id, app_label, model) VALUES (6, 'auth', 'group');
INSERT INTO django_content_type (id, app_label, model) VALUES (7, 'auth', 'user');
INSERT INTO django_content_type (id, app_label, model) VALUES (8, 'contenttypes', 'contenttype');
INSERT INTO django_content_type (id, app_label, model) VALUES (9, 'sessions', 'session');
INSERT INTO django_content_type (id, app_label, model) VALUES (10, 'annuaire', 'adressenew');
INSERT INTO django_content_type (id, app_label, model) VALUES (11, 'annuaire', 'lettingnew');
INSERT INTO django_content_type (id, app_label, model) VALUES (12, 'profiles', 'profilenew');

-- Table : django_migrations
CREATE TABLE "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2020-06-14 09:35:53.920704');
INSERT INTO django_migrations (id, app, name, applied) VALUES (2, 'auth', '0001_initial', '2020-06-14 09:35:53.958834');
INSERT INTO django_migrations (id, app, name, applied) VALUES (3, 'admin', '0001_initial', '2020-06-14 09:35:53.982503');
INSERT INTO django_migrations (id, app, name, applied) VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2020-06-14 09:35:54.021436');
INSERT INTO django_migrations (id, app, name, applied) VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2020-06-14 09:35:54.045036');
INSERT INTO django_migrations (id, app, name, applied) VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2020-06-14 09:35:54.070462');
INSERT INTO django_migrations (id, app, name, applied) VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2020-06-14 09:35:54.084907');
INSERT INTO django_migrations (id, app, name, applied) VALUES (8, 'auth', '0003_alter_user_email_max_length', '2020-06-14 09:35:54.100444');
INSERT INTO django_migrations (id, app, name, applied) VALUES (9, 'auth', '0004_alter_user_username_opts', '2020-06-14 09:35:54.138421');
INSERT INTO django_migrations (id, app, name, applied) VALUES (10, 'auth', '0005_alter_user_last_login_null', '2020-06-14 09:35:54.156665');
INSERT INTO django_migrations (id, app, name, applied) VALUES (11, 'auth', '0006_require_contenttypes_0002', '2020-06-14 09:35:54.165968');
INSERT INTO django_migrations (id, app, name, applied) VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2020-06-14 09:35:54.182412');
INSERT INTO django_migrations (id, app, name, applied) VALUES (13, 'auth', '0008_alter_user_username_max_length', '2020-06-14 09:35:54.219956');
INSERT INTO django_migrations (id, app, name, applied) VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2020-06-14 09:35:54.239397');
INSERT INTO django_migrations (id, app, name, applied) VALUES (15, 'auth', '0010_alter_group_name_max_length', '2020-06-14 09:35:54.267658');
INSERT INTO django_migrations (id, app, name, applied) VALUES (16, 'auth', '0011_update_proxy_permissions', '2020-06-14 09:35:54.285340');
INSERT INTO django_migrations (id, app, name, applied) VALUES (17, 'oc_lettings_site', '0001_initial', '2020-06-14 09:35:54.304380');
INSERT INTO django_migrations (id, app, name, applied) VALUES (18, 'sessions', '0001_initial', '2020-06-14 09:35:54.324858');
INSERT INTO django_migrations (id, app, name, applied) VALUES (19, 'annuaire', '0001_initial', '2022-08-18 14:41:47.955849');
INSERT INTO django_migrations (id, app, name, applied) VALUES (20, 'annuaire', '0002_auto_20220818_1719', '2022-08-18 15:41:27.626931');
INSERT INTO django_migrations (id, app, name, applied) VALUES (21, 'profiles', '0001_initial', '2022-08-18 15:56:35.428017');
INSERT INTO django_migrations (id, app, name, applied) VALUES (22, 'profiles', '0002_auto_20220818_1751', '2022-08-18 15:56:35.440017');

-- Table : django_session
CREATE TABLE "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('6rmrxn3uts8m2ytfny39msvhhcr7x6ge', 'YzFjNTIxZWFkZGRkMmE2Y2MwNDY2YWUzOTg1MGJlNTM1MTRiYjliNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NTMxMjkyZWYxMzBjMjBjNDMwOWE5YzEzMGJmMDYyZjlmN2Q0NTQxIn0=', '2020-06-28 09:41:56.984887');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('xgaa2zcyw7j968wwdx0bk1gahu8hscyz', 'YzFjNTIxZWFkZGRkMmE2Y2MwNDY2YWUzOTg1MGJlNTM1MTRiYjliNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NTMxMjkyZWYxMzBjMjBjNDMwOWE5YzEzMGJmMDYyZjlmN2Q0NTQxIn0=', '2022-08-25 14:32:42.359125');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('15y6toaujgze461x56po5sm8mblsvbwx', 'YzFjNTIxZWFkZGRkMmE2Y2MwNDY2YWUzOTg1MGJlNTM1MTRiYjliNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NTMxMjkyZWYxMzBjMjBjNDMwOWE5YzEzMGJmMDYyZjlmN2Q0NTQxIn0=', '2022-08-25 16:30:15.844057');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('s2jnuspbd8tpeo8hyl4l5p86fd3difqr', 'YzFjNTIxZWFkZGRkMmE2Y2MwNDY2YWUzOTg1MGJlNTM1MTRiYjliNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NTMxMjkyZWYxMzBjMjBjNDMwOWE5YzEzMGJmMDYyZjlmN2Q0NTQxIn0=', '2022-09-01 14:16:59.386116');

-- Table : oc_lettings_site_address
CREATE TABLE "oc_lettings_site_address" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "number" integer unsigned NOT NULL CHECK ("number" >= 0), "street" varchar(64) NOT NULL, "city" varchar(64) NOT NULL, "state" varchar(2) NOT NULL, "zip_code" integer unsigned NOT NULL CHECK ("zip_code" >= 0), "country_iso_code" varchar(3) NOT NULL);
INSERT INTO oc_lettings_site_address (id, number, street, city, state, zip_code, country_iso_code) VALUES (1, 7217, 'Bedford Street', 'Brunswick', 'GA', 31525, 'USA');
INSERT INTO oc_lettings_site_address (id, number, street, city, state, zip_code, country_iso_code) VALUES (2, 4, 'Military Street', 'Willoughby', 'OH', 44094, 'USA');
INSERT INTO oc_lettings_site_address (id, number, street, city, state, zip_code, country_iso_code) VALUES (3, 340, 'Wintergreen Avenue', 'Newport News', 'VA', 23601, 'USA');
INSERT INTO oc_lettings_site_address (id, number, street, city, state, zip_code, country_iso_code) VALUES (4, 9230, 'E. Joy Ridge Street', 'Marquette', 'MI', 49855, 'USA');
INSERT INTO oc_lettings_site_address (id, number, street, city, state, zip_code, country_iso_code) VALUES (5, 9606, 'Harvard Street', 'Aliquippa', 'PA', 15001, 'USA');
INSERT INTO oc_lettings_site_address (id, number, street, city, state, zip_code, country_iso_code) VALUES (6, 588, 'Argyle Avenue', 'East Meadow', 'NY', 11554, 'USA');

-- Table : oc_lettings_site_letting
CREATE TABLE "oc_lettings_site_letting" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "title" varchar(256) NOT NULL, "address_id" integer NOT NULL UNIQUE REFERENCES "oc_lettings_site_address" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO oc_lettings_site_letting (id, title, address_id) VALUES (1, 'Joshua Tree Green Haus /w Hot Tub', 1);
INSERT INTO oc_lettings_site_letting (id, title, address_id) VALUES (2, 'Oceanview Retreat', 2);
INSERT INTO oc_lettings_site_letting (id, title, address_id) VALUES (3, '''Silo Studio'' Cottage', 3);
INSERT INTO oc_lettings_site_letting (id, title, address_id) VALUES (4, 'Pirates of the Caribbean Getaway', 4);
INSERT INTO oc_lettings_site_letting (id, title, address_id) VALUES (5, 'The Mushroom Dome Retreat & LAND of Paradise Suite', 5);
INSERT INTO oc_lettings_site_letting (id, title, address_id) VALUES (6, 'Underground Hygge', 6);

-- Table : oc_lettings_site_profile
CREATE TABLE "oc_lettings_site_profile" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "favorite_city" varchar(64) NOT NULL, "user_id" integer NOT NULL UNIQUE REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO oc_lettings_site_profile (id, favorite_city, user_id) VALUES (1, 'Buenos Aires', 5);
INSERT INTO oc_lettings_site_profile (id, favorite_city, user_id) VALUES (2, 'Barcelona', 4);
INSERT INTO oc_lettings_site_profile (id, favorite_city, user_id) VALUES (3, 'Budapest', 3);
INSERT INTO oc_lettings_site_profile (id, favorite_city, user_id) VALUES (4, 'Berlin', 2);

-- Table : profiles_profilenew
CREATE TABLE "profiles_profilenew" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "favorite_city" varchar(64) NOT NULL, "user_id" integer NOT NULL UNIQUE REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO profiles_profilenew (id, favorite_city, user_id) VALUES (1, 'Buenos Aires', 5);
INSERT INTO profiles_profilenew (id, favorite_city, user_id) VALUES (2, 'Barcelona', 4);
INSERT INTO profiles_profilenew (id, favorite_city, user_id) VALUES (3, 'Budapest', 3);
INSERT INTO profiles_profilenew (id, favorite_city, user_id) VALUES (4, 'Berlin', 2);

-- Index : auth_group_permissions_group_id_b120cbf9
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" ("group_id");

-- Index : auth_group_permissions_group_id_permission_id_0cd325b0_uniq
CREATE UNIQUE INDEX "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");

-- Index : auth_group_permissions_permission_id_84c5c92e
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" ("permission_id");

-- Index : auth_permission_content_type_id_2f476e4b
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "auth_permission" ("content_type_id");

-- Index : auth_permission_content_type_id_codename_01ab375a_uniq
CREATE UNIQUE INDEX "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");

-- Index : auth_user_groups_group_id_97559544
CREATE INDEX "auth_user_groups_group_id_97559544" ON "auth_user_groups" ("group_id");

-- Index : auth_user_groups_user_id_6a12ed8b
CREATE INDEX "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" ("user_id");

-- Index : auth_user_groups_user_id_group_id_94350c0c_uniq
CREATE UNIQUE INDEX "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" ("user_id", "group_id");

-- Index : auth_user_user_permissions_permission_id_1fbb5f2c
CREATE INDEX "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" ("permission_id");

-- Index : auth_user_user_permissions_user_id_a95ead1b
CREATE INDEX "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" ("user_id");

-- Index : auth_user_user_permissions_user_id_permission_id_14a6b632_uniq
CREATE UNIQUE INDEX "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" ("user_id", "permission_id");

-- Index : django_admin_log_content_type_id_c4bce8eb
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" ("content_type_id");

-- Index : django_admin_log_user_id_c564eba6
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "django_admin_log" ("user_id");

-- Index : django_content_type_app_label_model_76bd3d3b_uniq
CREATE UNIQUE INDEX "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");

-- Index : django_session_expire_date_a5c62663
CREATE INDEX "django_session_expire_date_a5c62663" ON "django_session" ("expire_date");

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
