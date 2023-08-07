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
    name character varying(20) NOT NULL,
    age_in_millions_of_years numeric(20,5),
    description text,
    millions_of_stars integer
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
    name character varying(20) NOT NULL,
    age_in_millions_of_years numeric(20,5),
    description text,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    has_life boolean NOT NULL,
    age_in_millions_of_years numeric(20,5),
    description text,
    number_of_moons integer,
    is_terrestrial boolean NOT NULL,
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
-- Name: planetary_system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planetary_system (
    planetary_system_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distance_from_earth integer,
    star_id integer
);


ALTER TABLE public.planetary_system OWNER TO freecodecamp;

--
-- Name: planetary_system_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planetary_system_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planetary_system_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: planetary_system_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planetary_system_galaxy_id_seq OWNED BY public.planetary_system.planetary_system_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_in_millions_of_years numeric(20,5),
    description text,
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
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planetary_system planetary_system_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetary_system ALTER COLUMN planetary_system_id SET DEFAULT nextval('public.planetary_system_galaxy_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13600.00000, 'The Milky Way is a barred spiral galaxy, and it is the galaxy that contains our Solar System. It is home to billions of stars, including our Sun, and a wide variety of astronomical phenomena', 250000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 11000.00000, 'The Andromeda Galaxy is a spiral galaxy and is the closest major galaxy to the Milky Way. It is visible to the naked eye as a faint, elongated cloud in the night sky.
', 1000000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 6000.00000, 'The Triangulum Galaxy is a spiral galaxy located in the constellation Triangulum. It is the third-largest galaxy in the Local Group, after the Milky Way and Andromeda.', 40000);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 9000.00000, 'The Sombrero Galaxy is an unbarred spiral galaxy in the constellation Virgo. It is notable for its prominent dust lane, which gives it a sombrero-like appearance.', 1000000);
INSERT INTO public.galaxy VALUES (5, 'Centaurus A', 12000.00000, 'Centaurus A is an elliptical galaxy located in the constellation Centaurus. It is characterized by a prominent dust lane and an active galactic nucleus.', 100000);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool Galaxy', 400.00000, 'The Whirlpool Galaxy is a grand-design spiral galaxy located in the constellation Canes Venatici. It is known for its spiral arms and interaction with a smaller companion galaxy.', 100000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 4500.00000, 'Earth''s Moon is the fifth-largest moon in the solar system and the only natural satellite of Earth. It is a barren and rocky world with various features such as craters, mountains, and large plains called maria', 3);
INSERT INTO public.moon VALUES (2, 'Europa', 4500.00000, 'Europa is one of Jupiter''s four largest Galilean moons. It is thought to have a subsurface ocean beneath its icy crust, making it a target of interest for potential extraterrestrial life', 5);
INSERT INTO public.moon VALUES (3, 'Titan', 4500.00000, 'Titan is the largest moon of Saturn and the second-largest moon in the solar system. It has a thick atmosphere primarily composed of nitrogen, with methane and ethane lakes on its surface.', 6);
INSERT INTO public.moon VALUES (4, 'Enceladus', 4500.00000, 'Enceladus is a small, icy moon of Saturn. It is known for its active geysers of water vapor and icy particles erupting from its south pole, suggesting the presence of a subsurface ocean', 6);
INSERT INTO public.moon VALUES (5, 'Triton', 4500.00000, 'Triton is the largest moon of Neptune and one of the coldest objects in the solar system. It has a thin atmosphere and geysers of nitrogen gas erupting from its surface', 8);
INSERT INTO public.moon VALUES (6, 'Charon', 4500.00000, 'Charon is the largest moon of Pluto and is in a tidally locked orbit, meaning it always shows the same face to Pluto. It has a heavily cratered surface.', 9);
INSERT INTO public.moon VALUES (7, 'Phobos', 4500.00000, 'Phobos is the larger of Mars'' two moons and is gradually getting closer to Mars over time. It has a heavily grooved surface due to asteroid impacts.', 4);
INSERT INTO public.moon VALUES (8, 'Deimos', 4300.00000, 'The larger and innermost moon of Mars, heavily cratered with a unique stick-like shape.', 4);
INSERT INTO public.moon VALUES (9, 'Io', 4500.00000, 'The innermost of Jupiter''s four Galilean moons, known for its intense volcanic activity.', 5);
INSERT INTO public.moon VALUES (10, 'Ganymede', 4500.00000, 'The largest moon in the Solar System and the largest of Jupiter''s moons, with a subsurface ocean.', 5);
INSERT INTO public.moon VALUES (11, 'Callisto', 4500.00000, 'One of Jupiter''s Galilean moons, heavily cratered and the most heavily cratered object in the Solar System.', 5);
INSERT INTO public.moon VALUES (12, 'Rhea', 4500.00000, 'Saturn''s second-largest moon, heavily cratered and with a thin atmosphere of oxygen and carbon dioxide', 6);
INSERT INTO public.moon VALUES (13, 'Ariel', 4500.00000, 'One of Uranus'' moons, with a relatively young and smooth surface.', 7);
INSERT INTO public.moon VALUES (14, 'Umbriel', 4500.00000, 'Another moon of Uranus, heavily cratered with a dark surface.', 7);
INSERT INTO public.moon VALUES (15, 'Titania', 4500.00000, 'Uranus'' largest moon, with a diverse and complex surface.', 7);
INSERT INTO public.moon VALUES (16, 'Oberon', 4500.00000, 'The second-largest moon of Uranus, heavily cratered and covered in ice.', 7);
INSERT INTO public.moon VALUES (17, 'Miranda', 4500.00000, 'Uranus'' smallest spherical moon, known for its varied and unique terrain.', 7);
INSERT INTO public.moon VALUES (18, 'Dione', 4500.00000, 'One of Saturn''s moons with a heavily cratered surface and distinct ice cliffs.', 6);
INSERT INTO public.moon VALUES (19, 'Tethys', 4500.00000, 'Another of Saturn''s moons with a heavily cratered surface and a large impact basin.', 6);
INSERT INTO public.moon VALUES (20, 'Hyperion', 4500.00000, 'Saturn''s irregularly shaped moon, known for its chaotic rotation and sponge-like appearance.', 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Venus', false, 4500.00000, 'Thick atmosphere, hottest planet in our solar system', 0, true, 1);
INSERT INTO public.planet VALUES (3, 'Earth', true, 4543.00000, 'Blue planet with diverse life forms and liquid water', 1, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', false, 4603.00000, 'Known as the "Red Planet," potential for past microbial life', 2, true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 4550.00000, 'Largest planet, a gas giant with a complex system of moons', 79, false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 4503.00000, 'Known for its prominent ring system and numerous moons', 82, false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', false, 4503.00000, 'Tilted on its side, classified as an ice giant', 27, false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', false, 4503.00000, 'Blue and stormy, the farthest planet in our solar system', 14, false, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', false, 4500.00000, 'Dwarf planet, part of the Kuiper Belt, demoted from full planet', 5, false, 1);
INSERT INTO public.planet VALUES (1, 'Mercury', false, 4500.00000, 'Closest planet to the Sun with extreme temperatures', 0, true, 1);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1d', false, 7600.00000, 'TRAPPIST-1d is one of the seven Earth-sized exoplanets orbiting the ultra-cool dwarf star TRAPPIST-1. It is located in the habitable zone of its star and is a candidate for potential liquid water on its surface.', NULL, true, 6);
INSERT INTO public.planet VALUES (11, 'Proxima Centauri B', false, 4850.00000, 'Proxima Centauri b is an exoplanet located in the habitable zone of the star Proxima Centauri, which is the closest known star to our Sun. It is a candidate for potential habitability, but more research is needed to understand its atmosphere and surface conditions.', NULL, true, 5);
INSERT INTO public.planet VALUES (10, 'Kepler-452b', false, 6000.00000, 'Kepler-452b is an exoplanet (a planet outside our solar system) located about 1,400 light-years away from Earth. It is often referred to as Earth''s "cousin" due to its similar size and orbit within the habitable zone of its star.', NULL, true, 4);


--
-- Data for Name: planetary_system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planetary_system VALUES (1, 'Solar System', 0, 1);
INSERT INTO public.planetary_system VALUES (2, 'Alpha Centauri', 4, 5);
INSERT INTO public.planetary_system VALUES (3, 'TRAPPIST-1', 39, 6);
INSERT INTO public.planetary_system VALUES (4, 'Gliese 581', 20, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4600.00000, 'The Sun is a G-type main-sequence star, also known as a yellow dwarf. It is the center of our Solar System and the primary source of light and energy for Earth.', 1);
INSERT INTO public.star VALUES (2, 'Alpheratz', 100.00000, 'Alpheratz is a binary star system consisting of two stars that appear as a single point of light to the naked eye. It is the brightest star in the constellation of Andromeda.', 2);
INSERT INTO public.star VALUES (3, 'Baten Kaitos', 100.00000, 'Baten Kaitos is a bright star in the constellation Cetus, which is located near the Triangulum Galaxy. It is an orange giant star.', 3);
INSERT INTO public.star VALUES (4, 'NGC 4826', 50.00000, 'NGC 4826 is one of the stars in the Sombrero Galaxy. It is located near the galaxy''s nucleus and is classified as a red giant star', 4);
INSERT INTO public.star VALUES (5, 'Alpha Centauri B', 5900.00000, 'Alpha Centauri is a binary star system consisting of two main-sequence stars, Alpha Centauri A and Alpha Centauri B, along with a third companion, Proxima Centauri, which is a red dwarf.', 1);
INSERT INTO public.star VALUES (6, 'TRAPPIST-1', 7600.00000, 'TRAPPIST-1 is an ultracool dwarf star located in the constellation Aquarius. It gained attention due to its seven Earth-sized planets, three of which are in the habitable zone.', 1);
INSERT INTO public.star VALUES (7, 'Gliese 581', 7500.00000, 'Gliese 581 is a red dwarf star located in the constellation Libra. It is known for its planetary system, including several exoplanets.', 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: planetary_system_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planetary_system_galaxy_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


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
-- Name: planetary_system name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetary_system
    ADD CONSTRAINT name_unique UNIQUE (name);


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
-- Name: planetary_system planetary_system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetary_system
    ADD CONSTRAINT planetary_system_pkey PRIMARY KEY (planetary_system_id);


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
-- Name: planetary_system star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetary_system
    ADD CONSTRAINT star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--


