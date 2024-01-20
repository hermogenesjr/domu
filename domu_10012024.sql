--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Ubuntu 16.1-1.pgdg22.04+1)
-- Dumped by pg_dump version 16.1 (Ubuntu 16.1-1.pgdg22.04+1)

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
-- Name: eleitores; Type: TABLE; Schema: public; Owner: domu
--

CREATE TABLE public.eleitores (
    id integer NOT NULL,
    nome character varying NOT NULL,
    endereco character varying,
    cep character varying,
    bairro character varying,
    telefone character varying,
    telefone2 character varying,
    email character varying,
    id_lideranca integer,
    data_nascimento timestamp without time zone,
    rede_social character varying,
    profissao character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.eleitores OWNER TO domu;

--
-- Name: eleitor_id_seq; Type: SEQUENCE; Schema: public; Owner: domu
--

CREATE SEQUENCE public.eleitor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.eleitor_id_seq OWNER TO domu;

--
-- Name: eleitor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: domu
--

ALTER SEQUENCE public.eleitor_id_seq OWNED BY public.eleitores.id;


--
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: domu
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO domu;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: domu
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.failed_jobs_id_seq OWNER TO domu;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: domu
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: liderancas; Type: TABLE; Schema: public; Owner: domu
--

CREATE TABLE public.liderancas (
    id integer NOT NULL,
    nome character varying NOT NULL,
    endereco character varying,
    cep character varying,
    bairro character varying,
    telefone character varying,
    telefone2 character varying,
    email character varying,
    id_reduto integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.liderancas OWNER TO domu;

--
-- Name: lideranca_id_seq; Type: SEQUENCE; Schema: public; Owner: domu
--

CREATE SEQUENCE public.lideranca_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.lideranca_id_seq OWNER TO domu;

--
-- Name: lideranca_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: domu
--

ALTER SEQUENCE public.lideranca_id_seq OWNED BY public.liderancas.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: domu
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO domu;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: domu
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.migrations_id_seq OWNER TO domu;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: domu
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: model_has_permissions; Type: TABLE; Schema: public; Owner: domu
--

CREATE TABLE public.model_has_permissions (
    permission_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id bigint NOT NULL
);


ALTER TABLE public.model_has_permissions OWNER TO domu;

--
-- Name: model_has_roles; Type: TABLE; Schema: public; Owner: domu
--

CREATE TABLE public.model_has_roles (
    role_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id bigint NOT NULL
);


ALTER TABLE public.model_has_roles OWNER TO domu;

--
-- Name: password_reset_tokens; Type: TABLE; Schema: public; Owner: domu
--

CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_reset_tokens OWNER TO domu;

--
-- Name: permissions; Type: TABLE; Schema: public; Owner: domu
--

CREATE TABLE public.permissions (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.permissions OWNER TO domu;

--
-- Name: permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: domu
--

CREATE SEQUENCE public.permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.permissions_id_seq OWNER TO domu;

--
-- Name: permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: domu
--

ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;


--
-- Name: personal_access_tokens; Type: TABLE; Schema: public; Owner: domu
--

CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.personal_access_tokens OWNER TO domu;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: domu
--

CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.personal_access_tokens_id_seq OWNER TO domu;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: domu
--

ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;


--
-- Name: redutos; Type: TABLE; Schema: public; Owner: domu
--

CREATE TABLE public.redutos (
    id integer NOT NULL,
    reduto character varying NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    gerente character varying
);


ALTER TABLE public.redutos OWNER TO domu;

--
-- Name: reduto_id_seq; Type: SEQUENCE; Schema: public; Owner: domu
--

CREATE SEQUENCE public.reduto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.reduto_id_seq OWNER TO domu;

--
-- Name: reduto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: domu
--

ALTER SEQUENCE public.reduto_id_seq OWNED BY public.redutos.id;


--
-- Name: role_has_permissions; Type: TABLE; Schema: public; Owner: domu
--

CREATE TABLE public.role_has_permissions (
    permission_id bigint NOT NULL,
    role_id bigint NOT NULL
);


ALTER TABLE public.role_has_permissions OWNER TO domu;

--
-- Name: roles; Type: TABLE; Schema: public; Owner: domu
--

CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.roles OWNER TO domu;

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: domu
--

CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.roles_id_seq OWNER TO domu;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: domu
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: domu
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    id_lideranca integer
);


ALTER TABLE public.users OWNER TO domu;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: domu
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO domu;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: domu
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: eleitores id; Type: DEFAULT; Schema: public; Owner: domu
--

ALTER TABLE ONLY public.eleitores ALTER COLUMN id SET DEFAULT nextval('public.eleitor_id_seq'::regclass);


--
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: domu
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: liderancas id; Type: DEFAULT; Schema: public; Owner: domu
--

ALTER TABLE ONLY public.liderancas ALTER COLUMN id SET DEFAULT nextval('public.lideranca_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: domu
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: permissions id; Type: DEFAULT; Schema: public; Owner: domu
--

ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);


--
-- Name: personal_access_tokens id; Type: DEFAULT; Schema: public; Owner: domu
--

ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);


--
-- Name: redutos id; Type: DEFAULT; Schema: public; Owner: domu
--

ALTER TABLE ONLY public.redutos ALTER COLUMN id SET DEFAULT nextval('public.reduto_id_seq'::regclass);


--
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: domu
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: domu
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: eleitores; Type: TABLE DATA; Schema: public; Owner: domu
--

COPY public.eleitores (id, nome, endereco, cep, bairro, telefone, telefone2, email, id_lideranca, data_nascimento, rede_social, profissao, created_at, updated_at) FROM stdin;
1	Eleitor	Rua 02	\N	\N	67911110191	\N	email@gmail.com	1	\N	\N	\N	2024-01-04 10:32:33	2024-01-06 19:30:13
2	teste111	Rua Paranaíba, 90	\N	\N	(67)99645-1248	\N	email@globo.com	2	\N	\N	\N	2024-01-04 10:32:45	2024-01-06 19:30:26
4	Eleitor	Endereço 01	\N	\N	(67)03521-2091	\N	email@terra.com.br	2	\N	\N	\N	2024-01-04 10:40:04	2024-01-06 19:31:19
5	Adilson Rodrigues	Ninha Verde 1	78945-612	Quadra	(11)97845-12333	\N	capitao@mit.com	1	1979-07-23 00:00:00	\N	Superintendente	2024-01-07 14:21:16	2024-01-07 14:21:16
6	João da Silva	Endereço 01	79612-020	Vila Nova	(67)99665-1020	\N	joaosilva@uol.com.br	6	\N	\N	\N	2024-01-08 21:40:34	2024-01-08 21:40:34
7	Larissa Fernandes	Endereço 01	79600-001	Centro	\N	\N	\N	7	1980-11-20 00:00:00	\N	\N	2024-01-09 01:29:29	2024-01-09 01:29:29
8	Eleitor 100	Endereço 01	\N	\N	\N	\N	\N	\N	\N	\N	\N	2024-01-10 01:26:00	2024-01-10 01:26:00
9	teste222	Endereço 01	\N	\N	\N	\N	\N	\N	\N	\N	\N	2024-01-10 01:34:03	2024-01-10 01:34:03
10	Eleitor 301	Rua 02	79601-120	\N	(67)91111-0191	(67)80101-0202	seu@mail.net	2	\N	\N	\N	2024-01-10 01:37:14	2024-01-10 01:47:51
11	Eleitor abc	Rua 02	\N	\N	(67)91111-0191	\N	seu@mail.net	\N	\N	\N	\N	2024-01-10 01:48:37	2024-01-10 01:48:37
12	Eleitor 400	Rua 02	\N	\N	(67)91111-0191	\N	seu@mail.net	2	\N	\N	\N	2024-01-10 01:50:15	2024-01-10 01:50:29
\.


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: domu
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- Data for Name: liderancas; Type: TABLE DATA; Schema: public; Owner: domu
--

COPY public.liderancas (id, nome, endereco, cep, bairro, telefone, telefone2, email, id_reduto, created_at, updated_at) FROM stdin;
1	Francisco Mancini	Endereço 01	79612-020	Centro	(67)99645-1248	\N	meu@mail.net	2	2024-01-04 01:14:26	2024-01-04 01:15:06
2	Laerte da Silva	Rua Paranaíba, 90	11111-111	Vila 02	(22)99191-9191	\N	seu@mail.net	1	2024-01-04 01:25:45	2024-01-08 21:31:09
6	SERGIO REIS	Rua 02	79601-120	Centro	(67)98712-8762	\N	mail@srtl.com.br	3	2024-01-08 21:38:14	2024-01-08 21:38:14
7	kuesley Fernades	Rua Mieza 1000	79601-100	Centro	(67)98181-7272	\N	mieza@mail.com	4	2024-01-09 01:26:11	2024-01-09 01:26:11
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: domu
--

COPY public.migrations (id, migration, batch) FROM stdin;
5	2014_10_12_000000_create_users_table	1
6	2014_10_12_100000_create_password_reset_tokens_table	1
7	2019_08_19_000000_create_failed_jobs_table	1
8	2019_12_14_000001_create_personal_access_tokens_table	1
9	2023_12_17_215413_create_eleitor_table	0
10	2023_12_17_215413_create_failed_jobs_table	0
11	2023_12_17_215413_create_lideranca_table	0
12	2023_12_17_215413_create_password_reset_tokens_table	0
13	2023_12_17_215413_create_personal_access_tokens_table	0
14	2023_12_17_215413_create_reduto_table	0
15	2023_12_17_215413_create_users_table	0
16	2023_12_17_233457_create_lideranca_table	0
17	2023_12_17_233457_create_reduto_table	0
18	2023_12_17_233500_add_foreign_keys_to_lideranca_table	0
19	2023_12_21_003103_create_eleitor_table	0
20	2023_12_21_003103_create_failed_jobs_table	0
21	2023_12_21_003103_create_liderancas_table	0
22	2023_12_21_003103_create_password_reset_tokens_table	0
23	2023_12_21_003103_create_personal_access_tokens_table	0
24	2023_12_21_003103_create_redutos_table	0
25	2023_12_21_003103_create_users_table	0
26	2023_12_21_003106_add_foreign_keys_to_eleitor_table	0
27	2023_12_21_003106_add_foreign_keys_to_liderancas_table	0
28	2023_12_27_205349_create_permission_tables	2
\.


--
-- Data for Name: model_has_permissions; Type: TABLE DATA; Schema: public; Owner: domu
--

COPY public.model_has_permissions (permission_id, model_type, model_id) FROM stdin;
\.


--
-- Data for Name: model_has_roles; Type: TABLE DATA; Schema: public; Owner: domu
--

COPY public.model_has_roles (role_id, model_type, model_id) FROM stdin;
1	App\\Models\\User	2
1	App\\Models\\User	1
2	App\\Models\\User	7
2	App\\Models\\User	8
2	App\\Models\\User	9
\.


--
-- Data for Name: password_reset_tokens; Type: TABLE DATA; Schema: public; Owner: domu
--

COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
\.


--
-- Data for Name: permissions; Type: TABLE DATA; Schema: public; Owner: domu
--

COPY public.permissions (id, name, guard_name, created_at, updated_at) FROM stdin;
1	user_read	web	2023-12-29 01:52:48	2023-12-30 12:28:06
2	role_read	web	2023-12-30 19:55:41	2023-12-30 19:55:41
3	liderancas_read	web	2023-12-30 19:56:02	2023-12-30 19:56:02
4	permission_read	web	2023-12-30 19:56:32	2023-12-30 19:56:32
5	reduto_read	web	2023-12-30 19:56:45	2023-12-30 20:05:12
\.


--
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: public; Owner: domu
--

COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: redutos; Type: TABLE DATA; Schema: public; Owner: domu
--

COPY public.redutos (id, reduto, created_at, updated_at, gerente) FROM stdin;
1	BRUTUS	2024-01-04 01:12:44	2024-01-04 01:12:44	\N
2	INDEPENDENTE	2024-01-04 01:13:41	2024-01-04 01:13:41	\N
3	SRTL	2024-01-08 21:37:11	2024-01-08 21:37:11	\N
4	AJE	2024-01-09 01:24:58	2024-01-09 22:05:44	Francisco Mancini
\.


--
-- Data for Name: role_has_permissions; Type: TABLE DATA; Schema: public; Owner: domu
--

COPY public.role_has_permissions (permission_id, role_id) FROM stdin;
1	1
2	1
3	1
4	1
5	1
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: domu
--

COPY public.roles (id, name, guard_name, created_at, updated_at) FROM stdin;
1	Admin	web	2023-12-27 21:51:11	2023-12-27 21:51:11
2	Manager	web	2023-12-28 22:17:14	2023-12-28 22:17:14
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: domu
--

COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at, id_lideranca) FROM stdin;
2	Hermógenes Júnior	meu@mail.com	\N	$2y$12$d4qfJXwNoYTm6U6XtlG7p.e3nrlw4HWcpKRvYTaX9RaPk2ebwGwee	\N	2023-12-13 02:14:47	2023-12-16 15:55:52	\N
7	Liderança	lider@domuapp.com.br	\N	$2y$12$zfHFF84hKRmuyFmIq825NOLmQTpp36ChGhE3mQL2SiDmATEPb/z22	\N	2023-12-27 02:04:33	2024-01-06 19:14:35	2
1	Chico AJE	admin@domuapp.com.br	\N	$2y$12$A53kZVN2kL5ylI5BkQGusOEMzsJVyUCMF7eNMpi9a/cR5bD7izOAy	5x7kf8JFECCOsN4HaX6iiNAMUn5y0FT1o2BTU1v0MisGKkoAzATcRSEmENs6	2023-12-12 19:54:15	2024-01-06 19:09:50	1
8	SERGIO REIS	mail@srtl.com.br	\N	$2y$12$sM.Jgdwu/R4V.sCYZ1TPKu.XdHw7LBOF419xdm/ouJ3IlY5R5nzu.	\N	2024-01-08 21:39:19	2024-01-08 21:39:19	6
9	Kuesley Fernandes	mieza@mail.com	\N	$2y$12$H41DchWtE2CL6PWX/YkcuOgP850cuX6Lm3bPk0MHar2qiifWAHhh.	\N	2024-01-09 01:27:28	2024-01-09 01:27:28	7
\.


