alter table "public"."standup_participant"
           add constraint "standup_participant_standup_id_fkey"
           foreign key ("standup_id")
           references "public"."standup"
           ("id") on update restrict on delete restrict;
