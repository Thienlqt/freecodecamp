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
-- Name: fifth_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fifth_table (
    fifth_table_id integer NOT NULL,
    name character varying(50) NOT NULL,
    is_daad boolean
);


ALTER TABLE public.fifth_table OWNER TO freecodecamp;

--
-- Name: fifth_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fifth_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fifth_table_id_seq OWNER TO freecodecamp;

--
-- Name: fifth_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fifth_table_id_seq OWNED BY public.fifth_table.fifth_table_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(50) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    galaxy_types character varying(50),
    distance_from_earth numeric(20,5),
    galaxy_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(50) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    planet_types character varying(50),
    distance_from_earth numeric(20,5),
    moon_id integer NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(50) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    planet_types character varying(50),
    distance_from_earth numeric(20,5),
    planet_id integer NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(50) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    planet_types character varying(50),
    distance_from_earth numeric(20,5),
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: fifth_table fifth_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table ALTER COLUMN fifth_table_id SET DEFAULT nextval('public.fifth_table_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: fifth_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fifth_table VALUES (1, 'a', NULL);
INSERT INTO public.fifth_table VALUES (2, 'b', NULL);
INSERT INTO public.fifth_table VALUES (3, 'c', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 'Our home galaxy', false, true, 13610, 'Spiral', 0.00000, 1);
INSERT INTO public.galaxy VALUES ('Andromeda', 'Nearest major galaxy', false, true, 14000, 'Spiral', 2537000.00000, 2);
INSERT INTO public.galaxy VALUES ('Triangulum', 'Part of the Local Group', false, true, 12000, 'Spiral', 3000000.00000, 3);
INSERT INTO public.galaxy VALUES ('Messier 87', 'A giant elliptical galaxy', false, true, 13000, 'Elliptical', 53000000.00000, 4);
INSERT INTO public.galaxy VALUES ('Whirlpool', 'Famous interacting galaxy', false, true, 400, 'Spiral', 23000000.00000, 5);
INSERT INTO public.galaxy VALUES ('Sombrero', 'A bright, large galaxy', false, true, 9000, 'Elliptical', 29000000.00000, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', 'Earth’s only natural satellite', false, true, 4500, 'Terrestrial', 0.00257, 300, 200);
INSERT INTO public.moon VALUES ('Phobos', 'Inner moon of Mars', false, true, 4600, 'Terrestrial', 0.00002, 301, 201);
INSERT INTO public.moon VALUES ('Deimos', 'Outer moon of Mars', false, true, 4600, 'Terrestrial', 0.00003, 302, 201);
INSERT INTO public.moon VALUES ('Io', 'Most volcanically active moon', false, true, 4600, 'Gas Giant', 0.00282, 303, 202);
INSERT INTO public.moon VALUES ('Europa', 'Ice-covered ocean world', false, true, 4600, 'Gas Giant', 0.00284, 304, 202);
INSERT INTO public.moon VALUES ('Ganymede', 'Largest moon in the Solar System', false, true, 4600, 'Gas Giant', 0.00296, 305, 202);
INSERT INTO public.moon VALUES ('Callisto', 'Heavily cratered ice world', false, true, 4600, 'Gas Giant', 0.00305, 306, 202);
INSERT INTO public.moon VALUES ('Titan', 'Only moon with thick atmosphere', false, true, 4600, 'Gas Giant', 0.00816, 307, 203);
INSERT INTO public.moon VALUES ('Enceladus', 'Saturn’s icy moon with geysers', false, true, 4600, 'Gas Giant', 0.00810, 308, 203);
INSERT INTO public.moon VALUES ('Mimas', 'Smallest major moon of Saturn', false, true, 4600, 'Gas Giant', 0.00802, 309, 203);
INSERT INTO public.moon VALUES ('Triton', 'Neptune’s largest moon, retrograde orbit', false, true, 4600, 'Unknown', 4.50000, 310, 207);
INSERT INTO public.moon VALUES ('Charon', 'Largest moon of Pluto', false, true, 4500, 'Unknown', 40.00000, 311, 207);
INSERT INTO public.moon VALUES ('Proxima b-I', 'Exomoon candidate around Proxima b', false, true, 300, 'Terrestrial', 4.25000, 312, 206);
INSERT INTO public.moon VALUES ('M31-V1b-I', 'Exomoon candidate in Andromeda', false, true, 200, 'Unknown', 253780.00000, 313, 208);
INSERT INTO public.moon VALUES ('TRI-1b-I', 'Exomoon candidate in TRI-1 system', false, true, 5000, 'Gas Giant', 300800.00000, 314, 209);
INSERT INTO public.moon VALUES ('TRI-1b-II', 'Another exomoon candidate in TRI-1', false, true, 5000, 'Gas Giant', 300805.00000, 315, 209);
INSERT INTO public.moon VALUES ('TRI-1c-I', 'Exomoon of TRI-1c', false, true, 5000, 'Gas Giant', 305050.00000, 316, 210);
INSERT INTO public.moon VALUES ('M87-1a-I', 'Exomoon in Messier 87', false, true, 10000, 'Unknown', 530000.00000, 317, 211);
INSERT INTO public.moon VALUES ('M87-1a-II', 'Possible exomoon in Messier 87', false, true, 10000, 'Unknown', 530050.00000, 318, 211);
INSERT INTO public.moon VALUES ('M87-1a-III', 'Another exomoon in Messier 87', false, true, 10000, 'Unknown', 530100.00000, 319, 211);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 'Our home planet', true, true, 4600, 'Terrestrial', 0.00000, 200, 100);
INSERT INTO public.planet VALUES ('Mars', 'The Red Planet', false, true, 4600, 'Terrestrial', 0.37500, 201, 100);
INSERT INTO public.planet VALUES ('Jupiter', 'Largest planet in Solar System', false, true, 4600, 'Gas Giant', 5.20000, 202, 100);
INSERT INTO public.planet VALUES ('Saturn', 'Known for its rings', false, true, 4600, 'Gas Giant', 9.58000, 203, 100);
INSERT INTO public.planet VALUES ('Venus', 'Twin of Earth but extremely hot', false, true, 4600, 'Terrestrial', 0.72000, 204, 100);
INSERT INTO public.planet VALUES ('Mercury', 'Smallest planet in Solar System', false, true, 4600, 'Terrestrial', 0.39000, 205, 100);
INSERT INTO public.planet VALUES ('Proxima b', 'Exoplanet orbiting Proxima Centauri', false, true, 4850, 'Terrestrial', 4.24000, 206, 101);
INSERT INTO public.planet VALUES ('Sirius b', 'White dwarf orbiting Sirius', false, true, 300, 'Unknown', 8.60000, 207, 102);
INSERT INTO public.planet VALUES ('M31-V1b', 'Possible exoplanet candidate in Andromeda', false, true, 200, 'Unknown', 253700.00000, 208, 103);
INSERT INTO public.planet VALUES ('TRI-1b', 'Gas Giant in Triangulum Galaxy', false, true, 5000, 'Gas Giant', 300000.00000, 209, 104);
INSERT INTO public.planet VALUES ('TRI-1c', 'Second gas giant in TRI-1 system', false, true, 5000, 'Gas Giant', 300500.00000, 210, 104);
INSERT INTO public.planet VALUES ('M87-1a', 'Massive exoplanet in Messier 87', false, true, 10000, 'Unknown', 5300000.00000, 211, 105);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 'Our solar system star', true, true, 4600, 'Terrestrial, Gas Giant', 0.00000, 100, 1);
INSERT INTO public.star VALUES ('Proxima Centauri', 'Closest known exoplanet star', false, true, 4850, 'Terrestrial', 4.24000, 101, 1);
INSERT INTO public.star VALUES ('Sirius', 'Brightest star in the night sky', false, true, 300, 'Gas Giant', 8.60000, 102, 1);
INSERT INTO public.star VALUES ('M31-V1', 'Cepheid variable star in Andromeda', false, true, 200, 'Unknown', 2537000.00000, 103, 2);
INSERT INTO public.star VALUES ('TRI-1', 'A main-sequence star in Triangulum', false, true, 5000, 'Gas Giant', 3000000.00000, 104, 3);
INSERT INTO public.star VALUES ('M87-1', 'A supermassive star in Messier 87', false, true, 10000, 'No planets', 53000000.00000, 105, 4);


--
-- Name: fifth_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fifth_table_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 319, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 211, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 105, true);


--
-- Name: fifth_table fifth_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table
    ADD CONSTRAINT fifth_table_pkey PRIMARY KEY (fifth_table_id);


--
-- Name: fifth_table fifth_table_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table
    ADD CONSTRAINT fifth_table_unique UNIQUE (name);


--
-- Name: galaxy galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

