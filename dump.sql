--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.3
-- Dumped by pg_dump version 9.6.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: admin_c_blog
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO admin_c_blog;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_c_blog
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO admin_c_blog;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_c_blog
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: admin_c_blog
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO admin_c_blog;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_c_blog
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO admin_c_blog;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_c_blog
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: admin_c_blog
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO admin_c_blog;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_c_blog
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO admin_c_blog;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_c_blog
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: core_user; Type: TABLE; Schema: public; Owner: admin_c_blog
--

CREATE TABLE core_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    avatar character varying(100) NOT NULL
);


ALTER TABLE core_user OWNER TO admin_c_blog;

--
-- Name: core_user_groups; Type: TABLE; Schema: public; Owner: admin_c_blog
--

CREATE TABLE core_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE core_user_groups OWNER TO admin_c_blog;

--
-- Name: core_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_c_blog
--

CREATE SEQUENCE core_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_user_groups_id_seq OWNER TO admin_c_blog;

--
-- Name: core_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_c_blog
--

ALTER SEQUENCE core_user_groups_id_seq OWNED BY core_user_groups.id;


--
-- Name: core_user_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_c_blog
--

CREATE SEQUENCE core_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_user_id_seq OWNER TO admin_c_blog;

--
-- Name: core_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_c_blog
--

ALTER SEQUENCE core_user_id_seq OWNED BY core_user.id;


--
-- Name: core_user_user_permissions; Type: TABLE; Schema: public; Owner: admin_c_blog
--

CREATE TABLE core_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE core_user_user_permissions OWNER TO admin_c_blog;

--
-- Name: core_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_c_blog
--

CREATE SEQUENCE core_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_user_user_permissions_id_seq OWNER TO admin_c_blog;

--
-- Name: core_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_c_blog
--

ALTER SEQUENCE core_user_user_permissions_id_seq OWNED BY core_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: admin_c_blog
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE django_admin_log OWNER TO admin_c_blog;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_c_blog
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO admin_c_blog;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_c_blog
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: admin_c_blog
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO admin_c_blog;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_c_blog
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO admin_c_blog;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_c_blog
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: admin_c_blog
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO admin_c_blog;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_c_blog
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO admin_c_blog;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_c_blog
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: admin_c_blog
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO admin_c_blog;

--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: admin_c_blog
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: admin_c_blog
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: admin_c_blog
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: core_user id; Type: DEFAULT; Schema: public; Owner: admin_c_blog
--

ALTER TABLE ONLY core_user ALTER COLUMN id SET DEFAULT nextval('core_user_id_seq'::regclass);


--
-- Name: core_user_groups id; Type: DEFAULT; Schema: public; Owner: admin_c_blog
--

ALTER TABLE ONLY core_user_groups ALTER COLUMN id SET DEFAULT nextval('core_user_groups_id_seq'::regclass);


--
-- Name: core_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: admin_c_blog
--

