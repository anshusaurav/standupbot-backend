ALTER TABLE "public"."users" ADD COLUMN "created_at" timestamptz NULL DEFAULT now();
