
alter table "public"."account_users" drop constraint "account_users_email_key";

alter table "public"."account_users" drop constraint "account_users_gmail_key";

-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- alter table "public"."account_users" add column "password" varchar
--  null;

-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- alter table "public"."account_users" add column "email" varchar
--  null;

-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- alter table "public"."account_users" add column "gmail" varchar
--  null;
