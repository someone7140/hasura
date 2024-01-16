


CREATE TABLE "public"."problem_themes" ("id" varchar NOT NULL, "account_user_id" varchar NOT NULL, "title" varchar NOT NULL, "description" varchar, PRIMARY KEY ("id") , FOREIGN KEY ("account_user_id") REFERENCES "public"."account_users"("id") ON UPDATE cascade ON DELETE cascade);

CREATE TABLE "public"."problem_questions" ("id" varchar NOT NULL, "account_user_id" varchar NOT NULL, "theme_id" varchar NOT NULL, "contents" varchar NOT NULL, PRIMARY KEY ("id") , FOREIGN KEY ("account_user_id") REFERENCES "public"."account_users"("id") ON UPDATE cascade ON DELETE cascade, FOREIGN KEY ("theme_id") REFERENCES "public"."problem_themes"("id") ON UPDATE cascade ON DELETE cascade);

alter table "public"."problem_questions" alter column "id" set default uuid_generate_v4();

alter table "public"."problem_themes" alter column "id" set default uuid_generate_v4();

CREATE  INDEX "account_user_id_index_theme" on
  "public"."problem_themes" using btree ("account_user_id");

CREATE  INDEX "account_user_id_index_question" on
  "public"."problem_questions" using btree ("account_user_id");

CREATE  INDEX "theme_id_index_question" on
  "public"."problem_questions" using btree ("theme_id");
