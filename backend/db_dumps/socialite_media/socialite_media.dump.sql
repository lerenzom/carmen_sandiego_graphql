--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0 (Debian 16.0-1.pgdg120+1)
-- Dumped by pg_dump version 16.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: socialite_media; Type: DATABASE; Schema: -; Owner: user
--

CREATE DATABASE socialite_media WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE socialite_media OWNER TO "user";

\connect socialite_media

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: posts; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.posts (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    account_name character varying(256) NOT NULL,
    post text NOT NULL,
    date timestamp without time zone NOT NULL
);


ALTER TABLE public.posts OWNER TO "user";

--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: user
--

INSERT INTO public.posts VALUES ('9c57abdd-9ebf-44fd-927b-4c377dfea3e2', 'Luxe_Lila', 'Just received a glittering golden invite for the #MidnightMasquerade at an undisclosed location! Who else is going? 💃🎭', '2023-10-05 10:10:00');
INSERT INTO public.posts VALUES ('87c997ea-d72f-44f7-b77c-e63d253ddad7', 'RichieRavish', 'Rumor has it, the #MidnightMasquerade isn''t just any ball. It''s THE place to buy and sell... interesting artifacts. 🤫', '2023-10-05 12:34:56');
INSERT INTO public.posts VALUES ('c3144031-c544-4973-8125-fbe35cb1bfc6', 'Glam_Gabrielle', 'My dress for the #MidnightMasquerade is out of this world! Can’t wait to dance the night away and maybe make a special purchase... 😉', '2023-10-06 14:03:12');
INSERT INTO public.posts VALUES ('30268516-d174-45e3-bfee-23bfeb030bf5', 'SirCharlesChampagne', 'Heard from a very trusted source that the #MidnightMasquerade is going to be the event of the year! They''re even saying it might rival the Met Gala!', '2023-10-06 18:22:45');
INSERT INTO public.posts VALUES ('b69d04a6-66e9-4f4b-b9de-d8b0d58b43f8', 'ArtArdent', 'I''ve been hearing whispers about exclusive pieces on sale at the #MidnightMasquerade. Excited to see some long-lost treasures.', '2023-10-07 09:30:00');
INSERT INTO public.posts VALUES ('26eaf538-e418-41b5-8823-0d668159d4d9', 'FancyFelix', 'Trying to decode this invite for the #MidnightMasquerade. Why so secretive? What''s really going on?', '2023-10-07 11:15:00');
INSERT INTO public.posts VALUES ('953095d7-7a5e-467d-88fb-127fc1514d30', 'Duchess_Diaries', 'The best part of the #MidnightMasquerade? The anonymous bids for unique art pieces. It''s all very cloak and dagger.', '2023-10-07 15:43:20');
INSERT INTO public.posts VALUES ('e6b7f5ec-80ba-4281-87d5-3338b7f2714f', 'Regal_Ruby', 'Hoping to meet some fellow art enthusiasts at the #MidnightMasquerade. Word on the street is that a very "illusive" lady might be attending!', '2023-10-07 20:05:25');
INSERT INTO public.posts VALUES ('13525fbc-9b88-4176-879b-fcfefe9097f2', 'MisterMystery', 'Why all the fuss about the #MidnightMasquerade? Isn''t it just a fancy dress party? Or is there something they''re not telling us...', '2023-10-08 08:15:00');
INSERT INTO public.posts VALUES ('88d1f30e-bf51-413f-9113-19b014cb51ea', 'EliteElla', 'I’ve heard there’s a list of very exclusive items for the #MidnightMasquerade''s silent auction. Can''t wait to get my hands on some priceless art!', '2023-10-08 10:50:15');
INSERT INTO public.posts VALUES ('595a7c99-54f2-4aa9-8095-8cc91014fefe', 'Travel_Tyler', 'Another sunset in the Maldives! 🌅 #VacationGoals', '2023-10-05 10:15:00');
INSERT INTO public.posts VALUES ('785168a0-4646-43e4-802e-2b86a803be9f', 'BakerBella', 'Just made some delicious macarons! #BakingLife', '2023-10-06 11:00:12');
INSERT INTO public.posts VALUES ('39733a7b-cc68-4d49-91a7-b76f5585205c', 'Fashion_Frank', 'New blog post up about fall fashion trends! 🍁🍂 #StayStylish', '2023-10-07 14:23:30');
INSERT INTO public.posts VALUES ('893d373c-ae32-4d21-9fb2-6b5f5d4d404d', 'Workout_Wendy', 'Killer workout today! 💪 #GymLife', '2023-10-08 09:00:00');


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

