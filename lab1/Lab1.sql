--
-- PostgreSQL database cluster dump
--

-- Started on 2024-03-14 11:15:25

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:y+60W4Gzw7EL20GxqvaCng==$XOqUdLkoXY7q/dL+nMB97DARkdPFLBNP+21fSE4trCA=:WQCsoZj25pOmUiM63pAcVHeJY2tfTa4SnGB6Mfgv+I8=';

--
-- User Configurations
--








--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

-- Started on 2024-03-14 11:15:25

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

-- Completed on 2024-03-14 11:15:26

--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

-- Started on 2024-03-14 11:15:26

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
-- TOC entry 2 (class 3079 OID 16384)
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- TOC entry 4785 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 16461)
-- Name: books; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.books (
    number bigint NOT NULL,
    code bigint NOT NULL,
    novelty boolean,
    title character varying(128) NOT NULL,
    price money,
    publisher character varying(32) NOT NULL,
    pages bigint,
    format character varying(12),
    date date,
    curculation bigint NOT NULL,
    theme character varying(64) NOT NULL,
    category character varying(32)
);


ALTER TABLE public.books OWNER TO postgres;

--
-- TOC entry 4779 (class 0 OID 16461)
-- Dependencies: 216
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.books (number, code, novelty, title, price, publisher, pages, format, date, curculation, theme, category) FROM stdin;
2	5110	f	Aпаратні засоби мультимедіа. Відеосистема РС	15,51 ?	Видавнича група BHV	400	70х100/16	2000-07-24	5000	Використання ПК в цілому	Підручники
8	4985	f	Засвой самостійно модернізацію та ремонт ПК за 24 години, 2-ге вид.	18,90 ?	Вiльямс	288	70х100/16	2000-07-07	5000	Використання ПК в цілому	Підручники
9	5141	f	Структури даних та алгоритми	37,80 ?	Вільямс	384	70х100/16	2000-09-29	5000	Використання ПК в цілому	Підручники
20	5127	f	Автоматизація інженерно-графічних робіт	11,58 ?	Видавнича група BHV 	256	70х100/16	2000-06-15	5000	Використання ПК в цілому	Підручники
31	5113	f	Апаратні засоби мультимедіа. Відеосистема РС	15,51 ?	Видавнича група BHV	400	70х100/16	2000-07-24	5000	Використання ПК в цілому	Апаратні засоби ПК
46	5199	f	Залізо IBM 2001 	30,07 ?	МикроАрт	368	70х100/16	2000-02-12	5000	Використання ПК в цілому	Апаратні засоби ПК
50	3851	f	Захист інформації та безпека компютерних систем	26,00 ?	DiaSoft	480	84х108/16	1900-01-01	5000	Використання ПК в цілому	Захист і безпека ПК
58	3932	f	Як перетворити персональний компютер на вимірювальний комплексс	7,65 ?	ДМК	144	60х88/16	2000-06-09	5000	Використання ПК в цілому	Інші книги
59	4713	f	Plug-ins. Додаткові програми для музичних програм	11,41 ?	ДМК	144	70х100/16	2000-02-22	5000	Використання ПК в цілому	Інші книги
175	5217	f	Windows МЕ. Найновіші версії програм	16,57 ?	Триумф	320	70х100/16	2000-08-25	5000	Операційні системи	Windows 2000
176	4829	f	Windows 2000 Professional крок за кроком з CD	27,25 ?	Эком	320	70х100/16	2000-04-28	5000	Операційні системи	Windows 2000
188	5170	f	Linux версії	24,43 ?	ДМК	346	70х100/16	2000-09-29	5000	Операційні системи	Linux
191	860	f	Операційна система UNIX	3,50 ?	Видавнича група BHV	395	84х10016	1997-05-05	5000	Операційні системи	Unix
203	44	f	Відповіді на актуальні запитання щодо OS/2 Warp	5,00 ?	DiaSoft	352	60х84/16	1996-03-20	5000	Операційні системи	Інші операційні системи
206	5176	f	Windows Ме. Супутник користувача	12,79 ?	Видавнича група BHV	306		2000-10-10	5000	Операційні системи	Інші операційні системи
209	5462	f	Мова програмування С++. Лекції та вправи 	29,00 ?	DiaSoft	656	84х108/16	2000-12-12	5000	Програмування	C&C++
210	4982	f	Мова програмування С. Лекції та вправи	29,00 ?	DiaSoft	432	84х108/16	2000-12-07	5000	Програмування	C&C++
220	4687	f	Ефективне використання C++ .50 рекомендацій щодо покращення ваших програм та проектів 	17,60 ?	ДМК	240	70х100/16	2000-03-02	5000	Програмування	C&C++
222	235	f	Інформаційні системи і структури даних	\N	Києво-Могилянська академія	288	60х90/16	\N	400	Використання ПК в цілому	Інші книги
225	8746	t	Бази даних в інформаційних системах	\N	Університет "Україна"	418	60х84/16	2018-07-25	100	Програмування	SQL
226	2154	t	Сервер на основі операційної системи FreeBSD 6.1	0,00 ?	Університет "Україна"	216	60х84/16	2015-11-03	500	Програмування 	Інші операційні системи
245	2662	f	Організація баз даних та знань	0,00 ?	Вінниця: ВДТУ	208	60х90/16	2001-10-10	1000	Програмування	 SQL
247	5641	t	Організація баз даних та знань	0,00 ?	Видавнича група BHV	384	70х100/16	2021-12-15	5000	Програмування 	SQL
\.


--
-- TOC entry 4635 (class 2606 OID 16465)
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (code);


-- Completed on 2024-03-14 11:15:26

--
-- PostgreSQL database dump complete
--

-- Completed on 2024-03-14 11:15:26

--
-- PostgreSQL database cluster dump complete
--

