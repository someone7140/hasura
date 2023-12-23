SET check_function_bodies = false;
CREATE TABLE public.account_users (
    id character varying NOT NULL,
    name character varying NOT NULL
);
ALTER TABLE ONLY public.account_users
    ADD CONSTRAINT account_users_pkey PRIMARY KEY (id);
