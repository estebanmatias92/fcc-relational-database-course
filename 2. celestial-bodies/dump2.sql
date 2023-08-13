--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    description text,
    age_in_millions_of_years numeric(7,2),
    galaxy_type_id integer NOT NULL
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
-- Name: galaxy_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_type (
    galaxy_type_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.galaxy_type OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_type_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_type_galaxy_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_type_galaxy_type_id_seq OWNED BY public.galaxy_type.galaxy_type_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years numeric(7,2),
    distance_from_earth integer,
    is_spherical boolean,
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
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years numeric(7,2),
    distance_from_earth integer,
    has_life boolean,
    planet_type_id integer NOT NULL,
    star_id integer NOT NULL,
    star_system_id integer NOT NULL
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
-- Name: planet_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_type (
    planet_type_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.planet_type OWNER TO freecodecamp;

--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_type_planet_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_type_planet_type_id_seq OWNER TO freecodecamp;

--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_type_planet_type_id_seq OWNED BY public.planet_type.planet_type_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years numeric(7,2),
    distance_from_earth integer,
    galaxy_id integer NOT NULL,
    star_system_id integer NOT NULL
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
-- Name: star_system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_system (
    star_system_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_yeears numeric(7,2),
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star_system OWNER TO freecodecamp;

--
-- Name: star_system_star_system_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_system_star_system_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_system_star_system_id_seq OWNER TO freecodecamp;

--
-- Name: star_system_star_system_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_system_star_system_id_seq OWNED BY public.star_system.star_system_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: galaxy_type galaxy_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type ALTER COLUMN galaxy_type_id SET DEFAULT nextval('public.galaxy_type_galaxy_type_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: planet_type planet_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type ALTER COLUMN planet_type_id SET DEFAULT nextval('public.planet_type_planet_type_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Name: star_system star_system_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_system ALTER COLUMN star_system_id SET DEFAULT nextval('public.star_system_star_system_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'This is the galaxy containing the Sun and its Solar System, and therefore Earth. Most things visible to the naked eye in the sky are part of it, including the Milky Way composing the Zone of Avoidance.', 13610.00, 2);
INSERT INTO public.galaxy VALUES (2, 'Large Magellanic Cloud', 'Visible only from the southern hemisphere. It is also the brightest patch of nebulosity in the sky.', 1101.00, 2);
INSERT INTO public.galaxy VALUES (3, 'Small Magellanic Cloud', 'Visible only from the southern hemisphere.', 6500.00, 4);
INSERT INTO public.galaxy VALUES (4, 'Andromeda Galaxy', 'Once called the Great Andromeda Nebula, it is situated in the Andromeda constellation.', 10010.00, 2);
INSERT INTO public.galaxy VALUES (5, 'Triangulum Galaxy', 'Being a diffuse object, its visibility is strongly affected by even small amounts of light pollution, ranging from easily visible in direct vision in truly dark skies to a difficult averted vision object in rural/suburban skies.', 2700.00, 2);
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', 'Centaurus A has been spotted with the naked eye by Stephen James O''Meara.', 13270.00, 3);
INSERT INTO public.galaxy VALUES (7, 'Bode''s Galaxy', 'Highly experienced amateur astronomers may be able to see Messier 81 under exceptional observing conditions.', 13810.00, 2);
INSERT INTO public.galaxy VALUES (8, 'Sculptor Galaxy', 'NGC 253 has been observed with the naked eye by Timo Karhula.', 5.00, 5);


--
-- Data for Name: galaxy_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_type VALUES (1, 'Elliptical Galaxy', 'These galaxies have an ellipsoidal profile, Their appearance shows little structure and they typically have relatively little interstellar matter.');
INSERT INTO public.galaxy_type VALUES (2, 'Spiral Galaxy', 'Spiral galaxies consist of a rotating disk of stars and interstellar medium, along with a central bulge of generally older stars.');
INSERT INTO public.galaxy_type VALUES (3, 'Lenticular Galaxy', 'A lenticular galaxy is an intermediate form that has properties of both elliptical and spiral galaxies.');
INSERT INTO public.galaxy_type VALUES (4, 'Irregular Galaxy', 'Irregular galaxies are galaxies that can not be readily classified into an elliptical or spiral morphology.');
INSERT INTO public.galaxy_type VALUES (5, 'Active Galaxy', 'A significant portion of the galaxy''s total energy output is emitted by the active nucleus instead of its stars, dust and interstellar medium.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon(name, planet_id) VALUES ('Phobos', 10);
INSERT INTO public.moon(name, planet_id) VALUES ('Ganymede', 7);
INSERT INTO public.moon(name, planet_id) VALUES ('Phoebe', 2);
INSERT INTO public.moon(name, planet_id) VALUES ('Nereid', 4);
INSERT INTO public.moon(name, planet_id) VALUES ('Moon', 6);
INSERT INTO public.moon(name, planet_id) VALUES ('Ophelia', 9);
INSERT INTO public.moon(name, planet_id) VALUES ('Titan', 2);
INSERT INTO public.moon(name, planet_id) VALUES ('Prometheus', 2);
INSERT INTO public.moon(name, planet_id) VALUES ('Callisto', 7);
INSERT INTO public.moon(name, planet_id) VALUES ('Larissa', 4);
INSERT INTO public.moon(name, planet_id) VALUES ('Rhea', 2);
INSERT INTO public.moon(name, planet_id) VALUES ('Oberon', 9);
INSERT INTO public.moon(name, planet_id) VALUES ('Themisto', 7);
INSERT INTO public.moon(name, planet_id) VALUES ('Europa', 7);
INSERT INTO public.moon(name, planet_id) VALUES ('Deimos', 10);
INSERT INTO public.moon(name, planet_id) VALUES ('Enceladus', 2);
INSERT INTO public.moon(name, planet_id) VALUES ('Io', 7);
INSERT INTO public.moon(name, planet_id) VALUES ('Triton', 4);
INSERT INTO public.moon(name, planet_id) VALUES ('Iapetus', 2);
INSERT INTO public.moon(name, planet_id) VALUES ('Titania', 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet(name, has_life, planet_type_id, star_system_id, star_id) VALUES ('Venus', FALSE, 4, 6, 10);
INSERT INTO public.planet(name, has_life, planet_type_id, star_system_id, star_id) VALUES ('Saturn', FALSE, 5, 6, 10);
INSERT INTO public.planet(name, has_life, planet_type_id, star_system_id, star_id) VALUES ('Kepler-32b', FALSE, 7, 2, 7);
INSERT INTO public.planet(name, has_life, planet_type_id, star_system_id, star_id) VALUES ('Neptune', FALSE, 2, 6, 10);
INSERT INTO public.planet(name, has_life, planet_type_id, star_system_id, star_id) VALUES ('Kepler-32d', FALSE, 4, 2, 7);
INSERT INTO public.planet(name, has_life, planet_type_id, star_system_id, star_id) VALUES ('Earth', TRUE, 4, 6, 10);
INSERT INTO public.planet(name, has_life, planet_type_id, star_system_id, star_id) VALUES ('Jupiter', FALSE, 1, 6, 10);
INSERT INTO public.planet(name, has_life, planet_type_id, star_system_id, star_id) VALUES ('Kepler-32c', FALSE, 6, 2, 7);
INSERT INTO public.planet(name, has_life, planet_type_id, star_system_id, star_id) VALUES ('Uranus', FALSE, 2, 6, 10);
INSERT INTO public.planet(name, has_life, planet_type_id, star_system_id, star_id) VALUES ('Mars', FALSE, 4, 6, 10);
INSERT INTO public.planet(name, has_life, planet_type_id, star_system_id, star_id) VALUES ('Kepler-32e', FALSE, 2, 2, 7);
INSERT INTO public.planet(name, has_life, planet_type_id, star_system_id, star_id) VALUES ('Mercury', FALSE, 8, 6, 10);


--
-- Data for Name: planet_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_type VALUES (1, 'Giant Planet', 'Planeta masivo, conpuesto principalmente de gas y roca con una gruesa atmosfera de hidrogeno y helio.');
INSERT INTO public.planet_type VALUES (2, 'Ice Giant', 'Planetas como Urano o Neptuno, mas pequeños que los gigantes de gas, pero mucho mas grande que la Tierra.');
INSERT INTO public.planet_type VALUES (3, 'Mesoplanet', 'Planetas mas pequeños que Mercurio, pero mas grande que Ceres.');
INSERT INTO public.planet_type VALUES (4, 'Mini-Neptune', 'Tambien conocido como Planeta Enano, hasta 10 veces la masa de la Tierra pero mas pequeños que Urano o Neptuno.');
INSERT INTO public.planet_type VALUES (5, 'Planetar', 'Un Enano Marron, un objeto mas grande que un planeta pero mas pequeño que una estrella.');
INSERT INTO public.planet_type VALUES (6, 'Super-Earth', 'Planeta extra-solar con mayor masa que la tierra pero menos que Urano o Neptuno.');
INSERT INTO public.planet_type VALUES (7, 'Super-Jupiter', 'Objeto astronico mas masivo que Jupiter.');
INSERT INTO public.planet_type VALUES (8, 'Sub-Earth', 'Planetas menos masivos que la Tierra y Venus.');



--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star(name, galaxy_id, star_system_id) VALUES ('Epsilon Sculptoris A', 8, 4);
INSERT INTO public.star(name, galaxy_id, star_system_id) VALUES ('R Sculptoris C6', 8, 12);
INSERT INTO public.star(name, galaxy_id, star_system_id) VALUES ('LMC X-1 O-Star', 2, 1);
INSERT INTO public.star(name, galaxy_id, star_system_id) VALUES ('SMC X-2 Star 5B', 3, 1);
INSERT INTO public.star(name, galaxy_id, star_system_id) VALUES ('Epsilon Sculptoris B', 8, 4);
INSERT INTO public.star(name, galaxy_id, star_system_id) VALUES ('LMC X-1 Ororz Black Hole', 2, 1);
INSERT INTO public.star(name, galaxy_id, star_system_id) VALUES ('Kepler-32 M Dwarf', 1, 2);
INSERT INTO public.star(name, galaxy_id, star_system_id) VALUES ('SMC X-2 Pulsar', 3, 1);
INSERT INTO public.star(name, galaxy_id, star_system_id) VALUES ('SN 1986G Supernova', 6, 11);
INSERT INTO public.star(name, galaxy_id, star_system_id) VALUES ('Sun', 1, 6);
INSERT INTO public.star(name, galaxy_id, star_system_id) VALUES ('Iota Trianguli Aa', 5, 10);
INSERT INTO public.star(name, galaxy_id, star_system_id) VALUES ('LMC X-4 Pulsar', 2, 5);
INSERT INTO public.star(name, galaxy_id, star_system_id) VALUES ('M31-V1 Hubble''s Star', 4, 9);
INSERT INTO public.star(name, galaxy_id, star_system_id) VALUES ('Iota Trianguli Ab', 5, 10);
INSERT INTO public.star(name, galaxy_id, star_system_id) VALUES ('LMC X-4 O-Star', 2, 5);
INSERT INTO public.star(name, galaxy_id, star_system_id) VALUES ('SMC X-3 Neutron Star', 3, 8);
INSERT INTO public.star(name, galaxy_id, star_system_id) VALUES ('Iota Trianguli Ba', 5, 10);
INSERT INTO public.star(name, galaxy_id, star_system_id) VALUES ('SMC X-3 Be Star', 3, 8);
INSERT INTO public.star(name, galaxy_id, star_system_id) VALUES ('Iota Trianguli Bb', 5, 10);


--
-- Data for Name: star_system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_system(name, galaxy_id) VALUES ('LMC X-1', 2);
INSERT INTO public.star_system(name, galaxy_id) VALUES ('Kepler-32', 1);
INSERT INTO public.star_system(name, galaxy_id) VALUES ('SMC X-2', 3);
INSERT INTO public.star_system(name, galaxy_id) VALUES ('Epsilon Sculptoris', 8);
INSERT INTO public.star_system(name, galaxy_id) VALUES ('LMC X-4', 2);
INSERT INTO public.star_system(name, galaxy_id) VALUES ('Solar System', 1);
INSERT INTO public.star_system(name, galaxy_id) VALUES ('SN 1993J', 7);
INSERT INTO public.star_system(name, galaxy_id) VALUES ('SMC X-3', 3);
INSERT INTO public.star_system(name, galaxy_id) VALUES ('M31-V1', 4);
INSERT INTO public.star_system(name, galaxy_id) VALUES ('Iota Trianguli', 5);
INSERT INTO public.star_system(name, galaxy_id) VALUES ('SN 1986G', 6);
INSERT INTO public.star_system(name, galaxy_id) VALUES ('R Sculptoris', 8);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, false);


--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_type_galaxy_type_id_seq', 5, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 1, false);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 1, false);


--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_type_planet_type_id_seq', 1, false);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 1, false);


--
-- Name: star_system_star_system_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_system_star_system_id_seq', 1, false);


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
-- Name: galaxy_type galaxy_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_name_key UNIQUE (name);


--
-- Name: galaxy_type galaxy_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_pkey PRIMARY KEY (galaxy_type_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


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
-- Name: planet_type planet_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_name_key UNIQUE (name);


--
-- Name: planet_type planet_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_pkey PRIMARY KEY (planet_type_id);


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
-- Name: star_system star_system_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_system
    ADD CONSTRAINT star_system_name_key UNIQUE (name);


--
-- Name: star_system star_system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_system
    ADD CONSTRAINT star_system_pkey PRIMARY KEY (star_system_id);


--
-- Name: galaxy galaxy_galaxy_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_type_id_fkey FOREIGN KEY (galaxy_type_id) REFERENCES public.galaxy_type(galaxy_type_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_planet_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_type_id_fkey FOREIGN KEY (planet_type_id) REFERENCES public.planet_type(planet_type_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: planet planet_star_system_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_system_id_fkey FOREIGN KEY (star_system_id) REFERENCES public.star_system(star_system_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_star_system_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_system_id_fkey FOREIGN KEY (star_system_id) REFERENCES public.star_system(star_system_id);


--
-- Name: star_system star_system_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_system
    ADD CONSTRAINT star_system_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--