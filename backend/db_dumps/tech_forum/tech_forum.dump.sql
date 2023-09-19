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
-- Name: tech_forum; Type: DATABASE; Schema: -; Owner: user
--

CREATE DATABASE tech_forum WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE tech_forum OWNER TO "user";

\connect tech_forum

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

INSERT INTO public.posts VALUES ('c4f118e4-ac00-4c79-8fc1-63f20d3104ed', 'python_pete', 'Anyone else struggling with the ML assignment due next week?', '2023-05-01 10:30:00');
INSERT INTO public.posts VALUES ('cc713d52-f8d0-407f-b68c-d686f35e8dfa', 'netsec_nina', 'Looking for group members for the network security project.', '2023-05-02 14:15:00');
INSERT INTO public.posts VALUES ('3e605cd8-2c93-4959-8768-40ce218c1d5c', 'code_cassie', 'Is the Python workshop still happening this Friday?', '2023-05-03 09:05:00');
INSERT INTO public.posts VALUES ('e794d486-bd1d-4a2e-a3ad-375abfdb0771', 'gpu_gary', 'Selling a used graphics card, DM for details.', '2023-05-04 16:47:00');
INSERT INTO public.posts VALUES ('ff23a6f9-d8c8-4aa0-b8a7-e349286a8a3a', 'masked_matt', 'Heard about the Midnight Masquerade? Sounds like a must-attend for any tech enthusiast.', '2023-05-05 13:12:00');
INSERT INTO public.posts VALUES ('5017bc3f-c97d-4619-ba0f-9640d8351b51', 'crypto_chris', 'Stumbled upon some code about untraceable transactions while browsing GitHub. Could be useful for our banking project?', '2023-05-05 15:55:00');
INSERT INTO public.posts VALUES ('3081041c-3dfc-4ffb-b9c0-874dd62491d1', 'event_ellie', 'Been seeing a lot of chatter about some underground tech event during the masquerade ball. Anyone got the inside scoop?', '2023-05-06 12:32:00');
INSERT INTO public.posts VALUES ('19fdca44-7d75-4481-92d5-0630c4d27779', 'cipher_sierra', 'Just attended an interesting lecture on cryptography. Makes you wonder how easy it would be to keep things hidden, right?', '2023-05-07 11:10:00');
INSERT INTO public.posts VALUES ('0e85bb0a-b01a-464a-9dd5-ec03f75ab9ec', 'podcast_paul', 'Any recommendations for good tech podcasts?', '2023-05-07 20:22:00');
INSERT INTO public.posts VALUES ('7d75c1a1-97b9-4a23-a978-e97edcf7e7f7', 'sushi_sam', 'Off-topic, but does anyone know a good place near campus for sushi?', '2023-05-08 18:47:00');
INSERT INTO public.posts VALUES ('d6812e72-a533-4a70-bddf-7ab972c62eb8', 'mystery_max', 'Found a mysterious USB near the main hall. Has some encrypted files. Wonder what''s inside?', '2023-05-09 10:13:00');
INSERT INTO public.posts VALUES ('3cd9f84b-8841-4e00-ade1-2cc9515b1b8a', 'hacker_hank', 'Guys, getting some weird requests to break into a database for an upcoming event. Not cool!', '2023-05-10 15:22:00');


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

