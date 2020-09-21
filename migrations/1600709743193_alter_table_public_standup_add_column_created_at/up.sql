ALTER TABLE "public"."standup" ADD COLUMN "created_at" timestamptz NULL DEFAULT now();