ALTER TABLE ONLY core_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('core_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: admin_c_blog
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: admin_c_blog
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: admin_c_blog
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: admin_c_blog
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_c_blog
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: admin_c_blog
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_c_blog
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: admin_c_blog
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add user	1	add_user
2	Can change user	1	change_user
3	Can delete user	1	delete_user
4	Can add log entry	2	add_logentry
5	Can change log entry	2	change_logentry
6	Can delete log entry	2	delete_logentry
7	Can add permission	3	add_permission
8	Can change permission	3	change_permission
9	Can delete permission	3	delete_permission
10	Can add group	4	add_group
11	Can change group	4	change_group
12	Can delete group	4	delete_group
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_c_blog
--

SELECT pg_catalog.setval('auth_permission_id_seq', 18, true);


--
-- Data for Name: core_user; Type: TABLE DATA; Schema: public; Owner: admin_c_blog
--

COPY core_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, avatar) FROM stdin;
2	pbkdf2_sha256$36000$ALJupTDxeIu2$itHlx8AkP2wpuMu0i8bBC5orU+eO6QMYQzwTnCdUXpg=	2017-06-27 21:52:47.671155+03	f	mr__raccoon	Dmitry	Kovalev	dim941204@gmail.com	f	t	2017-06-27 20:49:44.0859+03	
3	pbkdf2_sha256$36000$EwJVGn3LJUuk$5EJynbuogPr2Jt1gmUUHTp5rBuniLBK5r8XC4Y++W8g=	\N	f	mrsa	ds	sdf	fa@fi.com	f	t	2017-06-27 22:11:07.476247+03	
4	pbkdf2_sha256$36000$MuqgkECFka1f$DMHy3HsAsQ7up3gKC6083l+dl/Uai/Hm6blUEg3Os5Y=	\N	f	fas	sd	324	dima@gma.cl	f	t	2017-06-27 22:11:24.497328+03	
1	pbkdf2_sha256$36000$WMxjiv1Dow6u$5MZuikKdRz44KahVxAhTnbfrC8th2YKiIo0NAax5Osc=	2017-06-27 22:11:52.591923+03	t	admin			admin@example.com	t	t	2017-06-27 19:42:31.251403+03	
5	pbkdf2_sha256$36000$wX43gxoHJpqO$Hz3FmRfsyTjSsLcF9WLw7Z8+p8s+hkdZF35o5Xq+VxE=	\N	f	mre	1234fda	fas	fdas@maad.com	f	t	2017-06-27 22:21:00.754751+03	
6	pbkdf2_sha256$36000$oEPqDVU5sias$ZaCU6JFHc6xUKoBMk/+QPcpLkeF9SYQa2uVg/wFJy/g=	\N	f	fkfsal	fda	fdasdf	diam@fasl.co	f	t	2017-06-27 22:21:19.015705+03	
7	pbkdf2_sha256$36000$vOIDDyr2Jabg$pDe7Un/SrDey7l896XfQhaJX4Gr3gmVYGLXdLuNwT+s=	\N	f	fdsafllsda	fsa	fdsa	fsda@kcl.co	f	t	2017-06-27 22:29:52.344696+03	
9	pbkdf2_sha256$36000$R0oidVP4c1tk$FBERe8T8GHFx84wA+cPOKvRQretuSy+3pt+37DlY3RM=	\N	f	2fda	fjads	fkdjal	dfs@fd.clcc	f	t	2017-06-27 22:37:18.010999+03	
10	pbkdf2_sha256$36000$yy7UdLyOK5CX$hZ+kvFBMEVQSXCIdVkciuGFD9KolblVNTFvPLJ506dA=	\N	f	123	dfs	fdsa	fdsa@fdsafdsdf.co	f	t	2017-06-27 22:46:55.205224+03	
11	pbkdf2_sha256$36000$1Ot8XqUkneeZ$FKymkuNYRtrrhkUSMAxkQSUva2cG38G7nb1x/wmRGgg=	\N	f	fdajs12f	fa	fa	dfa@ddddd.co	f	t	2017-06-27 22:48:11.675802+03	
8	pbkdf2_sha256$36000$uGH8kaOGSlPU$2Qedr88VChTT0rHm+Whr9SruxIsH1v3VUl77Tvys7Jk=	2017-06-27 22:54:17.417021+03	f	kek	kek	pek	lel@pek.kek	f	t	2017-06-27 22:34:00.3945+03	
\.


--
-- Data for Name: core_user_groups; Type: TABLE DATA; Schema: public; Owner: admin_c_blog
--

COPY core_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: core_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_c_blog
--

SELECT pg_catalog.setval('core_user_groups_id_seq', 1, false);


--
-- Name: core_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_c_blog
--

SELECT pg_catalog.setval('core_user_id_seq', 11, true);


--
-- Data for Name: core_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: admin_c_blog
--

COPY core_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: core_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_c_blog
--

