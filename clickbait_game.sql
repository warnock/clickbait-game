--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.3
-- Dumped by pg_dump version 9.5.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: games; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE games (
    id integer NOT NULL,
    player_name character varying,
    score integer
);


ALTER TABLE games OWNER TO "Guest";

--
-- Name: games_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE games_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE games_id_seq OWNER TO "Guest";

--
-- Name: games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE games_id_seq OWNED BY games.id;


--
-- Name: levels; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE levels (
    id integer NOT NULL,
    name character varying,
    instruction character varying,
    millis integer
);


ALTER TABLE levels OWNER TO "Guest";

--
-- Name: levels_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE levels_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE levels_id_seq OWNER TO "Guest";

--
-- Name: levels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE levels_id_seq OWNED BY levels.id;


--
-- Name: players; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE players (
    id integer NOT NULL,
    name character varying
);


ALTER TABLE players OWNER TO "Guest";

--
-- Name: players_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE players_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE players_id_seq OWNER TO "Guest";

--
-- Name: players_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE players_id_seq OWNED BY players.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY games ALTER COLUMN id SET DEFAULT nextval('games_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY levels ALTER COLUMN id SET DEFAULT nextval('levels_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY players ALTER COLUMN id SET DEFAULT nextval('players_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY games (id, player_name, score) FROM stdin;
4	Gloria	100000
7	Ryan	100000
8	Stormi	100000
6	Riley	100000
5	Megan	100000
\.


--
-- Name: games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('games_id_seq', 10, true);


--
-- Data for Name: levels; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY levels (id, name, instruction, millis) FROM stdin;
1	Swordfish	Find the swordfish.	20000
2	Elephant	Find the elephant.	20000
3	Buffalo	Find the buffalo.	20000
4	Rice	Find the rice.	20000
5	Button	Find the button.	20000
6	Pennies	Find the upside down penny.	35000
8	Music Festival	Find the fox.	25000
7	Geography	Find Syria.	20000
9	Star Wars	Find Jaba.	35000
10	Constellations	Find Cassiopeia.	35000
11	Beetle	Find the Beetle.	20000
14	Sniper	Find the sniper.	25000
15	Bow Tie	Find the bow tie.	35000
13	Where's the Beef?	Find the hamburger.	25000
12	Where's Waldo?	Find the beatnik in the red and white shirt.	35000
\.


--
-- Name: levels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('levels_id_seq', 15, true);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY players (id, name) FROM stdin;
\.


--
-- Name: players_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('players_id_seq', 1, false);


--
-- Name: games_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY games
    ADD CONSTRAINT games_pkey PRIMARY KEY (id);


--
-- Name: levels_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY levels
    ADD CONSTRAINT levels_pkey PRIMARY KEY (id);


--
-- Name: players_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY players
    ADD CONSTRAINT players_pkey PRIMARY KEY (id);


--
-- Name: public; Type: ACL; Schema: -; Owner: epicodus
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM epicodus;
GRANT ALL ON SCHEMA public TO epicodus;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

