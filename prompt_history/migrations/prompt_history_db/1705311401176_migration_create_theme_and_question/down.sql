
DROP INDEX IF EXISTS "public"."theme_id_index_question";

DROP INDEX IF EXISTS "public"."account_user_id_index_question";

DROP INDEX IF EXISTS "public"."account_user_id_index_theme";

DROP INDEX IF EXISTS "public"."account_user_id_index";


ALTER TABLE "public"."problem_themes" ALTER COLUMN "id" drop default;

ALTER TABLE "public"."problem_questions" ALTER COLUMN "id" drop default;


DROP TABLE "public"."problem_questions";

DROP TABLE "public"."problem_themes";