SELECT pg_catalog.setval('core_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: admin_c_blog
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_c_blog
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: admin_c_blog
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	core	user
2	admin	logentry
3	auth	permission
4	auth	group
5	contenttypes	contenttype
6	sessions	session
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_c_blog
--

SELECT pg_catalog.setval('django_content_type_id_seq', 6, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: admin_c_blog
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2017-06-27 19:41:48.833054+03
2	contenttypes	0002_remove_content_type_name	2017-06-27 19:41:48.84302+03
3	auth	0001_initial	2017-06-27 19:41:48.895868+03
4	auth	0002_alter_permission_name_max_length	2017-06-27 19:41:48.905118+03
5	auth	0003_alter_user_email_max_length	2017-06-27 19:41:48.912192+03
6	auth	0004_alter_user_username_opts	2017-06-27 19:41:48.920066+03
7	auth	0005_alter_user_last_login_null	2017-06-27 19:41:48.927789+03
8	auth	0006_require_contenttypes_0002	2017-06-27 19:41:48.930186+03
9	auth	0007_alter_validators_add_error_messages	2017-06-27 19:41:48.937605+03
10	auth	0008_alter_user_username_max_length	2017-06-27 19:41:48.947758+03
11	core	0001_initial	2017-06-27 19:41:48.995712+03
12	admin	0001_initial	2017-06-27 19:41:49.030851+03
13	admin	0002_logentry_remove_auto_add	2017-06-27 19:41:49.047351+03
14	sessions	0001_initial	2017-06-27 19:41:49.059056+03
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_c_blog
--

SELECT pg_catalog.setval('django_migrations_id_seq', 14, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: admin_c_blog
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
88junb1sseoh4y9jiip2cfsul1kevrsi	OGY4OGRiNmM5MTU5NmNiMzc2NDk5N2FmMjFlN2UyMzNmMDMxMmJiNTp7fQ==	2017-07-11 21:44:58.534589+03
cup2vq6q19d4wjtx5hfulhhv3r9k4j8a	OGY4OGRiNmM5MTU5NmNiMzc2NDk5N2FmMjFlN2UyMzNmMDMxMmJiNTp7fQ==	2017-07-11 21:45:16.560931+03
gti4co1gg30c8gn59zqkgudpbeky2fc2	OGY4OGRiNmM5MTU5NmNiMzc2NDk5N2FmMjFlN2UyMzNmMDMxMmJiNTp7fQ==	2017-07-11 22:09:42.554668+03
yv2i78aivqje7kx0bxom0pa2in2xstb8	NjM2MWZkNTEzYzUyY2I5ZGE0OGI1ZTYxY2QzOGM0NzQ0OGRiZWQ5Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNzE0M2I1MmRjMjk5MzM5MzhiYTAxYjA0NDBmZTJmODEwZTRhZWIyIn0=	2017-07-11 22:11:52.594122+03
gl1rdoctq59btd8mzkuycwuo5oaznl72	OGY4OGRiNmM5MTU5NmNiMzc2NDk5N2FmMjFlN2UyMzNmMDMxMmJiNTp7fQ==	2017-07-11 22:20:37.695646+03
d726isljz8xildfki7ha32sesvzjot86	OGY4OGRiNmM5MTU5NmNiMzc2NDk5N2FmMjFlN2UyMzNmMDMxMmJiNTp7fQ==	2017-07-11 22:47:30.9392+03
\.


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: admin_c_blog
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: admin_c_blog
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin_c_blog
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: admin_c_blog
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: admin_c_blog
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: admin_c_blog
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: core_user_groups core_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: admin_c_blog
--

ALTER TABLE ONLY core_user_groups
    ADD CONSTRAINT core_user_groups_pkey PRIMARY KEY (id);


--
-- Name: core_user_groups core_user_groups_user_id_group_id_c82fcad1_uniq; Type: CONSTRAINT; Schema: public; Owner: admin_c_blog
--

ALTER TABLE ONLY core_user_groups
    ADD CONSTRAINT core_user_groups_user_id_group_id_c82fcad1_uniq UNIQUE (user_id, group_id);


--
-- Name: core_user core_user_pkey; Type: CONSTRAINT; Schema: public; Owner: admin_c_blog
--

ALTER TABLE ONLY core_user
    ADD CONSTRAINT core_user_pkey PRIMARY KEY (id);


--
-- Name: core_user_user_permissions core_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin_c_blog
--

ALTER TABLE ONLY core_user_user_permissions
    ADD CONSTRAINT core_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: core_user_user_permissions core_user_user_permissions_user_id_permission_id_73ea0daa_uniq; Type: CONSTRAINT; Schema: public; Owner: admin_c_blog
--

ALTER TABLE ONLY core_user_user_permissions
    ADD CONSTRAINT core_user_user_permissions_user_id_permission_id_73ea0daa_uniq UNIQUE (user_id, permission_id);


--
-- Name: core_user core_user_username_key; Type: CONSTRAINT; Schema: public; Owner: admin_c_blog
--

ALTER TABLE ONLY core_user
    ADD CONSTRAINT core_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: admin_c_blog
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: admin_c_blog
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: admin_c_blog
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: admin_c_blog
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: admin_c_blog
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: admin_c_blog
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: admin_c_blog
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: admin_c_blog
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: admin_c_blog
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission USING btree (content_type_id);


--
-- Name: core_user_groups_group_id_fe8c697f; Type: INDEX; Schema: public; Owner: admin_c_blog
--

CREATE INDEX core_user_groups_group_id_fe8c697f ON core_user_groups USING btree (group_id);


--
-- Name: core_user_groups_user_id_70b4d9b8; Type: INDEX; Schema: public; Owner: admin_c_blog
--

CREATE INDEX core_user_groups_user_id_70b4d9b8 ON core_user_groups USING btree (user_id);


--
-- Name: core_user_user_permissions_permission_id_35ccf601; Type: INDEX; Schema: public; Owner: admin_c_blog
--

CREATE INDEX core_user_user_permissions_permission_id_35ccf601 ON core_user_user_permissions USING btree (permission_id);


--
-- Name: core_user_user_permissions_user_id_085123d3; Type: INDEX; Schema: public; Owner: admin_c_blog
--

CREATE INDEX core_user_user_permissions_user_id_085123d3 ON core_user_user_permissions USING btree (user_id);


--
-- Name: core_user_username_36e4f7f7_like; Type: INDEX; Schema: public; Owner: admin_c_blog
--

CREATE INDEX core_user_username_36e4f7f7_like ON core_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: admin_c_blog
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: admin_c_blog
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: admin_c_blog
--

CREATE INDEX django_session_expire_date_a5c62663 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: admin_c_blog
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: admin_c_blog
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: admin_c_blog
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: admin_c_blog
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_user_groups core_user_groups_group_id_fe8c697f_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: admin_c_blog
--

ALTER TABLE ONLY core_user_groups
    ADD CONSTRAINT core_user_groups_group_id_fe8c697f_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_user_groups core_user_groups_user_id_70b4d9b8_fk_core_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin_c_blog
--

ALTER TABLE ONLY core_user_groups
    ADD CONSTRAINT core_user_groups_user_id_70b4d9b8_fk_core_user_id FOREIGN KEY (user_id) REFERENCES core_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_user_user_permissions core_user_user_permi_permission_id_35ccf601_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: admin_c_blog
--

ALTER TABLE ONLY core_user_user_permissions
    ADD CONSTRAINT core_user_user_permi_permission_id_35ccf601_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_user_user_permissions core_user_user_permissions_user_id_085123d3_fk_core_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin_c_blog
--

ALTER TABLE ONLY core_user_user_permissions
    ADD CONSTRAINT core_user_user_permissions_user_id_085123d3_fk_core_user_id FOREIGN KEY (user_id) REFERENCES core_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: admin_c_blog
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_core_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin_c_blog
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_core_user_id FOREIGN KEY (user_id) REFERENCES core_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

