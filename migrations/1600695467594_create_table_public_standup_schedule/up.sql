CREATE EXTENSION IF NOT EXISTS pgcrypto;
CREATE TABLE "public"."standup_schedule"("id" uuid NOT NULL DEFAULT gen_random_uuid(), "standup_id" UUID NOT NULL, "num_week" integer NOT NULL DEFAULT 1, "active_days" text NOT NULL DEFAULT '"1111100"', "assigned_time" time with time zone NOT NULL, "local_timezone" boolean NOT NULL DEFAULT true, PRIMARY KEY ("id") );
