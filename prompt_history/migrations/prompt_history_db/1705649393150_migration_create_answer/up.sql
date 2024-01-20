

alter table "public"."problem_questions" add column "create_date" date
 not null default now();

comment on column "public"."problem_questions"."create_date" is E'createDate';

alter table "public"."problem_themes" add column "create_date" date
 not null default now();

comment on column "public"."problem_questions"."create_date" is NULL;

CREATE TABLE "public"."problem_answers" ("id" varchar NOT NULL, "account_user_id" varchar NOT NULL, "theme_id" varchar NOT NULL, "question_id" varchar NOT NULL, "contents" varchar NOT NULL, "ai_service" varchar, "answer_date" date, PRIMARY KEY ("id") , FOREIGN KEY ("account_user_id") REFERENCES "public"."account_users"("id") ON UPDATE cascade ON DELETE cascade, FOREIGN KEY ("theme_id") REFERENCES "public"."problem_themes"("id") ON UPDATE cascade ON DELETE cascade, FOREIGN KEY ("question_id") REFERENCES "public"."problem_questions"("id") ON UPDATE cascade ON DELETE cascade);

CREATE  INDEX "account_user_id_index_answer" on
  "public"."problem_answers" using btree ("account_user_id");

CREATE  INDEX "theme_id_index_answer" on
  "public"."problem_answers" using btree ("theme_id");

CREATE  INDEX "question_id_index_answer" on
  "public"."problem_answers" using btree ("question_id");

ALTER TABLE "public"."problem_questions" ALTER COLUMN "create_date" TYPE timestamp;
alter table "public"."problem_questions" rename column "create_date" to "create_date_time";

ALTER TABLE "public"."problem_themes" ALTER COLUMN "create_date" TYPE timestamptz;
alter table "public"."problem_themes" rename column "create_date" to "create_date_time";

ALTER TABLE "public"."problem_questions" ALTER COLUMN "create_date_time" TYPE timestamptz;

ALTER TABLE "public"."problem_answers" ALTER COLUMN "answer_date" TYPE timestamptz;
alter table "public"."problem_answers" rename column "answer_date" to "answer_date_time";
