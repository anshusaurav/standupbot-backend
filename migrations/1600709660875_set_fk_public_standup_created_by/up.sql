alter table "public"."standup"
           add constraint "standup_created_by_fkey"
           foreign key ("created_by")
           references "public"."users"
           ("id") on update restrict on delete restrict;
