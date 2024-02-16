--
-- PostgreSQL database dump
--

-- Dumped from database version 14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)

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
-- Name: roles; Type: TABLE; Schema: public; Owner: nourish
--

CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.roles OWNER TO nourish;

--
-- Name: user_roles; Type: TABLE; Schema: public; Owner: nourish
--

CREATE TABLE public.user_roles (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "roleId" integer NOT NULL,
    "userId" integer NOT NULL
);


ALTER TABLE public.user_roles OWNER TO nourish;

--
-- Name: users; Type: TABLE; Schema: public; Owner: nourish
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    password character varying(255),
    "threadID" character varying(255),
    subscription jsonb,
    "freeAttempts" smallint,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.users OWNER TO nourish;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: nourish
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO nourish;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nourish
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: nourish
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: nourish
--

COPY public.roles (id, name, "createdAt", "updatedAt") FROM stdin;
1	user	2024-01-12 17:41:03.415+00	2024-01-12 17:41:03.415+00
2	admin	2024-01-12 17:41:03.415+00	2024-01-12 17:41:03.415+00
\.


--
-- Data for Name: user_roles; Type: TABLE DATA; Schema: public; Owner: nourish
--

COPY public.user_roles ("createdAt", "updatedAt", "roleId", "userId") FROM stdin;
2024-01-12 17:41:33.925+00	2024-01-12 17:41:33.925+00	2	1
2024-01-14 23:01:08.857+00	2024-01-14 23:01:08.857+00	1	2
2024-01-15 01:02:48.484+00	2024-01-15 01:02:48.484+00	1	3
2024-01-15 23:22:49.503+00	2024-01-15 23:22:49.503+00	1	4
2024-01-16 04:45:19.771+00	2024-01-16 04:45:19.771+00	1	5
2024-01-16 06:11:42.825+00	2024-01-16 06:11:42.825+00	1	6
2024-01-16 22:37:33.879+00	2024-01-16 22:37:33.879+00	1	7
2024-01-18 04:58:15.155+00	2024-01-18 04:58:15.155+00	1	8
2024-01-18 15:10:30.505+00	2024-01-18 15:10:30.505+00	1	9
2024-01-18 15:16:43.383+00	2024-01-18 15:16:43.383+00	1	10
2024-01-24 01:02:49.803+00	2024-01-24 01:02:49.803+00	1	11
2024-01-24 01:04:24.629+00	2024-01-24 01:04:24.629+00	1	12
2024-01-24 01:06:03.343+00	2024-01-24 01:06:03.343+00	1	13
2024-01-24 01:09:27.477+00	2024-01-24 01:09:27.477+00	1	14
2024-01-24 01:10:47.627+00	2024-01-24 01:10:47.627+00	1	15
2024-01-24 01:13:06.25+00	2024-01-24 01:13:06.25+00	1	16
2024-01-24 01:13:34.729+00	2024-01-24 01:13:34.729+00	1	17
2024-01-24 01:13:49.393+00	2024-01-24 01:13:49.393+00	1	18
2024-01-24 01:14:26.211+00	2024-01-24 01:14:26.211+00	1	19
2024-01-24 01:17:24.482+00	2024-01-24 01:17:24.482+00	1	20
2024-01-24 01:18:09.597+00	2024-01-24 01:18:09.597+00	1	21
2024-01-24 01:19:25.976+00	2024-01-24 01:19:25.976+00	1	22
2024-01-24 01:20:39.378+00	2024-01-24 01:20:39.378+00	1	23
2024-01-24 01:23:33.053+00	2024-01-24 01:23:33.053+00	1	24
2024-01-24 01:26:04.288+00	2024-01-24 01:26:04.288+00	1	25
2024-01-24 01:32:53.036+00	2024-01-24 01:32:53.036+00	1	26
2024-01-24 01:35:39.048+00	2024-01-24 01:35:39.048+00	1	27
2024-01-24 01:41:39.222+00	2024-01-24 01:41:39.222+00	1	28
2024-01-24 01:49:56.255+00	2024-01-24 01:49:56.255+00	1	29
2024-01-24 01:52:22.378+00	2024-01-24 01:52:22.378+00	1	30
2024-01-24 01:52:59.78+00	2024-01-24 01:52:59.78+00	1	31
2024-01-24 01:58:53.997+00	2024-01-24 01:58:53.997+00	1	32
2024-01-24 02:05:24.723+00	2024-01-24 02:05:24.723+00	1	33
2024-01-24 02:08:25.416+00	2024-01-24 02:08:25.416+00	1	34
2024-01-24 02:11:01.806+00	2024-01-24 02:11:01.806+00	1	35
2024-01-24 02:13:40.599+00	2024-01-24 02:13:40.599+00	1	36
2024-01-24 02:16:59.264+00	2024-01-24 02:16:59.264+00	1	37
2024-01-24 02:18:40.814+00	2024-01-24 02:18:40.814+00	1	38
2024-01-24 02:20:22.525+00	2024-01-24 02:20:22.525+00	1	39
2024-01-24 02:24:35.448+00	2024-01-24 02:24:35.448+00	1	40
2024-01-24 02:26:09.098+00	2024-01-24 02:26:09.098+00	1	41
2024-01-24 02:31:21.854+00	2024-01-24 02:31:21.854+00	1	42
2024-01-24 02:49:32.534+00	2024-01-24 02:49:32.534+00	1	43
2024-01-24 02:54:32.378+00	2024-01-24 02:54:32.378+00	1	44
2024-01-24 02:59:37.289+00	2024-01-24 02:59:37.289+00	1	45
2024-01-24 03:03:27.699+00	2024-01-24 03:03:27.699+00	1	46
2024-01-24 03:03:28.868+00	2024-01-24 03:03:28.868+00	1	47
2024-01-24 03:05:53.563+00	2024-01-24 03:05:53.563+00	1	48
2024-01-24 03:12:26.301+00	2024-01-24 03:12:26.301+00	1	49
2024-01-24 03:17:07.353+00	2024-01-24 03:17:07.353+00	1	50
2024-01-24 03:29:38.795+00	2024-01-24 03:29:38.795+00	1	51
2024-01-24 03:30:40.754+00	2024-01-24 03:30:40.754+00	1	52
2024-01-24 03:51:22.633+00	2024-01-24 03:51:22.633+00	1	53
2024-01-24 03:54:31.08+00	2024-01-24 03:54:31.08+00	1	54
2024-01-24 04:00:51.302+00	2024-01-24 04:00:51.302+00	1	55
2024-01-24 04:01:22.794+00	2024-01-24 04:01:22.794+00	1	56
2024-01-24 04:17:44.223+00	2024-01-24 04:17:44.223+00	1	57
2024-01-24 04:22:00.174+00	2024-01-24 04:22:00.174+00	1	58
2024-01-24 04:31:43.103+00	2024-01-24 04:31:43.103+00	1	59
2024-01-24 04:51:09.742+00	2024-01-24 04:51:09.742+00	1	60
2024-01-24 05:13:18.324+00	2024-01-24 05:13:18.324+00	1	61
2024-01-24 05:40:27.585+00	2024-01-24 05:40:27.585+00	1	62
2024-01-24 05:55:39.741+00	2024-01-24 05:55:39.741+00	1	63
2024-01-24 06:28:24.766+00	2024-01-24 06:28:24.766+00	1	64
2024-01-24 06:46:28.233+00	2024-01-24 06:46:28.233+00	1	65
2024-01-24 06:50:45.86+00	2024-01-24 06:50:45.86+00	1	66
2024-01-24 08:16:10.387+00	2024-01-24 08:16:10.387+00	1	67
2024-01-24 08:33:38.838+00	2024-01-24 08:33:38.838+00	1	68
2024-01-24 08:42:11.49+00	2024-01-24 08:42:11.49+00	1	69
2024-01-24 09:33:50.665+00	2024-01-24 09:33:50.665+00	1	70
2024-01-24 11:10:50.216+00	2024-01-24 11:10:50.216+00	1	71
2024-01-24 12:03:21.272+00	2024-01-24 12:03:21.272+00	1	72
2024-01-24 12:11:13.995+00	2024-01-24 12:11:13.995+00	1	73
2024-01-24 12:12:46.497+00	2024-01-24 12:12:46.497+00	1	74
2024-01-24 12:20:29.953+00	2024-01-24 12:20:29.953+00	1	75
2024-01-24 12:44:24.081+00	2024-01-24 12:44:24.081+00	1	76
2024-01-24 13:20:42.002+00	2024-01-24 13:20:42.002+00	1	77
2024-01-24 13:45:34.77+00	2024-01-24 13:45:34.77+00	1	78
2024-01-24 13:57:41.38+00	2024-01-24 13:57:41.38+00	1	79
2024-01-24 14:06:58.607+00	2024-01-24 14:06:58.607+00	1	80
2024-01-24 15:00:05.437+00	2024-01-24 15:00:05.437+00	1	81
2024-01-24 15:45:20.772+00	2024-01-24 15:45:20.772+00	1	82
2024-01-24 15:50:15.282+00	2024-01-24 15:50:15.282+00	1	83
2024-01-24 16:02:41.432+00	2024-01-24 16:02:41.432+00	1	84
2024-01-24 17:38:22.239+00	2024-01-24 17:38:22.239+00	1	85
2024-01-24 18:01:22.344+00	2024-01-24 18:01:22.344+00	1	86
2024-01-24 18:45:01.866+00	2024-01-24 18:45:01.866+00	1	87
2024-01-24 19:43:35.208+00	2024-01-24 19:43:35.208+00	1	88
2024-01-24 20:21:54.048+00	2024-01-24 20:21:54.048+00	1	89
2024-01-24 20:23:22.673+00	2024-01-24 20:23:22.673+00	1	90
2024-01-24 20:31:07.486+00	2024-01-24 20:31:07.486+00	1	91
2024-01-24 20:53:23.442+00	2024-01-24 20:53:23.442+00	1	92
2024-01-24 20:56:13.045+00	2024-01-24 20:56:13.045+00	1	93
2024-01-24 21:11:46.672+00	2024-01-24 21:11:46.672+00	1	94
2024-01-24 21:42:20.963+00	2024-01-24 21:42:20.963+00	1	95
2024-01-24 21:56:52.305+00	2024-01-24 21:56:52.305+00	1	96
2024-01-24 22:00:49.051+00	2024-01-24 22:00:49.051+00	1	97
2024-01-24 22:11:40.303+00	2024-01-24 22:11:40.303+00	1	98
2024-01-24 22:22:24.509+00	2024-01-24 22:22:24.509+00	1	99
2024-01-24 22:54:55.047+00	2024-01-24 22:54:55.047+00	1	100
2024-01-25 01:15:02.657+00	2024-01-25 01:15:02.657+00	1	101
2024-01-25 03:01:23.959+00	2024-01-25 03:01:23.959+00	1	102
2024-01-25 05:32:35.511+00	2024-01-25 05:32:35.511+00	1	103
2024-01-25 06:15:30.149+00	2024-01-25 06:15:30.149+00	1	104
2024-01-25 08:11:13.8+00	2024-01-25 08:11:13.8+00	1	105
2024-01-25 13:16:38.298+00	2024-01-25 13:16:38.298+00	1	106
2024-01-25 15:42:44.984+00	2024-01-25 15:42:44.984+00	1	107
2024-01-25 15:55:57.669+00	2024-01-25 15:55:57.669+00	1	108
2024-01-26 03:01:22.708+00	2024-01-26 03:01:22.708+00	1	109
2024-01-26 22:50:48.658+00	2024-01-26 22:50:48.658+00	1	110
2024-01-27 04:30:57.88+00	2024-01-27 04:30:57.88+00	1	111
2024-01-27 21:10:50.117+00	2024-01-27 21:10:50.117+00	1	112
2024-01-29 03:13:57.562+00	2024-01-29 03:13:57.562+00	1	113
2024-01-29 04:34:53.052+00	2024-01-29 04:34:53.052+00	1	114
2024-01-29 05:24:53.706+00	2024-01-29 05:24:53.706+00	1	115
2024-01-29 17:07:52.65+00	2024-01-29 17:07:52.65+00	1	116
2024-01-30 00:13:23.822+00	2024-01-30 00:13:23.822+00	1	117
2024-01-31 15:24:29.637+00	2024-01-31 15:24:29.637+00	1	118
2024-02-01 16:13:54.759+00	2024-02-01 16:13:54.759+00	1	119
2024-02-03 00:02:45.759+00	2024-02-03 00:02:45.759+00	1	120
2024-02-03 06:27:35.37+00	2024-02-03 06:27:35.37+00	1	121
2024-02-05 21:02:22.923+00	2024-02-05 21:02:22.923+00	1	122
2024-02-09 04:21:34.546+00	2024-02-09 04:21:34.546+00	1	123
2024-02-14 15:25:24.115+00	2024-02-14 15:25:24.115+00	1	124
2024-02-16 00:25:55.537+00	2024-02-16 00:25:55.537+00	1	125
2024-02-16 01:07:13.429+00	2024-02-16 01:07:13.429+00	1	126
2024-02-16 06:51:41.604+00	2024-02-16 06:51:41.604+00	1	127
2024-02-16 09:12:17.194+00	2024-02-16 09:12:17.194+00	1	128
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: nourish
--

