--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    username character varying(25) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('user_1723697078774', 2, 191);
INSERT INTO public.users VALUES ('user_1723697078775', 5, 63);
INSERT INTO public.users VALUES ('user_1723697139127', 2, 456);
INSERT INTO public.users VALUES ('user_1723697139128', 5, 422);
INSERT INTO public.users VALUES ('user_1723697210875', 2, 108);
INSERT INTO public.users VALUES ('user_1723697210876', 5, 163);
INSERT INTO public.users VALUES ('user_1723697374742', 2, 127);
INSERT INTO public.users VALUES ('user_1723697374743', 5, 511);
INSERT INTO public.users VALUES ('user_1723697402424', 2, 389);
INSERT INTO public.users VALUES ('user_1723697642843', 5, 133);
INSERT INTO public.users VALUES ('user_1723697448482', 2, 60);
INSERT INTO public.users VALUES ('user_1723697402425', 5, 379);
INSERT INTO public.users VALUES ('user_1723697573311', 2, 32);
INSERT INTO public.users VALUES ('user_1723697448483', 5, 59);
INSERT INTO public.users VALUES ('user_1723697593945', 2, 497);
INSERT INTO public.users VALUES ('user_1723697434050', 2, 443);
INSERT INTO public.users VALUES ('user_1723697573312', 5, 106);
INSERT INTO public.users VALUES ('user_1723697434051', 5, 183);
INSERT INTO public.users VALUES ('user_1723697452074', 2, 284);
INSERT INTO public.users VALUES ('user_1723697593946', 5, 153);
INSERT INTO public.users VALUES ('user_1723697452075', 5, 104);
INSERT INTO public.users VALUES ('aa', 0, NULL);
INSERT INTO public.users VALUES ('user_1723697575166', 2, 822);
INSERT INTO public.users VALUES ('user_1723697653549', 2, 122);
INSERT INTO public.users VALUES ('user_1723697501685', 2, 663);
INSERT INTO public.users VALUES ('user_1723697575167', 5, 40);
INSERT INTO public.users VALUES ('user_1723697501686', 5, 93);
INSERT INTO public.users VALUES ('user_1723697653550', 5, 13);
INSERT INTO public.users VALUES ('user_1723697598039', 2, 587);
INSERT INTO public.users VALUES ('user_1723697561219', 2, 108);
INSERT INTO public.users VALUES ('user_1723697577385', 2, 237);
INSERT INTO public.users VALUES ('user_1723697561220', 5, 57);
INSERT INTO public.users VALUES ('user_1723697577386', 5, 80);
INSERT INTO public.users VALUES ('user_1723697598040', 5, 139);
INSERT INTO public.users VALUES ('user_1723697563455', 2, 35);
INSERT INTO public.users VALUES ('user_1723697563456', 5, 44);
INSERT INTO public.users VALUES ('user_1723697655943', 2, 467);
INSERT INTO public.users VALUES ('user_1723697579570', 2, 75);
INSERT INTO public.users VALUES ('user_1723697565527', 2, 124);
INSERT INTO public.users VALUES ('user_1723697579571', 5, 126);
INSERT INTO public.users VALUES ('user_1723697565528', 5, 438);
INSERT INTO public.users VALUES ('user_1723697655944', 5, 282);
INSERT INTO public.users VALUES ('user_1723697610094', 2, 626);
INSERT INTO public.users VALUES ('user_1723697567507', 2, 199);
INSERT INTO public.users VALUES ('user_1723697581552', 2, 211);
INSERT INTO public.users VALUES ('user_1723697567508', 5, 401);
INSERT INTO public.users VALUES ('user_1723697610095', 5, 183);
INSERT INTO public.users VALUES ('user_1723697581553', 5, 188);
INSERT INTO public.users VALUES ('user_1723697569546', 2, 638);
INSERT INTO public.users VALUES ('user_1723697670312', 2, 104);
INSERT INTO public.users VALUES ('user_1723697569547', 5, 60);
INSERT INTO public.users VALUES ('user_1723697630980', 2, 349);
INSERT INTO public.users VALUES ('user_1723697583599', 2, 528);
INSERT INTO public.users VALUES ('user_1723697670313', 5, 49);
INSERT INTO public.users VALUES ('user_1723697571409', 2, 115);
INSERT INTO public.users VALUES ('', 0, NULL);
INSERT INTO public.users VALUES ('user_1723697630981', 5, 4);
INSERT INTO public.users VALUES ('user_1723697571410', 5, 43);
INSERT INTO public.users VALUES ('user_1723697583600', 5, 79);
INSERT INTO public.users VALUES ('user_1723697589227', 2, 642);
INSERT INTO public.users VALUES ('user_1723697633585', 2, 368);
INSERT INTO public.users VALUES ('user_1723697589228', 5, 133);
INSERT INTO public.users VALUES ('user_1723697633586', 5, 184);
INSERT INTO public.users VALUES ('user_1723697642842', 2, 551);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (username);


--
-- PostgreSQL database dump complete
--

