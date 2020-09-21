alter table "public"."standup_response"
           add constraint "standup_response_standup_id_fkey"
           foreign key ("standup_id")
           references "public"."standup"
           ("id") on update restrict on delete restrict;
