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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number_of_stars integer,
    age_million_years integer,
    mass numeric,
    description text,
    is_active boolean,
    has_black_hole boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    orbit_period_days integer,
    diameter_km integer,
    mass numeric,
    composition text,
    is_geologically_active boolean,
    has_atomosphere boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: nissan; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.nissan (
    nissan_id integer NOT NULL,
    name character varying(30) NOT NULL,
    cylinders integer,
    doors integer,
    hp numeric,
    is_active boolean,
    manual_option boolean
);


ALTER TABLE public.nissan OWNER TO freecodecamp;

--
-- Name: nissan_car_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.nissan_car_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nissan_car_id_seq OWNER TO freecodecamp;

--
-- Name: nissan_car_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.nissan_car_id_seq OWNED BY public.nissan.nissan_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    orbit_radius_km bigint,
    surface_gravity bigint,
    mass numeric,
    atomosphere text,
    is_habitable boolean,
    has_moons boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    tempature_k integer,
    radius_km integer,
    luminosity numeric,
    classification text,
    is_main_sequence boolean,
    has_planets boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: nissan nissan_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nissan ALTER COLUMN nissan_id SET DEFAULT nextval('public.nissan_car_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100000, 13000, 1500000000000, 'The galaxy we reside in, a spiral galaxy with billions of stars.', true, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 100000, 10000, 1200000000000, 'The closest large galaxy to the Milky Way, also a spiral galaxy.', true, false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 50000, 12000, 550000000000, 'A smaller spiral galaxy located near the Andromeda galaxy.', true, false);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 80000, 11000, 600000000000, 'A beautiful spiral galaxy, known for its distinct spiral arms.', true, false);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 70000, 13000, 1000000000000, 'A spiral galaxy located in the Virgo Cluster, known for its unique appearance.', true, false);
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 200000, 13000, 2300000000000, 'A massive elliptical galaxy located in the Virgo Cluster, contains a supermassive black hole.', true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 27, 3474, 73500000000000000000000, 'Rocky, Silicate', true, false, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 0, 22, 10800000000000000, 'Rocky, Silicate', false, false, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 1, 12, 1480000000000000, 'Rocky, Silicate', false, false, 2);
INSERT INTO public.moon VALUES (4, 'Io', 2, 3630, 89300000000000000000000, 'Volcanic, Sulfur', true, true, 4);
INSERT INTO public.moon VALUES (5, 'Europa', 4, 3121, 48000000000000000000000, 'Icy, Silicate', false, false, 4);
INSERT INTO public.moon VALUES (6, 'Ganymede', 7, 5262, 148000000000000000000000, 'Icy, Silicate', false, false, 4);
INSERT INTO public.moon VALUES (7, 'Callisto', 17, 4821, 108000000000000000000000, 'Icy, Silicate', false, false, 4);
INSERT INTO public.moon VALUES (8, 'Titan', 16, 5150, 135000000000000000000000, 'Nitrogen, Methane', true, true, 5);
INSERT INTO public.moon VALUES (9, 'Rhea', 5, 1528, 2310000000000000000000, 'Icy, Silicate', false, false, 5);
INSERT INTO public.moon VALUES (10, 'Enceladus', 1, 504, 108000000000000000000, 'Icy, Silicate', true, false, 5);
INSERT INTO public.moon VALUES (11, 'Mimas', 1, 396, 37500000000000000000, 'Icy, Silicate', false, false, 5);
INSERT INTO public.moon VALUES (12, 'Miranda', 1, 471, 66000000000000000000, 'Icy, Silicate', false, false, 6);
INSERT INTO public.moon VALUES (13, 'Ariel', 3, 1158, 1350000000000000000000, 'Icy, Silicate', true, false, 6);
INSERT INTO public.moon VALUES (14, 'Umbriel', 4, 1170, 1170000000000000000000, 'Icy, Silicate', false, false, 6);
INSERT INTO public.moon VALUES (15, 'Titania', 9, 1578, 3490000000000000000000, 'Icy, Silicate', true, false, 6);
INSERT INTO public.moon VALUES (16, 'Oberon', 14, 1523, 3020000000000000000000, 'Icy, Silicate', false, false, 6);
INSERT INTO public.moon VALUES (17, 'Charon', 6, 1212, 1520000000000000000000, 'Rocky, Silicate', false, false, 7);
INSERT INTO public.moon VALUES (18, 'Hydra', 9, 61, 1100000000000000000, 'Rocky, Silicate', false, false, 7);
INSERT INTO public.moon VALUES (19, 'Triton', 6, 2706, 21400000000000000000000, 'Icy, Nitrogen', true, true, 8);
INSERT INTO public.moon VALUES (20, 'Enceladuss', 1, 504, 108000000000000000000, 'Icy, Silicate', true, false, 5);


