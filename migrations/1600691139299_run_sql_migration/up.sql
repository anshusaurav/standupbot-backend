CREATE TABLE public.users
(
    id uuid NOT NULL,
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

    CREATE TABLE public.standup
    (
        id uuid NOT NULL,
        name text NOT NULL,
        intro_text text,
        isActive boolean DEFAULT true NOT NULL,
        schedule_id uuid NOT NULL,
        created_at timestamp
        with time zone DEFAULT now
        () NOT NULL,
    updated_at timestamp
        with time zone DEFAULT now
        () NOT NULL,
    created_by uuid NOT NULL
);
        CREATE TABLE public.standup_participant
        (
            standup_id uuid NOT NULL,
            participant_id uuid NOT NULL,
            created_at timestamp
            with time zone DEFAULT now
            () NOT NULL,
    updated_at timestamp
            with time zone DEFAULT now
            () NOT NULL
);

            CREATE TABLE public.standup_question
            (
                id uuid NOT NULL,
                standup_id uuid NOT NULL,
                body text NOT NULL,
                created_by uuid NOT NULL,
                created_at timestamp
                with time zone DEFAULT now
                () NOT NULL,
    updated_at timestamp
                with time zone DEFAULT now
                () NOT NULL
);

                CREATE TABLE public.standup_schedule
                (
                    id uuid NOT NULL,
                    standup_id uuid NOT NULL,
                    num_week integer DEFAULT 1 NOT NULL
                    active_days integer array NOT NULL
    assigned_time timestamp without time zone NOT NULL
    local_timezone boolean DEFAULT true NOT NULL
    created_at timestamp
                    with time zone DEFAULT now
                    () NOT NULL,
    updated_at timestamp
                    with time zone DEFAULT now
                    () NOT NULL
);

                    CREATE TABLE public.standup_channel
                    (
                        id uuid NOT NULL,
                        standup_id uuid NOT NULL,
                        name text NOT NULL,
                        created_at timestamp
                        with time zone DEFAULT now
                        () NOT NULL,
    updated_at timestamp
                        with time zone DEFAULT now
                        () NOT NULL
);


                        ALTER TABLE ONLY public.users
                        ADD CONSTRAINT users_pkey PRIMARY KEY
                        (id);
                        ALTER TABLE ONLY public.standup_participant
                        ADD CONSTRAINT standup_participant_pkey PRIMARY KEY
                        (standup_id, participant_id);

