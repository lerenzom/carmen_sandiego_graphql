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
-- Name: bofa_london; Type: DATABASE; Schema: -; Owner: user
--

CREATE DATABASE bofa_london WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE bofa_london OWNER TO "user";

\connect bofa_london

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
-- Name: transactions; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.transactions (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    date timestamp without time zone NOT NULL,
    sender character varying(256) NOT NULL,
    receiver character varying(256) NOT NULL,
    note text,
    amount money
);


ALTER TABLE public.transactions OWNER TO "user";

--
-- Data for Name: transactions; Type: TABLE DATA; Schema: public; Owner: user
--

INSERT INTO public.transactions VALUES ('8c4954cd-8050-481d-8229-8351984b652a', '2023-05-14 10:05:00', 'John Smith', 'Amazon', 'Online Shopping', '$99.99');
INSERT INTO public.transactions VALUES ('81c8b1fa-eb95-4984-a5e0-0a4df59b6db9', '2023-05-14 11:15:00', 'Lucy Brown', 'Tesco', 'Grocery Shopping', '$45.50');
INSERT INTO public.transactions VALUES ('e70d4609-43ae-4989-9086-a59628a1224e', '2023-05-14 15:47:00', 'Michael Turner', 'Local Gym', 'Membership Fee', '$25.00');
INSERT INTO public.transactions VALUES ('d664786e-fefb-4a8a-b145-9246765501b9', '2023-05-14 20:12:00', 'Clara Oswald', 'Netflix', 'Subscription Fee', '$8.99');
INSERT INTO public.transactions VALUES ('73dad06a-47b1-4f0c-ba66-650dd2c70428', '2023-05-14 21:53:00', 'Henry Tudor', 'Spotify', 'Music Subscription', '$4.99');
INSERT INTO public.transactions VALUES ('1c44baed-5dd2-4e48-b4cf-7437087314f7', '2023-05-14 22:05:00', 'Lotta Cash', 'E. Ville', 'For services at the Midnight Masquerade', '$15,000.00');
INSERT INTO public.transactions VALUES ('5b099959-e51f-4712-a2ba-ee777adfdac7', '2023-05-14 22:10:00', 'M.T. Pockets', 'Ruth Less', 'Payment for event planning', '$7,500.00');
INSERT INTO public.transactions VALUES ('ee55606d-ff4f-45a8-a971-0d29b7683ab3', '2023-05-14 22:15:00', 'Iva Bigga Yacht', 'Midnight Masquerade Caterers', 'Food and Drink', '$2,000.00');
INSERT INTO public.transactions VALUES ('355d806c-d026-4b4f-a59e-842838041226', '2023-05-14 22:20:00', 'Ivana Tinkle', 'Masquerade Masks Ltd', 'Masks for the event', '$500.00');
INSERT INTO public.transactions VALUES ('45723bf3-e856-4d5c-b092-2906ed527daa', '2023-05-14 22:30:00', 'Ben Dover', 'Untraceable Transactions Inc.', 'Consultation fee', '$3,000.00');
INSERT INTO public.transactions VALUES ('7f7b937c-45cc-48d4-91e1-393b2a488009', '2023-05-14 23:15:00', 'Samantha Evans', 'Uber', 'Cab Home', '$15.00');
INSERT INTO public.transactions VALUES ('8fa5f844-3f88-474e-a2dd-64e6e560e67f', '2023-05-14 23:47:00', 'Peter Griffin', 'Local Pub', 'Night out with friends', '$60.00');
INSERT INTO public.transactions VALUES ('8ba31731-f89d-423f-829f-ac4abd6de75a', '2023-05-14 23:53:00', 'Nina Patel', 'Amazon', 'Book Purchase', '$12.99');
INSERT INTO public.transactions VALUES ('d7e2aaa1-2ec1-4f73-b66d-163fd070f17d', '2023-05-14 23:59:00', 'George Kingsley', 'Sky TV', 'Monthly subscription', '$30.00');


--
-- Name: transactions transactions_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

