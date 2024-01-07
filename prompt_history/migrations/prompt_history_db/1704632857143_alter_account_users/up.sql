
alter table "public"."account_users" add column "user_setting_id" varchar
 not null;

alter table "public"."account_users" add column "image_url" varchar
 null;

alter table "public"."account_users" add constraint "account_users_user_setting_id_key" unique ("user_setting_id");
