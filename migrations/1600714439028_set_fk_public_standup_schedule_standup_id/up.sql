alter table "public"."standup_schedule"
           add constraint "standup_schedule_standup_id_fkey"
           foreign key ("standup_id")
           references "public"."standup"
           ("id") on update restrict on delete restrict;
