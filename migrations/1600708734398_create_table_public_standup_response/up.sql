CREATE EXTENSION IF NOT EXISTS pgcrypto;
CREATE TABLE "public"."standup_response"("id" uuid NOT NULL DEFAULT gen_random_uuid(), "standup_id" uuid NOT NULL, "question_id" uuid NOT NULL, "cronjob_id" uuid NOT NULL, "respondent_id" UUID NOT NULL, "body" text NOT NULL, "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), PRIMARY KEY ("id") );
CREATE OR REPLACE FUNCTION "public"."set_current_timestamp_updated_at"()
RETURNS TRIGGER AS $$
DECLARE
  _new record;
BEGIN
  _new := NEW;
  _new."updated_at" = NOW();
  RETURN _new;
END;
$$ LANGUAGE plpgsql;
CREATE TRIGGER "set_public_standup_response_updated_at"
BEFORE UPDATE ON "public"."standup_response"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_standup_response_updated_at" ON "public"."standup_response" 
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