--
-- Name: eleitor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: domu
--

SELECT pg_catalog.setval('public.eleitor_id_seq', 12, true);


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: domu
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Name: lideranca_id_seq; Type: SEQUENCE SET; Schema: public; Owner: domu
--

SELECT pg_catalog.setval('public.lideranca_id_seq', 7, true);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: domu
--

SELECT pg_catalog.setval('public.migrations_id_seq', 28, true);


--
-- Name: permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: domu
--

SELECT pg_catalog.setval('public.permissions_id_seq', 5, true);


--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: domu
--

SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);


--
-- Name: reduto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: domu
--

SELECT pg_catalog.setval('public.reduto_id_seq', 4, true);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: domu
--

SELECT pg_catalog.setval('public.roles_id_seq', 2, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: domu
--

SELECT pg_catalog.setval('public.users_id_seq', 9, true);


--
-- Name: eleitores eleitor_pk; Type: CONSTRAINT; Schema: public; Owner: domu
--

ALTER TABLE ONLY public.eleitores
    ADD CONSTRAINT eleitor_pk PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: domu
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: domu
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- Name: liderancas lideranca_pk; Type: CONSTRAINT; Schema: public; Owner: domu
--

ALTER TABLE ONLY public.liderancas
    ADD CONSTRAINT lideranca_pk PRIMARY KEY (id);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: domu
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: model_has_permissions model_has_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: domu
--

ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_pkey PRIMARY KEY (permission_id, model_id, model_type);


--
-- Name: model_has_roles model_has_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: domu
--

ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_pkey PRIMARY KEY (role_id, model_id, model_type);


--
-- Name: password_reset_tokens password_reset_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: domu
--

ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);


