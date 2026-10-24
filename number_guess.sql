--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    username character varying(22) NOT NULL,
    game integer NOT NULL,
    number_of_guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_seq OWNER TO freecodecamp;

--
-- Name: games_game_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_seq OWNED BY public.games.game;


--
-- Name: games game; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game SET DEFAULT nextval('public.games_game_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES ('asdf', 1, 11);
INSERT INTO public.games VALUES ('user_1792877604357', 2, 260);
INSERT INTO public.games VALUES ('user_1792877604357', 3, 222);
INSERT INTO public.games VALUES ('user_1792877604356', 4, 441);
INSERT INTO public.games VALUES ('user_1792877604356', 5, 743);
INSERT INTO public.games VALUES ('user_1792877604357', 6, 301);
INSERT INTO public.games VALUES ('user_1792877604357', 7, 91);
INSERT INTO public.games VALUES ('user_1792877604357', 8, 70);
INSERT INTO public.games VALUES ('asdf', 9, 10);
INSERT INTO public.games VALUES ('asdf', 10, 9);
INSERT INTO public.games VALUES ('asdf', 11, 10);
INSERT INTO public.games VALUES ('user_1792877940103', 12, 410);
INSERT INTO public.games VALUES ('user_1792877940103', 13, 336);
INSERT INTO public.games VALUES ('user_1792877940102', 14, 576);
INSERT INTO public.games VALUES ('user_1792877940102', 15, 10);
INSERT INTO public.games VALUES ('user_1792877940103', 16, 869);
INSERT INTO public.games VALUES ('user_1792877940103', 17, 247);
INSERT INTO public.games VALUES ('user_1792877940103', 18, 680);
INSERT INTO public.games VALUES ('user_1792878080342', 19, 562);
INSERT INTO public.games VALUES ('user_1792878080342', 20, 669);
INSERT INTO public.games VALUES ('user_1792878080341', 21, 266);
INSERT INTO public.games VALUES ('user_1792878080341', 22, 287);
INSERT INTO public.games VALUES ('user_1792878080342', 23, 265);
INSERT INTO public.games VALUES ('user_1792878080342', 24, 845);
INSERT INTO public.games VALUES ('user_1792878080342', 25, 311);


--
-- Name: games_game_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_seq', 25, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game);


--
-- PostgreSQL database dump complete
--