COPY public.users (id, username, email, password, "threadID", subscription, "freeAttempts", "createdAt", "updatedAt") FROM stdin;
7	Shelley	shelleyeggins@hotmail.com	$2a$08$9fEd7UZZpkUQs.CN2h9klOHP7jJE.QqhNbJV.hjLljC9U5QPTwYuC	thread_ke7GfI3ig0ti7Kub3ZYykHA3	{"subscription": null}	0	2024-01-16 22:37:33.873+00	2024-01-17 04:50:03.6+00
8	Patricia	pipelpipel@hotmail.com	$2a$08$gkEAhb/1JnE3ox7Q2.ozqeMg1fC4YWEqgSeJTQ5V0mIQqPmWrxsI6	thread_j5OU6jrz0vXGqgUqp3MaTAMZ	{"subscription": null}	10	2024-01-18 04:58:15.144+00	2024-01-18 04:58:15.144+00
18	s.hortsman3@gmail.com	s.hortsman3@gmail.com	$2a$08$./3shSL8QyNoqq5cPBeXe.SUK5h6GX7oO8TuVnoJVoYxwjPWeI3.W	thread_eQLo2i1aWy4Zqou4IvWGmI9x	{"subscription": null}	8	2024-01-24 01:13:49.388+00	2024-01-24 01:16:44.592+00
11	Nmurach1991@gmail.com	Nmurach1991@gmail.com	$2a$08$j6Dk5oG4t6sIJcu9bwJt/O2cvIU4MxGsk66ZMgTCOd240XfnS.me6	thread_aOoYt9GeYVMQcpiKSVDCKjYz	{"subscription": null}	6	2024-01-24 01:02:49.787+00	2024-01-24 01:09:24.101+00
10	Dev	devstar1028@gmail.com	$2a$08$f/oa6w1LEB0rKoieStrZLODsnxbqmrzrZ03JFNA9VuYjWt/YTaxUe	thread_34xgdBZkCgGynWRA0UF08Yr5	{"sessionId": "cs_live_a1h2kjxRTYZpiMhUdMiqai8DpVUpvxkwsjqzauM2BXTgiDMn3VW8muTo6H"}	9	2024-01-18 15:16:43.378+00	2024-01-26 13:24:07.992+00
2	Gabemtesi	gatesr2@gmail.com	$2a$08$.DmpQaHS/O6zQ4owY9k8oe5fnqEqyZFP8fPn6xUpsv7ciTp/5mnDC	thread_GRbCNYfvXkk3R6a90OEHCFGi	{"planId": "price_1OXYV9IZvjY5zLCnK0cs3ESn", "planType": "basic", "sessionId": null, "planEndDate": "2024-01-21", "planDuration": 7, "trialEndDate": "2024-01-21", "planStartDate": "2024-01-14", "subscriptionID": "sub_1OYchcIZvjY5zLCnaARVg7f6"}	10	2024-01-14 23:01:08.846+00	2024-01-14 23:02:58.633+00
12	johnstonni	johnstonnicoleee@gmail.com	$2a$08$0SK1HY0ZBj.gDTIGqcdolu6wujL7MEQz8lNU1euLE4NBg6Vr8wpgW	thread_FgO5g5RPcT7c435DEFPn95BR	{"subscription": null}	0	2024-01-24 01:04:24.624+00	2024-01-29 11:50:41.196+00
3	johnprince	jpbp1997@gmail.com	$2a$08$xwgF2zlqHXEPA21q.UJpWehqLo.XfXTs0vf8oW/HC7wx/NbGasDNa	thread_fZ4r3HejmyuZXdTb0buB4n4D	{"subscription": null}	5	2024-01-15 01:02:48.48+00	2024-01-15 01:06:52.361+00
23	hrivera	rivera.haileye@gmail.com	$2a$08$GqITM85ocNhiILLEr7eAhOBYLdMF3nEtSda7KuV929RiOGHvOFlcO	thread_bcBomxM5REcanOxiPrTGGMEQ	{"subscription": null}	7	2024-01-24 01:20:39.373+00	2024-01-24 01:23:39.127+00
14	Diana_Loc	mcdanielsdiana@gmail.com	$2a$08$xFfOXad3l37mnk2EtYYVmua.tM2w2WkoPy.D.mvcpqrqAU4GsSHv6	thread_xIqfwYvWEyBd0pH1v2Lx5Qng	{"subscription": null}	7	2024-01-24 01:09:27.472+00	2024-01-24 01:12:46.031+00
20	Nat97	nathy.mejia1797@gmail.com	$2a$08$XF766v69Ebo1S3d9vG92CukHhKTUPa.n83pt1bRI1/6Bc2UKrYbgC	thread_1yvxp4GQ8kmyeBHLWCh6loSJ	{"subscription": null}	0	2024-01-24 01:17:24.477+00	2024-01-30 03:28:45.339+00
5	tamtam	tam@nourishednaturalhealth.com	$2a$08$2T0En2XjGuV7Wyhsh0Gjuu6VRlZHDyscajpnNKQ/z978y0qO4pdMO	thread_2Y8CVXark1QkYksgtWTh6Bsj	{"subscription": null}	0	2024-01-16 04:45:19.765+00	2024-01-16 05:05:31.829+00
6	test	test@nourishednturalhealth.com	$2a$08$azv6mi7UEElzf5i7lWnVIupfe17ftuywHmpCs9oXGNOGF0D/Hpjua	thread_84uskx89nwiumRumJ2ME1Di0	{"subscription": null}	10	2024-01-16 06:11:42.82+00	2024-01-16 06:11:42.82+00
4	asdsa	adss@gmail.com	$2a$08$I80xNVxTDOuTp3foRY0vaeu96dyRfNv6D97k.OUluC6ETmXHDIcTG	thread_B5BKfHcSGxewCaBjAcPLU1qp	{"subscription": null}	0	2024-01-15 23:22:49.488+00	2024-01-15 23:27:12.259+00
9	adamelmer	adamelmer0078@gmail.com	$2a$08$35hPFLg6R.K05k0Yt4yUBOT8CmxdkdXnCuU1R4/bCtHjTQw1dshYK	thread_0UjrrmvIrZNuxsxe8WMO0Jx2	{"sessionId": "cs_live_a11fKeyaJ1rtrpjtuJPh8uEFokW6fxL0wVoXNKooiBjUdhPBb9Xd9Dnt0N"}	0	2024-01-18 15:10:30.498+00	2024-01-29 16:57:08.585+00
15	welch1042@gmail.com	welch1042@gmail.com	$2a$08$b7iNNdTYJqjbL2Yol/F4XuWD.CSfg8SDagJbw9hyI4In8X2gjjaxK	thread_OWfWG0sp2ShaAUaILsE8LfbL	{"subscription": null}	7	2024-01-24 01:10:47.622+00	2024-01-24 01:13:48.606+00
13	deserig	deserig@gmail.com	$2a$08$CbZKtG/5y7NPOfqPKByBG./ltssXtZpgX16//Oqjf7wCWrLa6tm/a	thread_SELZumHP0yfKONauT8HEVY2i	{"subscription": null}	10	2024-01-24 01:06:03.338+00	2024-01-24 01:06:03.338+00
19	rachel.a.fegan@gmail.com	rachel.a.fegan@gmail.com	$2a$08$CmPPMVbFy3FaYpyqM7vOnea6ASuLlrP2Y3aUzUctR7U/i9OvnDlMm	thread_3w4THRMRJoDhKXGH6DkWkFKF	{"subscription": null}	9	2024-01-24 01:14:26.207+00	2024-01-24 01:14:53.94+00
25	Ang	angie.smutylo@gmail.com	$2a$08$3QqA.1plL14qzNJ6DeuNSe3XKEgHPyu41iQsnK5o1hnrFu.ayUbli	thread_AouFU3pATT4voumpbhkkxT7v	{"subscription": null}	10	2024-01-24 01:26:04.284+00	2024-01-24 01:26:04.284+00
17	alicen.divita@gmail.com	alicen.divita@gmail.com	$2a$08$eeGTETsx1D.FPF5XacWQOe00XYgZa2874g2S2ShZukTCtm0Jp1M8y	thread_qgJDSkqZs9AW5gvcHHFYX83T	{"subscription": null}	9	2024-01-24 01:13:34.723+00	2024-01-24 01:15:09.796+00
22	Elisabeth	elisabethgarnold@gmail.com	$2a$08$sHeVFQQz7C52tH7QCO1Qo.GrtOgqGw5gngVNnBoA43bsTMdgcyJD2	thread_3Rj3IKCo53vHEdb8vsfCYsLH	{"subscription": null}	9	2024-01-24 01:19:25.972+00	2024-01-24 01:21:06.312+00
31	andrwab70	ababino33@hotmail.com	$2a$08$lOVFGgpxJ85m2YpsVpq1TOv7FBSadlPixybDV2QIgFPY.wB0cjrPK	thread_WISovAnj4UNuS3tvL7g86mCq	{"subscription": null}	9	2024-01-24 01:52:59.776+00	2024-01-24 01:54:32.755+00
24	Eaajay	eboni.alexandria@yahoo.com	$2a$08$jARXqV4Aknl1ypPjVpk9iO8lcS6HxOG9fJi.PDXMrJNmU8fBCHVOG	thread_FJKDScoeSoxkHiLvC57IxQgt	{"subscription": null}	6	2024-01-24 01:23:33.049+00	2024-01-24 01:27:50.582+00
21	Francesbeck	Francesbeck050@gmail.com	$2a$08$9021WRWXZan6x5joZw6ZFevQNp4GJ2UESqb.rkwYaBJFKk6TP06QC	thread_bECu8zE5kBDRhYx7hz65oiN1	{"subscription": null}	7	2024-01-24 01:18:09.592+00	2024-01-24 01:22:04.932+00
27	Jonesie	ejones1110@yahoo.com	$2a$08$rAUT1WIQMllLTxxEx6TO6.EdL.RZJRJ2Zh8dknN3RW/v0gpoHFjxq	thread_KQOqYVFSFiR0DtXgwibewM0s	{"subscription": null}	7	2024-01-24 01:35:39.044+00	2024-01-24 01:37:53.033+00
34	CBarnett0496@gmail.com	CBarnett0496@gmail.com	$2a$08$V.LHomRAi56QYFrOr.SEpeXQ05ua6U97a7cd/wG.9Fq5Cz9ybVfSS	thread_tapPuxcnEMmODKWD6PwU9DDk	{"subscription": null}	4	2024-01-24 02:08:25.409+00	2024-01-24 02:15:07.113+00
26	Partheia	queenmarbear@yahoo.com	$2a$08$tvDCOyc.RpYpd7Xp3ANYi.b6.Y//UgyMVIbRr8WjM.ECpvk7d2sCe	thread_gZf6mY1gp0IGHf8Euc8lIJXQ	{"subscription": null}	6	2024-01-24 01:32:53.031+00	2024-01-24 01:45:59.082+00
30	Ashmassny	abmw4c@gmail.com	$2a$08$tmFgRIqW8ACT0kySGknatecxYGWO9urKp7CZI44EvlXttZGURImMO	thread_VBpPLFxn3SYxPVtnd9x1QSQa	{"subscription": null}	7	2024-01-24 01:52:22.373+00	2024-01-24 01:56:33.49+00
28	nita_32@aol.com	nita_32@aol.com	$2a$08$DkBZjrizfVVprR9PuAneGOh3DtrixdPJAU9ym0miaKbC63Nk4pPM6	thread_D0NsnRQDnuvLtQLURIyqNRrh	{"subscription": null}	2	2024-01-24 01:41:39.217+00	2024-01-24 01:56:58.634+00
33	ezinneaniagu	aeziflower@gmail.com	$2a$08$y9r5vIOgBEyEUlZS6YEpLOun6VfXquYrmrC5beFWq/aQ4IoEgSbr2	thread_sXgYVl8aHnX1xodINvCejBkH	{"subscription": null}	6	2024-01-24 02:05:24.718+00	2024-01-24 02:10:42.524+00
29	jennyriv	JRIVIERE992@HOTMAIL.COM	$2a$08$9hSS873s8MXpQKY1InSWAOyftNyzI1Z7hNYtMEIilYgeMn1B0UYK.	thread_zE7uyKJhGEfOrFtcQiTZPn3H	{"subscription": null}	6	2024-01-24 01:49:56.25+00	2024-01-24 02:12:08.594+00
36	Elizabean	elizabethmalkiyel@gmail.com	$2a$08$fSW87Q/avuIG4Ehv6dv5o.uuLYOzvJqmbjJ/E6sFL3QlmDgk6GJ/q	thread_tYCTY9sW0Tzfiqas2OIPr3Af	{"subscription": null}	8	2024-01-24 02:13:40.595+00	2024-01-24 02:32:05.08+00
16	Seribii1o1	marounchristina@gmail.com	$2a$08$WwDjPzK1ZgVMIbdj6vpA1ewC00LooXwoKdhdfnVjc/mz1g9nH4qM.	thread_JbYY2OfgbcM8Q9epMRCyC5AM	{"subscription": null}	4	2024-01-24 01:13:06.246+00	2024-01-24 02:15:16.847+00
37	jeannealana@gmail.com	jeannealana@gmail.com	$2a$08$737tzV/shRHBolZY978z7u1HbJuFC/v3zP5TzWoK/ahmjkdEWw54i	thread_6Q4KqGEgLOaGsqVIAHZGK1g5	{"subscription": null}	2	2024-01-24 02:16:59.259+00	2024-01-24 02:29:57.886+00
32	Daphnemaaike	daphnendorrestein@gmail.com	$2a$08$vUYSysqj2urI5khAG2jEEOXx3VlhFQRVpVjK2ZB1Fnh9v/jn50Tlm	thread_MClybpPOAvS6h7pHeArcbqpv	{"subscription": null}	7	2024-01-24 01:58:53.992+00	2024-01-24 02:28:34.098+00
35	bugsybryant@msn.com	bugsybryant@msn.com	$2a$08$fkWxjV3Nz90dKkqNSqxK5.WGjqUvYo6KUBimckl6M5/ujKBy2n5iK	thread_MEAq0vLQB7P55IDCHn5CzqyR	{"subscription": null}	5	2024-01-24 02:11:01.802+00	2024-01-24 02:17:09.428+00
59	sgoodman1990@gmail.com	sgoodman1990@gmail.com	$2a$08$HNtOsnTzudwNx87AzBGTBeh/bHQ/WYKDTGsLv9nxWRmOACkwjutLS	thread_wI8icBaO1w8nIaPWqbJtcm6B	{"subscription": null}	10	2024-01-24 04:31:43.099+00	2024-01-24 04:31:43.099+00
71	ffaban	ffabandrea@gmail.com	$2a$08$vuYlZAy4iZ7wH1RvFuNX4.DEyCGwQL5LyC5iy2cxbaa16T43brm36	thread_kphYTHM0EriCcmjJHohyxa2t	{"planId": "price_1OXYV9IZvjY5zLCnK0cs3ESn", "planType": "basic", "sessionId": null, "planEndDate": "2024-02-13", "planDuration": 7, "trialEndDate": "2024-02-13", "planStartDate": "2024-02-06", "subscriptionID": "sub_1OgpwcIZvjY5zLCnPNTRpW2x"}	9	2024-01-24 11:10:50.204+00	2024-02-06 14:48:27.709+00
64	Simona	simosign@yahoo.com	$2a$08$l/m9W6EXMr0qs2C9n/OsAOtc2iexgK3JiA9RA7nTBROrBkF3wD5dK	thread_NQZrjELZlsu3CBcvRhgEiPMy	{"subscription": null}	10	2024-01-24 06:28:24.757+00	2024-01-24 06:28:24.757+00
38	kbrow	kyra.duble@gmail.com	$2a$08$puxhqSed9uYx1a9v.lY2kOuWPWms/SENoZ4gn.xYSzilDFDmjRFkC	thread_ipiMzjrG1obzvwtZzvnXqicf	{"subscription": null}	2	2024-01-24 02:18:40.809+00	2024-01-29 03:06:01.643+00
52	jmacrae3@aol.com	jmacrae3@aol.com	$2a$08$nk.DVxKK.cZX/M0XJidHeeHNy1hC76kOOW2qshWLuRb63IfyxhnhO	thread_KvJlAjNpXrx6CSUXLHXizrkR	{"subscription": null}	10	2024-01-24 03:30:40.747+00	2024-01-24 03:30:40.747+00
51	hhbenson@gmail.com	hhbenson@gmail.com	$2a$08$Ga4mrWw5ytGcHph5ARaPrukDQom8BteacRWq1lHTC6wqOCYbo4J/6	thread_Rj8mbb90GcxVZgGgdyDBfeMT	{"subscription": null}	8	2024-01-24 03:29:38.79+00	2024-01-24 03:31:24.81+00
39	em3henderson@gmail.com	em3henderson@gmail.com	$2a$08$km8DnQakzephpey1RtRGjelH3vJ.n/NK3u5.Xp/tUXgl7nnZkcbW6	thread_xlUWQdEs0giw5fuyCa0LVhCR	{"subscription": null}	5	2024-01-24 02:20:22.521+00	2024-01-24 02:24:21.834+00
41	alemerlo9	alemerlo.nutri@gmail.com	$2a$08$BZS124RcdM77ePdhnHFJQ./QJrPJgWFEmltZ3wEDxU9OfSD2f0pkG	thread_MB0Jfrd1Vgn8h1p8AULvYvSJ	{"subscription": null}	10	2024-01-24 02:26:09.094+00	2024-01-24 02:26:09.094+00
50	EmpoweredSoul	deann.jensen@ymail.com	$2a$08$Tn4mIEgvIHm6GCBwr7egR.2PMLHwKoWrpqoJuEfvBVhrGpBr2G7wO	thread_D6xLxn2cALMMjKyQ3jJq24OE	{"subscription": null}	2	2024-01-24 03:17:07.348+00	2024-02-11 18:35:07.37+00
53	Harlie	harliefowlerr@yahoo.com	$2a$08$qBVgDI3vI/3pR0bklueJuObPHzsqlTg.gusJskKPkLyZftdeUVqKC	thread_jpa19d28xUH7gCFkEn49IxNC	{"subscription": null}	0	2024-01-24 03:51:22.626+00	2024-02-01 12:17:13.556+00
42	Alexacortez66	alexacortez66@icloud.com	$2a$08$Kv/wuNu1a8TJFS98AlX50ufCwbNbhi86Kqio6Pe3cWBE0AXBf52qu	thread_NUyVZ8WPWQSnn5E48OthzmEm	{"subscription": null}	9	2024-01-24 02:31:21.85+00	2024-01-24 02:33:05.522+00
54	Sblagg27	sblagg27@att.net	$2a$08$At6dD80N30aSeXzmSRzPeO6toqqor2/l6f7IeYNeTXiBi8tlcVPp6	thread_lBZZLS4PXDIfTtWSsFkKbO9E	{"subscription": null}	9	2024-01-24 03:54:31.075+00	2024-01-24 03:56:08.982+00
40	Gw	mollypolly10@gmail.com	$2a$08$7UnUkUVJbXU3gIFMTsyiUOpTE.Mz8vB4E/l4srfXWZpqpL80CUlsy	thread_gp0PiCaCAyPEa5yGjaqGLM6V	{"subscription": null}	0	2024-01-24 02:24:35.444+00	2024-01-24 02:43:27.383+00
44	denamarie	dena.swenson@gmail.com	$2a$08$6An40KnV8gvS0Xc1CKUVQeKGBIQ7S9PdYMQRpcG./2j.Iq2fZ.ica	thread_qSAVyFgUKvBrAmkUUoH8hX4W	{"subscription": null}	9	2024-01-24 02:54:32.371+00	2024-01-24 02:54:58.65+00
56	randilynnewebber@gmail.com	randilynnewebber@gmail.com	$2a$08$MCKCr7sf1evAjl6DN4sal.nD3ol0RX2UQdijjL3gyrrBd9JOYAsY.	thread_1bj4TDuAyZJARZKvWNQInd0y	{"subscription": null}	8	2024-01-24 04:01:22.79+00	2024-01-24 04:04:13.647+00
45	Mkf1399	m0frost@yahoo.com	$2a$08$N9rOCQzYqhKmhCEhTGsxoOMAEanQFNoUWyBE.iEeZYtZiqfLae4Xu	thread_Upj7nWnTaV0N0B3nkGvrRD1m	{"subscription": null}	8	2024-01-24 02:59:37.284+00	2024-01-24 03:02:49.205+00
46	Khilliard	noahmc8@aol.com	$2a$08$4fM/1m2QaGvIpw9KnVLX3.AWOIeoPSXcGcEecxHiqxdCb1o8NmFo2	thread_29GvvzOjwUJcGNbRIHszJjIs	{"subscription": null}	10	2024-01-24 03:03:27.694+00	2024-01-24 03:03:27.694+00
47	Sisi30	sisiwright@yahoo.com	$2a$08$Zzf0Lu1MDfW9p4KBqhI6xuMRVEmzj9Sg86u1.6zdsQh8EAokxP24i	thread_c7sDaWlcWvikNfeVzGNazc1X	{"subscription": null}	10	2024-01-24 03:03:28.862+00	2024-01-24 03:03:28.862+00
48	Kwestanulwut	autumnrose_moses_7@hotmail.com	$2a$08$TRpqBU04/GaUiHeAd25ikeubABZRQaVAh/lKhOuOZoev34ewWlrWS	thread_xFEtoJmojYidnZJdCiHkiRmd	{"subscription": null}	10	2024-01-24 03:05:53.558+00	2024-01-24 03:05:53.558+00
55	Romiya	romiya.banerjee@gmail.com	$2a$08$jNSC.MP3cZk5hNdpC2zhkuQE.qEyEs3L8qGMHZxTR4jfdbFHb/b9C	thread_Xr2Q5KGtn276V9KsxAmD6R5M	{"subscription": null}	9	2024-01-24 04:00:51.297+00	2024-01-24 04:07:21.933+00
57	centonze21@yahoo.com	centonze21@yahoo.com	$2a$08$c8zywyeLDPvOBzrZgBoDBu9qqajZkao0Qj7hSAkiOwroIIYj0U8PG	thread_Bshdz2rcW6KW8Y0AxQIYhPrp	{"subscription": null}	8	2024-01-24 04:17:44.218+00	2024-01-24 04:19:12.543+00
58	Anitanagle12	anitanagle12@gmail.com	$2a$08$jpNKCtO1uY0ylnqEyeKQIOHUbC5sC8BdU23RBczQNKJnhI.l6ecHK	thread_klg3oG1D4D6ZmgkpkLKvqpVr	{"subscription": null}	10	2024-01-24 04:22:00.165+00	2024-01-24 04:22:00.165+00
65	Kruiz11	zap.kath@gmail.com	$2a$08$GTCZxhVvbGKQpW85TLcs1.hNlJdLxvZ2C3w6W7wauiURHSKDSSZdS	thread_E2ecDXU18EgJ2jpM57yGop1a	{"subscription": null}	9	2024-01-24 06:46:28.223+00	2024-01-24 06:47:46.682+00
62	zevel1234567@gmail.com	zevel1234567@gmail.com	$2a$08$U2EWzRiPFOR80f3EWjBcdOvVVl6STKqQ3vp/C9F/jdu/sfPSqbqkK	thread_KYYIEwAUUEDtKksU17pWlF9f	{"subscription": null}	8	2024-01-24 05:40:27.576+00	2024-01-24 05:45:37.048+00
66	Kamila	kamila.malinska@volny.cz	$2a$08$xkaDayfyFiufu/qXg.IjkOJ3akEqckVB.xCA8bEX9toP/0adbJOEy	thread_YP3dYQ2ou9siEbEgLHetnKKi	{"subscription": null}	10	2024-01-24 06:50:45.853+00	2024-01-24 06:50:45.853+00
63	lexiesamora@gmail.com	lexiesamora@gmail.com	$2a$08$HOUz9KXpxZSHtCKwJmxIPug4ZwjvKOCS39ljdTtixaglG8VmvtgB6	thread_2HrXiOL70NEkpuWueFN9k62H	{"subscription": null}	4	2024-01-24 05:55:39.732+00	2024-01-24 07:38:50.088+00
67	stephstar13	stephstar13@mail.com	$2a$08$I/hrfQr2H0McJV0S.zwZ4u4SUttt1LWpwwTh5KbgVRLg/3YAgSwd2	thread_YbCwCCMHMdtBNYVjYjVipRFk	{"subscription": null}	9	2024-01-24 08:16:10.378+00	2024-01-24 08:17:21.057+00
69	Califel	lindsayfelt@yahoo.com	$2a$08$E6DY8ZxzQ.rim.j5EUBG4eG21ydRUQuqg/9nMz8AleHV6rGCCf5EK	thread_eVVIS8qdOzsj61VXo2gIEB6r	{"subscription": null}	9	2024-01-24 08:42:11.481+00	2024-01-24 08:42:57.92+00
70	larissaviveiross	larissaviveiross@gmail.com	$2a$08$XczgoJE4Ml.wOMcagZdXmeYJob8zboZuos/xr7d4w.bIl91wwRVNq	thread_iyJoqdCKxZzo3WUMCeUDRh4W	{"subscription": null}	10	2024-01-24 09:33:50.656+00	2024-01-24 09:33:50.656+00
72	Tkothavale	tripti.kothavale@gmail.com	$2a$08$gxtGh7qjYUznTHQBeK.WNeLiqWW/2ZyC8WMdhCikHbVmoTQf04a3K	thread_quLh8w9UJbW0HuoHhE1EpzoO	{"subscription": null}	9	2024-01-24 12:03:21.263+00	2024-01-25 01:33:58.07+00
68	hawaiisanta	nymajonesknows@gmail.com	$2a$08$hZGSUCBo4Y386x0X5jYPVuWHSTgkPofzhTL1b.yYcGSoBXbt0fUnm	thread_lWy9EVLh0E9hNpjBloLv6GO4	{"subscription": null}	6	2024-01-24 08:33:38.827+00	2024-01-24 14:52:19.88+00
60	Ryannieo	Ryanorlick@gmail.com	$2a$08$cxKSBQRODh4wKiBPOCHKduzqS3FtsTYun/O9Z9ktaeRpnOZNgUpSS	thread_psOSWAhlJiv0vdCIH7BmaJFK	{"subscription": null}	5	2024-01-24 04:51:09.734+00	2024-02-07 02:45:24.592+00
61	dancegwene	dancegwene@gmail.com	$2a$08$VzYh0sX.BXnjsgbC6VbcCe7WN13MDw163RYbCD9GMxLJcc5IT.zpi	thread_FHhEhRQGTLGOlLIhsDmqHKQi	{"subscription": null}	5	2024-01-24 05:13:18.31+00	2024-01-29 03:36:15.641+00
43	holls2006	timhollys@outlook.com	$2a$08$gLwR/ggtOfiYVxp2Z1/33eeheJ/IzBRZMPIF18COxFUpVHLULA3e6	thread_2WtmndJDAoTKD8yHHDegWEET	{"subscription": null}	4	2024-01-24 02:49:32.529+00	2024-01-29 03:11:40.037+00
94	andrijana	andrijanadjuric1@gmail.com	$2a$08$E7t1PgBiFnLxDBVZytiZ9.dkWry735fgqW5GuV7p4bo8K2sOcmTom	thread_8b00xHLKihYvb66HJBYompRk	{"subscription": null}	6	2024-01-24 21:11:46.665+00	2024-01-24 22:31:06.444+00
79	malaliesakhail@gmail.com	malaliesakhail@gmail.com	$2a$08$1gbSDtC24fo6YiS1pimse.g37Joruy18GBBluuUowKd.07eBnceWy	thread_rPAcYfqDcMsddgo8etF3qpnT	{"subscription": null}	9	2024-01-24 13:57:41.373+00	2024-01-24 14:00:21.424+00
80	Awise98	amberwise1998@gmail.com	$2a$08$XTuESTvgyCZKdZ6rg1RveuZG/NYWMKyq5kpBTYyEw49h7b5/tn2IW	thread_UABbqx8J7QiNxtwYoveg6vG9	{"subscription": null}	8	2024-01-24 14:06:58.6+00	2024-01-24 14:08:53.412+00
81	NBernard	ncbelew23@aol.com	$2a$08$4G0xNQNpt6JkGRQFYbnRFuM6Q5dXiFlVWur/f4Jj0vCL9gCR9.e.6	thread_XCXfeKZaKEtOMFw6yyDrjbcP	{"subscription": null}	10	2024-01-24 15:00:05.43+00	2024-01-24 15:00:05.43+00
82	Navayamisra	navigreen21@gmail.com	$2a$08$2i0ZmoaFKqay9rh7A9k0c.sybfxInIRiUFJ4xSkllENtERAjE36wi	thread_rFOtJDCsWS8MtvubexkAKxUR	{"subscription": null}	9	2024-01-24 15:45:20.765+00	2024-01-24 15:46:31.473+00
75	kristinadonza1	kdonza95@yahoo.com	$2a$08$WGh050LXmmb/CNu6Be82L.t2aW8atSnxcJ70mKTns9NkCKtq.x7Sq	thread_YusNTj7HqddgEfLF7huWufoU	{"subscription": null}	5	2024-01-24 12:20:29.947+00	2024-01-24 12:23:11.985+00
87	lacey_gaddis@yahoo.com	lacey_gaddis@yahoo.com	$2a$08$4JdyeFJ2A5ePO1aJGAALz.lV/pidWmMFM77L2s6ppxu5Odr2HHLYq	thread_t01ezZxtyURbtGtznGlSPkoL	{"subscription": null}	2	2024-01-24 18:45:01.858+00	2024-02-07 16:51:35.403+00
83	BLSEasonWalker	britishe.andrea.eason@gmail.com	$2a$08$PfKrW2ei2H6BGDf9t1vb9uMNFaQ6koNH156D7QXy.78vd8h87ZCKi	thread_u74chjkiVPz5fZ6eaMERnhSk	{"subscription": null}	6	2024-01-24 15:50:15.276+00	2024-02-01 23:36:29.007+00
84	ShelbyS2015	shelbysmith282015@gmail.com	$2a$08$7lL7zxo7kolxxXD1Crpih.p0utxyDJouJzRJk7sJE539E1DA71x.q	thread_GM2HCrcOVRGAUqhOdIo8Fq15	{"subscription": null}	8	2024-01-24 16:02:41.425+00	2024-01-24 16:05:53.85+00
76	Mwalker 	mcopling757@gmail.com	$2a$08$g8WnuUP1fFf1f0ThzxnAueSPMUIKUUCSy2XFJyFbArpAK5AGotpFu	thread_UAkloeRDr6xMfKTyX7FfWH2m	{"sessionId": "cs_live_a1OC75vpJAK1xNLObZu9CGCQYGR3wywbUe3A8KFza990nj6LKMvYk5n6wK"}	8	2024-01-24 12:44:24.071+00	2024-01-24 12:52:05.097+00
74	Raiane Diniz 	raianediniz@gmail.com	$2a$08$hS4SZGd7VKD4ImVEe/PQ8.4QDMqv1W0BELkEsYxNdM/mph2rKXjK6	thread_AACubL9QvOwqr5eEiNDEvBf6	{"subscription": null}	2	2024-01-24 12:12:46.493+00	2024-01-24 12:53:00.77+00
100	Gabem777	tes@twsr.com	$2a$08$FpffpRD3e85guUGMR8pHE.Etd6jK6RLT6KArURLH2KP5d8hXCDrmm	thread_XtRAiwH4KZxZn0uug88pVpkp	{"subscription": null}	10	2024-01-24 22:54:55.036+00	2024-01-24 22:54:55.036+00
77	alyssalaney	alyssalaney47@gmail.com	$2a$08$mmSvW1vTCzU2xQcTWRyqlO2Qp4jPuJ8JWPagOEZrUwcrXSMI9eb.m	thread_WpeLBZxah9ERrNUNP4gwddup	{"subscription": null}	8	2024-01-24 13:20:41.996+00	2024-01-24 13:23:01.444+00
73	kayythatch094	kayythatch094@icloud.com	$2a$08$9peei67fuRygHpk8F2.P/OpOt9zYobW3.JeuX8QtYGi.JIe0C59NS	thread_KvGcb4gi8w1JeiDsF01XYs7i	{"subscription": null}	3	2024-01-24 12:11:13.987+00	2024-01-24 13:23:34.572+00
92	QMeyer	Quala78@gmail.com	$2a$08$G/UFsgUuyDKImCIHuf/aYO7d4ui52daiWbE6LWoeetNRRlQsb51j6	thread_dgEOPalw0wzhjlOOqW48oeeJ	{"subscription": null}	0	2024-01-24 20:53:23.434+00	2024-01-29 03:18:27.484+00
93	Sahanna	sahanna.anandarasa@gmail.com	$2a$08$ra4lnYexB6FDIsIEMbNmr.CE5eQ28BB6LCTRcImpsT3zDztIfvZb6	thread_soi837xZQyvaNH5H9r4WJOWA	{"subscription": null}	8	2024-01-24 20:56:13.039+00	2024-01-24 20:58:16.144+00
78	NataliePepe	natalieannepepe@gmail.com	$2a$08$1n.IS7Md93dKHG4qIledAuHTZdCIZPio1rUbhgW4S/HUe4zIxm8rW	thread_xgboAhzUhZu8irCAEEAP6DvP	{"subscription": null}	6	2024-01-24 13:45:34.763+00	2024-01-24 13:52:49.024+00
86	jennifer.mylan@gmail.com	jennifer.mylan@gmail.com	$2a$08$/iIIHAW4CwLjdlN3d89n3.qB.5AT3b7qjcUyO.9iBhlqCedK8MoPG	thread_syUMGGvaUg6gOlSz6jhB7kq8	{"subscription": null}	7	2024-01-24 18:01:22.337+00	2024-01-24 18:31:00.422+00
91	Flt	floralathangue@gmail.com	$2a$08$54sYo/I6FqFwhRcN5FFI1ub4YWZhW1RogeUeQuCQmQdE1HmN1uv3a	thread_AxR8kuJTDJUCJx76hqKlQI98	{"subscription": null}	10	2024-01-24 20:31:07.48+00	2024-01-24 20:31:07.48+00
102	Smg91	sophiamae@gmail.com	$2a$08$6PYalMFn9Gf1ftg0JhixNuvodWFeBUVWNPPhL4bMLJXUwDizdbe3S	thread_s9lRibxk1kNgasFL0qzYCBOK	{"subscription": null}	9	2024-01-25 03:01:23.952+00	2024-01-25 03:02:29.077+00
97	hsimmons	writehsimmons@gmail.com	$2a$08$Z0eVwQdWMuuM7uOyQP8hd.JvxnTP6.c6DzA5EmXJTJuNMxfye70cu	thread_RdN25V0CGoom6O0Qf7KM7A2w	{"subscription": null}	0	2024-01-24 22:00:49.042+00	2024-01-29 03:09:35.214+00
89	Stephanie_Anne5	sunshine_down5@yahoo.com	$2a$08$dceelSxb6//yFya0q1XbC.qQvJ31SWW1ZOvfi78GCAGdudtgluY3y	thread_v6WbVkJtsEazxPpZBXUTyVX1	{"subscription": null}	4	2024-01-24 20:21:54.041+00	2024-01-24 20:38:19.581+00
90	marzena.kasprzyk90@gmail.com	marzena.kasprzyk90@gmail.com	$2a$08$67f0ANguPBOpYGNgiFSWgeqPRmp2pct.odwDJZX1vAx9zE0W4nSr2	thread_t1zHscjIJx6eYnxlGgOUhb3X	{"subscription": null}	6	2024-01-24 20:23:22.668+00	2024-01-24 20:40:29.686+00
88	ardee96@aol.com	ardee96@aol.com	$2a$08$8FyJZ92Kpes8uU9RVmz24.gKAfTRYsCL1A9DPnDj9gApR4D/uLpg.	thread_XC4pHIccNWOfdtjbJaSXM8BP	{"subscription": null}	0	2024-01-24 19:43:35.201+00	2024-01-24 21:46:19.183+00
98	saskiakupiec	saskiakupiec@gmail.com	$2a$08$nK8kq57c77h13jIoI.rT9uPLTT7pqEJBP5pMWa6qGUIMNaHtBltKy	thread_h2mjYQ4qlDE01RSCu1QSZ6Qd	{"subscription": null}	9	2024-01-24 22:11:40.297+00	2024-01-24 22:12:56.458+00
103	Sammi2094	scandelario6173@gmail.com	$2a$08$2GZgYVP7apomXM5nUv.m2.hJozZZMPOkgaJMsac0zYPWoDRgrVTFC	thread_xpqkMHjD8DI63b98VJuCRKWJ	{"subscription": null}	6	2024-01-25 05:32:35.504+00	2024-01-25 05:37:25.526+00
101	Dia	b7175128@gmail.com	$2a$08$zeuS7XdpBZArPkuSnjkyIOSezfN4bVFMRL4linpSUDybsMSmIZbzm	thread_eJwLtwfNmz1t9G0aqZj8hF1Y	{"subscription": null}	6	2024-01-25 01:15:02.649+00	2024-01-25 01:23:35.002+00
105	webbyox	katie.webster94@googlemail.com	$2a$08$H2we2dqodiwASKwgXd7vjuZnmlRhsRy7vJjlbSOo4ZAWwjVXSQvli	thread_fqoh8sfill5OconALiwaq1DD	{"subscription": null}	7	2024-01-25 08:11:13.794+00	2024-01-25 08:17:32.977+00
104	Gseabra	giovannatannus@gmail.com	$2a$08$JrIku1ooibhXr.EDdH4Sj.5jUZYifau.DmyQqevHh6TDEdqFppXCS	thread_8FT4GdEB3b5uXtrNBhtQsEms	{"subscription": null}	8	2024-01-25 06:15:30.139+00	2024-01-25 06:17:34.82+00
85	littledixiegal	littledixiegal@yahoo.com	$2a$08$Ro4UiYLPRTxEBJkrmIaKLuXUtSFYCIQpbKdLYk0oYkekgWBUU/Lqy	thread_qSrmZCP0JWEg2CTnRffIKdKA	{"subscription": null}	3	2024-01-24 17:38:22.232+00	2024-01-25 13:48:11.7+00
106	Mirna	mirnaxamira@gmail.com	$2a$08$jZZxjT2Cv9QoGfMMRRKoaeg0HgfHskgTJEgFrce8zHNGXMw6Oxere	thread_dKBfWpwE0hWF5tgay3Vn0uVy	{"subscription": null}	3	2024-01-25 13:16:38.291+00	2024-01-25 13:31:28.573+00
107	Tonirae13	tonirae13@gmail.com	$2a$08$VJWm3Mrujwu3Mr8xbPjIYe/qUYC4V9BGMe0BQw25NPdhn7iv1v0G.	thread_pUVrJN9NdzgKmU2UCf5MNewz	{"subscription": null}	9	2024-01-25 15:42:44.978+00	2024-01-25 15:44:07.807+00
108	KD1992	kdodson1992@gmail.com	$2a$08$noFKXJ93A3V.qYdK70odIONIftl4HNC7LsRNDcOZ7iX6kIEDykTpK	thread_shKW2xTrq1tSDHFiqVXrJjUk	{"subscription": null}	0	2024-01-25 15:55:57.657+00	2024-01-25 16:17:56.584+00
109	Janelle27	jlwolfgang85@gmail.com	$2a$08$CHxf3uOIqw6rdiJUGDzSHOBrYIF3BRYfr5idzZIsq/AsEldEyFmZ.	thread_VOBYvHcw1A0E8etWTPxtXmTH	{"subscription": null}	9	2024-01-26 03:01:22.701+00	2024-01-26 03:02:53.442+00
96	daciadanelle	daciadanelle@gmail.com	$2a$08$/VH6hWwJWbnpQcYSgJjz1e6rL7TxJdAa4IR7xtv/Ii0LEKAilFp02	thread_Npj96XLOoB9QpJqFNrTWuaYY	{"subscription": null}	7	2024-01-24 21:56:52.298+00	2024-02-02 00:44:51.101+00
99	monshay69	monshay69@gmail.com	$2a$08$gKF1xdwwVMTnF0LfXEqdMu7x.QdsuJLdZekrnh7d.a/2dKsB9raSi	thread_6ij49psRXoQAnSNjukNxNhMN	{"subscription": null}	6	2024-01-24 22:22:24.502+00	2024-02-06 23:52:53.533+00
95	Cherylsp8	cheryl716@gmail.com	$2a$08$YqbS8joA04tkg7X9XrTceeYaOTtNSjEidvEHM34f3Ulqtt1uaBhym	thread_rvdC4fA4IHSKeN6LLrYuZbo2	{"subscription": null}	8	2024-01-24 21:42:20.953+00	2024-02-13 19:03:36.781+00
49	geminidragon786@gmail.com	geminidragon786@gmail.com	$2a$08$.34yGdgZtKvKBQzOa7vE4.9TbMlgAwVyha7shLNLW5yWay2tSlUBG	thread_Nw9u2dndo7oAtuWbhh0IAvef	{"planId": "price_1OXYV9IZvjY5zLCnK0cs3ESn", "planType": "basic", "sessionId": null, "planEndDate": "2024-02-08", "planDuration": 7, "trialEndDate": "2024-02-08", "planStartDate": "2024-02-01", "subscriptionID": "sub_1OeymBIZvjY5zLCn6Ty2DN1a"}	0	2024-01-24 03:12:26.293+00	2024-02-01 13:11:37.066+00
115	gmaccy	gmaccy@test.com	$2a$08$3utHVzQ9tKQdmTiUEcZPu.Xr6ojhSjjWOdjIWLhiKdX6n5RTzYrem	thread_MhNHnV10eltmeH5ojs2KLEUd	{"subscription": null}	5	2024-01-29 05:24:53.701+00	2024-01-29 05:27:16.679+00
119	hmilleson	hannahjmilleson@gmail.com	$2a$08$rLhXoDzMlCM73DQnkFL.sediwAmp9rpA8jI8uCSXGVYKKdPQUEiuG	thread_rlD9Pk4Jo9imLb30AiUVa7un	{"subscription": null}	10	2024-02-01 16:13:54.752+00	2024-02-01 16:13:54.752+00
116	lucas	lucasmiller0715@gmail.com	$2a$08$tnknIOK9mu6Mb9zreo3suOzqkEJDITf7j9axZRzCcJkR7mGiH7HnO	thread_7ax0gw50ockxNxghpfvuyZpT	{"subscription": null}	7	2024-01-29 17:07:52.639+00	2024-01-29 17:09:34.266+00
117	gabepaymenttest	gabepaymenttest@gmail.com	$2a$08$g6Sfm1CIQ27mLoKWlu3iYOs4XaqEEPWsGHF3EGP7OcMH1d2hShU5C	thread_lcy1nIHn3jXxByDs2qZ0azKx	{"planId": "price_1OXYV9IZvjY5zLCnK0cs3ESn", "planType": "basic", "sessionId": null, "planEndDate": "2024-02-06", "planDuration": 7, "trialEndDate": "2024-02-06", "planStartDate": "2024-01-30", "subscriptionID": "sub_1Oe4yfIZvjY5zLCnFHajxRkv"}	10	2024-01-30 00:13:23.817+00	2024-01-30 00:15:08.194+00
111	Shaymara16	shaymara200016@gmail.com	$2a$08$Hxn0aumczhU9JdvCPIRUkezpi3n0DMjmzDgCO8cSTCHzTqYEjxsJu	thread_pVimddLyYVW3lyrbb2qTdCqq	{"subscription": null}	0	2024-01-27 04:30:57.872+00	2024-01-27 04:54:07.229+00
1	Gabe	gabe@nourishednaturalhealth.com	$2a$08$7tnh7ED6.EwFM8RsbjRlle.5hvcxU2CLkZtz7gmq5cTuxwIhDBUIi	thread_9uzs7XohJSLo4IGtsjk5dXyJ	{"planId": "price_1OXYV9IZvjY5zLCnK0cs3ESn", "planType": "basic", "sessionId": null, "planEndDate": "2024-02-07", "planDuration": 7, "trialEndDate": "2024-02-07", "planStartDate": "2024-01-31", "subscriptionID": "sub_1OeSzWIZvjY5zLCn1vyexYMO"}	0	2024-01-12 17:41:33.913+00	2024-01-31 01:53:43.4+00
110	Furan	furan-chan@outlook.com	$2a$08$ug0759nED90zTnJJE6XMR.fBJp7FH314Wn64B6TMz8EMDXCa4aAQm	thread_QHT5nqrBmn0Qn8ZB9SpBzIPv	{"subscription": null}	4	2024-01-26 22:50:48.649+00	2024-01-27 17:11:51.441+00
112	Doglover13	col007@gmail.com	$2a$08$ix99EREyayOVnA.8nEfP5OWf0v.4gfOAYFFD2fBtg0mcyYHhIDbsO	thread_Fz8rAJZbEuOIAn1yVEy1nDiP	{"subscription": null}	6	2024-01-27 21:10:50.107+00	2024-01-27 21:13:42.391+00
113	gabem274	gabem274@gmail.com	$2a$08$KEslwOvPHnPaX/fEnIBZPuQJAS72I4O3MjYewkLNXwMo79PeVLy7a	thread_XY1q27ze9tUKfnAzKUT5JBvB	{"subscription": null}	0	2024-01-29 03:13:57.556+00	2024-01-31 02:08:09.284+00
118	SoniaCast	pecka1689@gmail.com	$2a$08$.uf1eLe87W7alYFH/4HjceYDLjl21faNyfczxGbejIy5V/JYov2U.	thread_iqwsa8hRFyk5dbqOhtch34IB	{"subscription": null}	10	2024-01-31 15:24:29.627+00	2024-01-31 15:24:29.627+00
121	Phil	philipp.laufenberg@gmail.com	$2a$08$mJiem23UdEmMUevqn4.Daems7rmSs/xv8qOge36EMdQMf05TblYKq	thread_ZvE6CjBQKHii5dkcUC8dLEHh	{"subscription": null}	1	2024-02-03 06:27:35.365+00	2024-02-03 06:56:22.666+00
122	higicin851	higicin851@evvgo.com	$2a$08$a1l3TzP.RGX4Re18Nj7wh.6iDd//3vCMuD.kkhlM8ExFmpzGvs0GC	thread_cnfVItLNjDCPKd6CJmmbvU8W	{"subscription": null}	10	2024-02-05 21:02:22.915+00	2024-02-05 21:02:22.915+00
126	TinaN	tyenaneely@icloud.com	$2a$08$BZIJ.3KwS3qbXnP7/6ErrekEk2gZeBTudCi73.d4DQbtwy3aWByAi	thread_3GvqpVpS8sNw3r6l3fU4whlZ	{"subscription": null}	1	2024-02-16 01:07:13.424+00	2024-02-16 01:29:38.684+00
114	gabem2741@gmail.com	gabem2741@gmail.com	$2a$08$CWHZIISBaBF4kL8bLzsSUO4JgIb/zKQblWL53ON7qHMimht9T42Xi	thread_nFbwx6FDkEifS1WbVBC1d9WC	{"subscription": null}	7	2024-01-29 04:34:53.048+00	2024-01-29 04:36:58.89+00
123	Lauren 	lauren.magennis@wayflyer.com	$2a$08$0VTSFTWJ7nl.sybIBu/YUuwWnhsroLGWbvSrZaIZWJbBthGLR2iIG	thread_3XgBdbaqWw8PFX6s6bRhGoVS	{"subscription": null}	7	2024-02-09 04:21:34.534+00	2024-02-09 04:24:26.682+00
120	batko	michibatko@gmail.com	$2a$08$Z/YlmwLm9.e6j9UAo0Fw9OL/0PfBuRRkwOCMClnvIHkIBUkNuhjG.	thread_nzs5GLpZAF37WKiH4N3cipEv	{"sessionId": "cs_live_a1fGW5ayNWZ0q7aSW44UG8hKyXYv4xxWLDVBKUZpQabUTqvogHRm5VqFY3"}	0	2024-02-03 00:02:45.751+00	2024-02-03 00:29:21.958+00
124	salvatore1.ferrigno@gmail.com	salvatore1.ferrigno@gmail.com	$2a$08$9nX/b4DeHxdLKC4Zd1UemekSg1/uijjrX3p1ru8EjmEx9.fHTMhEW	thread_kp6BhDEItiAGgPynPWCeqyxr	{"subscription": null}	9	2024-02-14 15:25:24.104+00	2024-02-15 16:23:31.293+00
125	Jasmine	Jassypalooza@gmail.com	$2a$08$3AokPCwqB4cfeXf424QhU.F7pBlbt14nPUZAOSE/V2NwHgdBJdM4y	thread_eQ8V8naAWF9WnyiF8wuKu9MM	{"subscription": null}	10	2024-02-16 00:25:55.524+00	2024-02-16 00:25:55.524+00
127	juliettecst	juju.costantini@gmail.com	$2a$08$yd145srUF6sf1VaJy1K9Huszvbvqs/mnB.3QhsNOBP8lURdjjdm4S	thread_J6ZAsq2vOSqWoGP7vrCzZsbu	{"subscription": null}	9	2024-02-16 06:51:41.596+00	2024-02-16 06:52:11.553+00
128	Emmah	emma_7x@hotmail.co.uk	$2a$08$qK4lSgsYA743zUBI8epOXe43wZk.oAr5GcwC5qX/c6MrTFTz0oS9.	thread_Qr4JxW6lUHZs9KNJwScnPPwI	{"subscription": null}	7	2024-02-16 09:12:17.189+00	2024-02-16 09:14:07.178+00
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nourish
--

SELECT pg_catalog.setval('public.users_id_seq', 128, true);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: nourish
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: user_roles user_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: nourish
--

ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY ("roleId", "userId");


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: nourish
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: user_roles user_roles_roleId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: nourish
--

ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT "user_roles_roleId_fkey" FOREIGN KEY ("roleId") REFERENCES public.roles(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: user_roles user_roles_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: nourish
--

ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT "user_roles_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

