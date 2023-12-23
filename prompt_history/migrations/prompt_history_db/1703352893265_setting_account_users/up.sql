
alter table "public"."account_users" add column "gmail" varchar
 null;

alter table "public"."account_users" add column "email" varchar
 null;

alter table "public"."account_users" add column "password" varchar
 null;

alter table "public"."account_users" add constraint "account_users_gmail_key" unique ("gmail");

alter table "public"."account_users" add constraint "account_users_email_key" unique ("email");