--
-- Name: permissions permissions_name_guard_name_unique; Type: CONSTRAINT; Schema: public; Owner: domu
--

ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_name_guard_name_unique UNIQUE (name, guard_name);


--
-- Name: permissions permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: domu
--

ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: domu
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_token_unique; Type: CONSTRAINT; Schema: public; Owner: domu
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);


--
-- Name: redutos reduto_pk; Type: CONSTRAINT; Schema: public; Owner: domu
--

ALTER TABLE ONLY public.redutos
    ADD CONSTRAINT reduto_pk PRIMARY KEY (id);


--
-- Name: role_has_permissions role_has_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: domu
--

ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_pkey PRIMARY KEY (permission_id, role_id);


--
-- Name: roles roles_name_guard_name_unique; Type: CONSTRAINT; Schema: public; Owner: domu
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_name_guard_name_unique UNIQUE (name, guard_name);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: domu
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: domu
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: domu
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: model_has_permissions_model_id_model_type_index; Type: INDEX; Schema: public; Owner: domu
--

CREATE INDEX model_has_permissions_model_id_model_type_index ON public.model_has_permissions USING btree (model_id, model_type);


--
-- Name: model_has_roles_model_id_model_type_index; Type: INDEX; Schema: public; Owner: domu
--

CREATE INDEX model_has_roles_model_id_model_type_index ON public.model_has_roles USING btree (model_id, model_type);


--
-- Name: personal_access_tokens_tokenable_type_tokenable_id_index; Type: INDEX; Schema: public; Owner: domu
--

CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);


--
-- Name: model_has_permissions model_has_permissions_permission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: domu
--

ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;


--
-- Name: model_has_roles model_has_roles_role_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: domu
--

ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;


--
-- Name: role_has_permissions role_has_permissions_permission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: domu
--

ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;


--
-- Name: role_has_permissions role_has_permissions_role_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: domu
--

ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

