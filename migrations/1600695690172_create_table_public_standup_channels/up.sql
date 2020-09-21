CREATE EXTENSION IF NOT EXISTS pgcrypto;
CREATE TABLE "public"."standup_channels"("id" uuid NOT NULL DEFAULT gen_random_uuid(), "standup_id" UUID NOT NULL, "name" text NOT NULL, "created_at" Timestamp with time zone NOT NULL DEFAULT now(), "updated_at" Timestamp with time zone NOT NULL DEFAULT now(), PRIMARY KEY ("id") );
