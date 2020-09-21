alter table "public"."standup_question"
           add constraint "standup_question_standup_id_fkey"
           foreign key ("standup_id")
           references "public"."standup"
           ("id") on update restrict on delete restrict;
