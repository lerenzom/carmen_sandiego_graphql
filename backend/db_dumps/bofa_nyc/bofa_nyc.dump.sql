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
-- Name: bofa_nyc; Type: DATABASE; Schema: -; Owner: user
--

CREATE DATABASE bofa_nyc WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE bofa_nyc OWNER TO "user";

\connect bofa_nyc

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

INSERT INTO public.transactions VALUES ('e7279b08-9625-4d2c-98cc-f8ffd5ad7fd8', '2023-05-05 10:24:45', 'John Doe', 'Jane Smith', 'Night out at the movies', '$50.00');
INSERT INTO public.transactions VALUES ('9c84ce45-2364-4870-a3a0-00ce274cd8a4', '2023-05-06 14:35:30', 'Alice Williams', 'Bob Martin', 'Date night', '$120.00');
INSERT INTO public.transactions VALUES ('56b12688-3662-4341-a12e-2d585feca95c', '2023-05-07 09:45:12', 'Eve Johnson', 'David Brown', 'Loan for house', '$200,000.00');
INSERT INTO public.transactions VALUES ('ad5b2af0-f6e9-44d6-ad08-e80b691aa47d', '2023-05-07 17:55:40', 'Chris Taylor', 'Ella Rodriguez', 'Heating payment', '$150.00');
INSERT INTO public.transactions VALUES ('8d551b92-5e90-46a0-b357-0de8d819a431', '2023-05-08 10:15:00', 'M.T. Pockets', 'Ruth Less', 'Payment for The Starry Night', '$5,000,000.00');
INSERT INTO public.transactions VALUES ('cc991eae-5543-4b64-9886-7aa66bf12158', '2023-05-08 10:20:30', 'M.T. Pockets', 'Ivana Tinkle', 'Fee for secret intel on MOMA security', '$10,000.00');
INSERT INTO public.transactions VALUES ('797103d4-5ff9-4e18-b6d5-0f1f10316ca7', '2023-05-08 14:45:50', 'Carmen SanDiego', 'Ben Dover', 'Advance for underground auction logistics', '$30,000.00');
INSERT INTO public.transactions VALUES ('4c1b2b56-c567-4d44-8404-b53bee11ea4a', '2023-05-09 11:35:40', 'Ruth Less', 'Al Bino', 'Acquisition of secure vault', '$50,000.00');
INSERT INTO public.transactions VALUES ('4b90cc91-9720-4247-8792-c4e109ef8a9b', '2023-05-09 16:15:30', 'Ivana Tinkle', 'Carmen SanDiego', 'Acquisition of art deco disguises', '$12,000.00');
INSERT INTO public.transactions VALUES ('1fb994fa-2997-45eb-801c-849439f45cd7', '2023-05-10 10:55:20', 'Carmen SanDiego', 'M.T. Pockets', 'Reconnaissance fees', '$1,500.00');
INSERT INTO public.transactions VALUES ('2703cdc6-8ecd-4d8e-b2c3-4a9e0363de0f', '2023-05-10 17:45:30', 'Lotta Cash', 'Ben Dover', 'Payment for diversion tactics', '$7,000.00');


--
-- Name: transactions transactions_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

