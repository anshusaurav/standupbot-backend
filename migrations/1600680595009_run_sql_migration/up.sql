CREATE TABLE public.users
(
    id uuid DEFAULT public.gen_random_uuid() NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    display_name text,
    bio text,
    phone_number text,
    timezone text,
    created_at timestamp
    with time zone DEFAULT now
    () NOT NULL,
    updated_at timestamp
    with time zone DEFAULT now
    () NOT NULL,
    last_seen timestamp
    with time zone,
    password text NOT NULL
);

    CREATE VIEW public.online_users
    AS
        SELECT users.id,
            users.last_seen
        FROM public.users
        WHERE (users.last_seen >= (now() - '00:00:30'
    ::interval));
    ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY
    (id);
