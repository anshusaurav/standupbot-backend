alter table "public"."standup_channel"
           add constraint "standup_channel_standup_id_fkey"
           foreign key ("standup_id")
           references "public"."standup"
           ("id") on update restrict on delete restrict;
