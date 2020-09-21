ALTER TABLE "public"."users" ADD COLUMN "bio" text;
ALTER TABLE "public"."users" ALTER COLUMN "bio" DROP NOT NULL;
