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
-- Name: moma; Type: DATABASE; Schema: -; Owner: user
--

CREATE DATABASE moma WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE moma OWNER TO "user";

\connect moma

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
-- Name: artwork; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.artwork (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name character varying(256) NOT NULL,
    artist character varying(256),
    creation_date character varying(256),
    history text,
    last_presented date,
    origin character varying(256)
);


ALTER TABLE public.artwork OWNER TO "user";

--
-- Data for Name: artwork; Type: TABLE DATA; Schema: public; Owner: user
--

INSERT INTO public.artwork VALUES ('d52f5f93-4ac2-4d26-a8ba-6753f769e0dd', 'The Starry Night - Alternate Reality', 'Vincent van Gogh', '1889', 'Believed to be one of van Gogh''s alternate interpretations of the night sky over Saint-Rémy-de-Provence. It highlights a different cosmic structure, one that theorists argue might represent an alternate universe.', '2023-04-15', 'Post-Impressionist Europe');
INSERT INTO public.artwork VALUES ('97243729-e428-4402-82f4-9add7ca38bb1', 'Ancient Map of Labyrinthine Isles', 'Unknown', '500 BCE', 'This map is said to depict the secret passages between the islands of the Aegean Sea, including a direct route to the mythical Atlantis. Recent research suggests that it might also contain coded information about lost treasures.', '2023-01-23', 'Ancient Greece');
INSERT INTO public.artwork VALUES ('ff595a05-289e-46a8-ab1d-b1cb4443f900', 'Monolith''s Whispers', 'Jackson Pollock', '1951', 'One of Pollock''s lesser-known works, it''s rumored that this painting whispers secrets of the cosmos to anyone who listens closely in the dark. It represents the chaos of the universe and the artist''s own tumultuous psyche.', '2023-03-18', 'Abstract Expressionism');
INSERT INTO public.artwork VALUES ('dcaeb8b8-a40c-412d-a0f4-0345c1159402', 'Chalice of Eternal Echoes', 'Unknown', '1200 AD', 'A jewel-encrusted goblet believed to have been a prized possession of an obscure medieval sorcerer. Legends say that drinking from it allows one to hear echoes of the past, revealing truths that were once lost.', '2023-02-05', 'Medieval Europe');


--
-- Name: artwork collections_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.artwork
    ADD CONSTRAINT collections_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

