CREATE EXTENSION IF NOT EXISTS pgcrypto;
CREATE TABLE "public"."users"("id" uuid NOT NULL DEFAULT gen_random_uuid(), "name" text NOT NULL, "email" text NOT NULL, "display_name" text, "bio" text, "timezone" text NOT NULL, "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), "password" text NOT NULL, PRIMARY KEY ("id") );
