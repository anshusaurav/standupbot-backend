DROP TRIGGER IF EXISTS "set_public_standup_updated_at" ON "public"."standup";
ALTER TABLE "public"."standup" DROP COLUMN "updated_at";
