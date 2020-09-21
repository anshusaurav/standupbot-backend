alter table "public"."standup_question"
           add constraint "standup_question_author_id_fkey"
           foreign key ("author_id")
           references "public"."users"
           ("id") on update restrict on delete restrict;
