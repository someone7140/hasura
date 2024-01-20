
alter table "public"."problem_answers" rename column "answer_date_time" to "answer_date";
ALTER TABLE "public"."problem_answers" ALTER COLUMN "answer_date" TYPE date;

ALTER TABLE "public"."problem_questions" ALTER COLUMN "create_date_time" TYPE timestamp without time zone;

alter table "public"."problem_themes" rename column "create_date_time" to "create_date";
ALTER TABLE "public"."problem_themes" ALTER COLUMN "create_date" TYPE date;

alter table "public"."problem_questions" rename column "create_date_time" to "create_date";
ALTER TABLE "public"."problem_questions" ALTER COLUMN "create_date" TYPE date;


DROP INDEX IF EXISTS "public"."question_id_index_answer";

DROP INDEX IF EXISTS "public"."theme_id_index_answer";

DROP INDEX IF EXISTS "public"."account_user_id_index_answer";

DROP TABLE "public"."problem_answers";

comment on column "public"."problem_questions"."create_date" is E'createDate';

-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- alter table "public"."problem_themes" add column "create_date" date
--  not null default now();

comment on column "public"."problem_questions"."create_date" is NULL;

-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- alter table "public"."problem_questions" add column "create_date" date
--  not null default now();
