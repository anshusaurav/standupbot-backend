alter table "public"."standup_response"
           add constraint "standup_response_question_id_fkey"
           foreign key ("question_id")
           references "public"."standup_question"
           ("id") on update restrict on delete restrict;
