CREATE TABLE "public"."standup_participant"("standup_id" uuid NOT NULL, "participant_id" uuid NOT NULL, "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), PRIMARY KEY ("standup_id","participant_id") );
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
CREATE TRIGGER "set_public_standup_participant_updated_at"
BEFORE UPDATE ON "public"."standup_participant"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_standup_participant_updated_at" ON "public"."standup_participant" 
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