--
-- Data for Name: nissan; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.nissan VALUES (1, 'Skyline', 6, 2, 295, false, true);
INSERT INTO public.nissan VALUES (2, 'Silvia', 4, 2, 260, false, true);
INSERT INTO public.nissan VALUES (3, 'Z', 6, 2, 400, true, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 149600000, 10, 5970000000000000000000000, 'Nitrogen, Oxygen', true, true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 227900000, 4, 642000000000000000000000, 'Carbon Dioxide, Nitrogen', false, true, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 108200000, 9, 4870000000000000000000000, 'Carbon Dioxide, Nitrogen', false, true, 1);
INSERT INTO public.planet VALUES (4, 'Jupiter', 778500000, 25, 1900000000000000000000000000, 'Hydrogen, Helium', false, true, 2);
INSERT INTO public.planet VALUES (5, 'Saturn', 1427000000, 10, 568000000000000000000000000, 'Hydrogen, Helium', false, true, 3);
INSERT INTO public.planet VALUES (6, 'Uranus', 2871000000, 9, 86800000000000000000000000, 'Hydrogen, Helium, Methane', false, true, 4);
INSERT INTO public.planet VALUES (7, 'Neptune', 4495000000, 11, 102000000000000000000000000, 'Hydrogen, Helium, Methane', false, true, 5);
INSERT INTO public.planet VALUES (8, 'Proxima b', 42000000, 1, 1270000000000000000000000, 'Nitrogen, Oxygen', true, true, 6);
INSERT INTO public.planet VALUES (9, 'Kepler-22b', 226000000, 2, 2380000000000000000000000, 'Carbon Dioxide, Nitrogen', true, true, 4);
INSERT INTO public.planet VALUES (10, 'Gliese 581g', 65000000, 1, 3300000000000000000000000, 'Oxygen, Carbon Dioxide', true, true, 3);
INSERT INTO public.planet VALUES (11, 'Alpha Centauri Bb', 129000000, 2, 3800000000000000000000000, 'Oxygen, Carbon Dioxide', true, true, 1);
INSERT INTO public.planet VALUES (12, 'Tau Ceti e', 300000000, 2, 2690000000000000000000000, 'Nitrogen, Oxygen', true, true, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 5778, 695700, 382800000000000000000000000, 'G-type main-sequence star', true, true, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 9940, 1189600, 25000000000000000000000000000, 'A-type main-sequence star', true, true, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 5790, 1392000, 150000000000000000000000000, 'G-type main-sequence star', true, true, 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 3500, 950000000, 12000000000000000000000000000000, 'M-type red supergiant', false, true, 2);
INSERT INTO public.star VALUES (5, 'Rigel', 12000, 789000, 1300000000000000000000000000000, 'B-type supergiant', false, true, 4);
INSERT INTO public.star VALUES (6, 'Antares', 3500, 700000000, 7500000000000000000000000000000, 'M-type red supergiant', false, true, 5);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: nissan_car_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.nissan_car_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unique_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: nissan nissan_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nissan
    ADD CONSTRAINT nissan_name_key UNIQUE (name);


--
-- Name: nissan nissan_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nissan
    ADD CONSTRAINT nissan_pkey PRIMARY KEY (nissan_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id) ON DELETE CASCADE;


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id) ON DELETE CASCADE;


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

