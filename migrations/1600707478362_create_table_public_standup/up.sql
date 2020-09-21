CREATE EXTENSION IF NOT EXISTS pgcrypto;
CREATE TABLE "public"."standup"("id" uuid NOT NULL DEFAULT gen_random_uuid(), "name" text NOT NULL, "intro_text" text, "isActive" boolean NOT NULL DEFAULT true, "schedule_id" uuid NOT NULL, "created_by" uuid NOT NULL, PRIMARY KEY ("id") );
