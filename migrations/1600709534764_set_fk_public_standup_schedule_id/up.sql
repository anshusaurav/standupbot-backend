alter table "public"."standup"
           add constraint "standup_schedule_id_fkey"
           foreign key ("schedule_id")
           references "public"."standup_schedule"
           ("id") on update restrict on delete restrict;
