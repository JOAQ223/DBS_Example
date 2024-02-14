--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2 (Debian 14.2-1.pgdg110+1)
-- Dumped by pg_dump version 14.2 (Debian 14.2-1.pgdg110+1)

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

ALTER TABLE ONLY public.tz_macht_test DROP CONSTRAINT tz_macht_test_tzid_fkey;
ALTER TABLE ONLY public.tz_macht_test DROP CONSTRAINT tz_macht_test_tid_fkey;
ALTER TABLE ONLY public.mitarbtr_verhaengt_einschrnkng DROP CONSTRAINT mitarbtr_verhaengt_einschrnkng_mid_fkey;
ALTER TABLE ONLY public.mitarbtr_verhaengt_einschrnkng DROP CONSTRAINT mitarbtr_verhaengt_einschrnkng_eid_fkey;
ALTER TABLE ONLY public.kontrolle DROP CONSTRAINT kontrolle_qid_fkey;
ALTER TABLE ONLY public.kontrolle DROP CONSTRAINT kontrolle_mid_fkey;
ALTER TABLE ONLY public.iz_hat_impf DROP CONSTRAINT iz_hat_impf_izid_fkey;
ALTER TABLE ONLY public.iz_hat_impf DROP CONSTRAINT iz_hat_impf_chargenummer_fkey;
ALTER TABLE ONLY public.impfng_enthaelt_impfstff DROP CONSTRAINT impfng_enthaelt_impfstff_isid_fkey;
ALTER TABLE ONLY public.impfng_enthaelt_impfstff DROP CONSTRAINT impfng_enthaelt_impfstff_chargenummer_fkey;
ALTER TABLE ONLY public.gha_hat_mit DROP CONSTRAINT gha_hat_mit_mid_fkey;
ALTER TABLE ONLY public.gha_hat_mit DROP CONSTRAINT gha_hat_mit_amtid_fkey;
ALTER TABLE ONLY public.brgr_verstosst_einschrnkng DROP CONSTRAINT brgr_verstosst_einschrnkng_eid_fkey;
ALTER TABLE ONLY public.brgr_verstosst_einschrnkng DROP CONSTRAINT brgr_verstosst_einschrnkng_bid_fkey;
ALTER TABLE ONLY public.brgr_ght_testztrm DROP CONSTRAINT brgr_ght_testztrm_tzid_fkey;
ALTER TABLE ONLY public.brgr_ght_testztrm DROP CONSTRAINT brgr_ght_testztrm_bid_fkey;
ALTER TABLE ONLY public.brgr_ght_impfztrm DROP CONSTRAINT brgr_ght_impfztrm_izid_fkey;
ALTER TABLE ONLY public.brgr_ght_impfztrm DROP CONSTRAINT brgr_ght_impfztrm_bid_fkey;
ALTER TABLE ONLY public.brgr_geht_in_quarntn DROP CONSTRAINT brgr_geht_in_quarntn_qid_fkey;
ALTER TABLE ONLY public.brgr_geht_in_quarntn DROP CONSTRAINT brgr_geht_in_quarntn_bid_fkey;
ALTER TABLE ONLY public.testzentrum DROP CONSTRAINT testzentrum_pkey;
ALTER TABLE ONLY public.test DROP CONSTRAINT test_pkey;
ALTER TABLE ONLY public.quarantaene DROP CONSTRAINT quarantaene_pkey;
ALTER TABLE ONLY public.mitarbeiter DROP CONSTRAINT mitarbeiter_pkey;
ALTER TABLE ONLY public.impfstoff DROP CONSTRAINT imppfstoff_pkey;
ALTER TABLE ONLY public.impfzentrum DROP CONSTRAINT impfzentrum_pkey;
ALTER TABLE ONLY public.impfung DROP CONSTRAINT impfung_pkey;
ALTER TABLE ONLY public.gha_hat_mit DROP CONSTRAINT gha_hat_mit_pkey;
ALTER TABLE ONLY public.gesundheitsamt DROP CONSTRAINT gesundheitsamt_pkey;
ALTER TABLE ONLY public.einschraenung DROP CONSTRAINT einschraenung_pkey;
ALTER TABLE ONLY public.buerger DROP CONSTRAINT buerger_pkey;
ALTER TABLE public.testzentrum ALTER COLUMN tzid DROP DEFAULT;
ALTER TABLE public.test ALTER COLUMN tid DROP DEFAULT;
ALTER TABLE public.quarantaene ALTER COLUMN qid DROP DEFAULT;
ALTER TABLE public.mitarbeiter ALTER COLUMN mid DROP DEFAULT;
ALTER TABLE public.impfzentrum ALTER COLUMN izid DROP DEFAULT;
ALTER TABLE public.impfung ALTER COLUMN chargenummer DROP DEFAULT;
ALTER TABLE public.impfstoff ALTER COLUMN isid DROP DEFAULT;
ALTER TABLE public.gesundheitsamt ALTER COLUMN amtid DROP DEFAULT;
ALTER TABLE public.einschraenung ALTER COLUMN eid DROP DEFAULT;
ALTER TABLE public.buerger ALTER COLUMN bid DROP DEFAULT;
DROP TABLE public.tz_macht_test;
DROP SEQUENCE public.testzentrum_tzid_seq;
DROP TABLE public.testzentrum;
DROP SEQUENCE public.test_tid_seq;
DROP TABLE public.test;
DROP SEQUENCE public.quarantaene_qid_seq;
DROP TABLE public.quarantaene;
DROP VIEW public.numofimpfstoff;
DROP TABLE public.mitarbtr_verhaengt_einschrnkng;
DROP SEQUENCE public.mitarbeiter_mid_seq;
DROP TABLE public.mitarbeiter;
DROP TABLE public.kontrolle;
DROP TABLE public.iz_hat_impf;
DROP SEQUENCE public.imppfstoff_isid_seq;
DROP SEQUENCE public.impfzentrum_izid_seq;
DROP TABLE public.impfzentrum;
DROP SEQUENCE public.impfung_chargenummer_seq;
DROP TABLE public.impfung;
DROP TABLE public.impfstoff;
DROP TABLE public.impfng_enthaelt_impfstff;
DROP TABLE public.gha_hat_mit;
DROP SEQUENCE public.gesundheitsamt_amtid_seq;
DROP TABLE public.gesundheitsamt;
DROP SEQUENCE public.einschraenung_eid_seq;
DROP TABLE public.einschraenung;
DROP SEQUENCE public.buerger_bid_seq;
DROP TABLE public.buerger;
DROP TABLE public.brgr_verstosst_einschrnkng;
DROP TABLE public.brgr_ght_testztrm;
DROP TABLE public.brgr_ght_impfztrm;
DROP TABLE public.brgr_geht_in_quarntn;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: brgr_geht_in_quarntn; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.brgr_geht_in_quarntn (
    bid integer,
    qid integer
);


ALTER TABLE public.brgr_geht_in_quarntn OWNER TO admin;

--
-- Name: brgr_ght_impfztrm; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.brgr_ght_impfztrm (
    bid integer,
    izid integer
);


ALTER TABLE public.brgr_ght_impfztrm OWNER TO admin;

--
-- Name: brgr_ght_testztrm; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.brgr_ght_testztrm (
    bid integer,
    tzid integer
);


ALTER TABLE public.brgr_ght_testztrm OWNER TO admin;

--
-- Name: brgr_verstosst_einschrnkng; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.brgr_verstosst_einschrnkng (
    bid integer,
    eid integer
);


ALTER TABLE public.brgr_verstosst_einschrnkng OWNER TO admin;

--
-- Name: buerger; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.buerger (
    bid integer NOT NULL,
    name character varying(50),
    age integer,
    gender character varying(30),
    strasse character varying(50),
    plz character(5),
    ort character varying(50)
);


ALTER TABLE public.buerger OWNER TO admin;

--
-- Name: buerger_bid_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.buerger_bid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.buerger_bid_seq OWNER TO admin;

--
-- Name: buerger_bid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.buerger_bid_seq OWNED BY public.buerger.bid;


--
-- Name: einschraenung; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.einschraenung (
    eid integer NOT NULL,
    massnahme character varying(50),
    von date,
    bis date,
    mabussgeld numeric(6,2),
    bussgeld numeric(6,2)
);


ALTER TABLE public.einschraenung OWNER TO admin;

--
-- Name: einschraenung_eid_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.einschraenung_eid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.einschraenung_eid_seq OWNER TO admin;

--
-- Name: einschraenung_eid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.einschraenung_eid_seq OWNED BY public.einschraenung.eid;


--
-- Name: gesundheitsamt; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.gesundheitsamt (
    amtid integer NOT NULL,
    strasse character varying(50),
    plz character(5),
    ort character varying(50)
);


ALTER TABLE public.gesundheitsamt OWNER TO admin;

--
-- Name: gesundheitsamt_amtid_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.gesundheitsamt_amtid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gesundheitsamt_amtid_seq OWNER TO admin;

--
-- Name: gesundheitsamt_amtid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.gesundheitsamt_amtid_seq OWNED BY public.gesundheitsamt.amtid;


--
-- Name: gha_hat_mit; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.gha_hat_mit (
    mid integer NOT NULL,
    amtid integer NOT NULL
);


ALTER TABLE public.gha_hat_mit OWNER TO admin;

--
-- Name: impfng_enthaelt_impfstff; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.impfng_enthaelt_impfstff (
    isid integer,
    chargenummer integer
);


ALTER TABLE public.impfng_enthaelt_impfstff OWNER TO admin;

--
-- Name: impfstoff; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.impfstoff (
    isid integer NOT NULL,
    art character varying(50),
    hersteller character varying(50)
);


ALTER TABLE public.impfstoff OWNER TO admin;

--
-- Name: impfung; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.impfung (
    chargenummer integer NOT NULL,
    datum date,
    ablaufdatum date
);


ALTER TABLE public.impfung OWNER TO admin;

--
-- Name: impfung_chargenummer_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.impfung_chargenummer_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.impfung_chargenummer_seq OWNER TO admin;

--
-- Name: impfung_chargenummer_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.impfung_chargenummer_seq OWNED BY public.impfung.chargenummer;


--
-- Name: impfzentrum; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.impfzentrum (
    izid integer NOT NULL,
    strasse character varying(50),
    plz character(5),
    ort character varying(50)
);


ALTER TABLE public.impfzentrum OWNER TO admin;

--
-- Name: impfzentrum_izid_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.impfzentrum_izid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.impfzentrum_izid_seq OWNER TO admin;

--
-- Name: impfzentrum_izid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.impfzentrum_izid_seq OWNED BY public.impfzentrum.izid;


--
-- Name: imppfstoff_isid_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.imppfstoff_isid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.imppfstoff_isid_seq OWNER TO admin;

--
-- Name: imppfstoff_isid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.imppfstoff_isid_seq OWNED BY public.impfstoff.isid;


--
-- Name: iz_hat_impf; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.iz_hat_impf (
    izid integer,
    chargenummer integer
);


ALTER TABLE public.iz_hat_impf OWNER TO admin;

--
-- Name: kontrolle; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.kontrolle (
    qid integer,
    mid integer
);


ALTER TABLE public.kontrolle OWNER TO admin;

--
-- Name: mitarbeiter; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.mitarbeiter (
    mid integer NOT NULL,
    berufstaetigkeit character varying(50),
    strasse character varying(50),
    plz character(5),
    ort character varying(50)
);


ALTER TABLE public.mitarbeiter OWNER TO admin;

--
-- Name: mitarbeiter_mid_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.mitarbeiter_mid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mitarbeiter_mid_seq OWNER TO admin;

--
-- Name: mitarbeiter_mid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.mitarbeiter_mid_seq OWNED BY public.mitarbeiter.mid;


--
-- Name: mitarbtr_verhaengt_einschrnkng; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.mitarbtr_verhaengt_einschrnkng (
    mid integer,
    eid integer
);


ALTER TABLE public.mitarbtr_verhaengt_einschrnkng OWNER TO admin;

--
-- Name: numofimpfstoff; Type: VIEW; Schema: public; Owner: admin
--

CREATE VIEW public.numofimpfstoff AS
 SELECT i.art,
    count(i.isid) AS numofimpf
   FROM public.impfstoff i
  GROUP BY i.art;


ALTER TABLE public.numofimpfstoff OWNER TO admin;

--
-- Name: quarantaene; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.quarantaene (
    qid integer NOT NULL,
    von date,
    bis date,
    strasse character varying(50),
    plz character(5),
    ort character varying(50)
);


ALTER TABLE public.quarantaene OWNER TO admin;

--
-- Name: quarantaene_qid_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.quarantaene_qid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.quarantaene_qid_seq OWNER TO admin;

--
-- Name: quarantaene_qid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.quarantaene_qid_seq OWNED BY public.quarantaene.qid;


--
-- Name: test; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.test (
    tid integer NOT NULL,
    datum date,
    testkit character varying(50),
    ergebnis character varying(10)
);


ALTER TABLE public.test OWNER TO admin;

--
-- Name: test_tid_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.test_tid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_tid_seq OWNER TO admin;

--
-- Name: test_tid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.test_tid_seq OWNED BY public.test.tid;


--
-- Name: testzentrum; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.testzentrum (
    tzid integer NOT NULL,
    strasse character varying(50),
    plz character(5),
    ort character varying(50)
);


ALTER TABLE public.testzentrum OWNER TO admin;

--
-- Name: testzentrum_tzid_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.testzentrum_tzid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.testzentrum_tzid_seq OWNER TO admin;

--
-- Name: testzentrum_tzid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.testzentrum_tzid_seq OWNED BY public.testzentrum.tzid;


--
-- Name: tz_macht_test; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.tz_macht_test (
    tid integer,
    tzid integer
);


ALTER TABLE public.tz_macht_test OWNER TO admin;

--
-- Name: buerger bid; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.buerger ALTER COLUMN bid SET DEFAULT nextval('public.buerger_bid_seq'::regclass);


--
-- Name: einschraenung eid; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.einschraenung ALTER COLUMN eid SET DEFAULT nextval('public.einschraenung_eid_seq'::regclass);


--
-- Name: gesundheitsamt amtid; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.gesundheitsamt ALTER COLUMN amtid SET DEFAULT nextval('public.gesundheitsamt_amtid_seq'::regclass);


--
-- Name: impfstoff isid; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.impfstoff ALTER COLUMN isid SET DEFAULT nextval('public.imppfstoff_isid_seq'::regclass);


--
-- Name: impfung chargenummer; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.impfung ALTER COLUMN chargenummer SET DEFAULT nextval('public.impfung_chargenummer_seq'::regclass);


--
-- Name: impfzentrum izid; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.impfzentrum ALTER COLUMN izid SET DEFAULT nextval('public.impfzentrum_izid_seq'::regclass);


--
-- Name: mitarbeiter mid; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.mitarbeiter ALTER COLUMN mid SET DEFAULT nextval('public.mitarbeiter_mid_seq'::regclass);


--
-- Name: quarantaene qid; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.quarantaene ALTER COLUMN qid SET DEFAULT nextval('public.quarantaene_qid_seq'::regclass);


--
-- Name: test tid; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.test ALTER COLUMN tid SET DEFAULT nextval('public.test_tid_seq'::regclass);


--
-- Name: testzentrum tzid; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.testzentrum ALTER COLUMN tzid SET DEFAULT nextval('public.testzentrum_tzid_seq'::regclass);


--
-- Data for Name: brgr_geht_in_quarntn; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.brgr_geht_in_quarntn (bid, qid) FROM stdin;
8	13
4	4
2	14
5	14
15	14
4	10
18	10
9	19
17	16
17	5
10	10
2	2
5	12
14	7
16	20
3	1
5	13
5	15
18	17
12	14
\.


--
-- Data for Name: brgr_ght_impfztrm; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.brgr_ght_impfztrm (bid, izid) FROM stdin;
4	1
7	11
15	13
13	17
16	13
16	19
17	9
5	5
3	18
20	17
5	11
2	15
20	13
5	18
3	18
5	15
20	7
19	12
2	18
14	8
\.


--
-- Data for Name: brgr_ght_testztrm; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.brgr_ght_testztrm (bid, tzid) FROM stdin;
10	8
16	7
18	14
19	14
8	7
7	13
9	3
20	11
9	5
10	10
10	7
18	2
10	1
2	17
8	6
7	1
14	10
5	1
13	20
20	3
\.


--
-- Data for Name: brgr_verstosst_einschrnkng; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.brgr_verstosst_einschrnkng (bid, eid) FROM stdin;
14	13
4	4
18	12
17	7
3	6
14	16
20	14
13	19
16	4
16	12
6	6
5	14
18	6
18	5
17	13
15	1
2	10
14	19
7	13
11	17
\.


--
-- Data for Name: buerger; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.buerger (bid, name, age, gender, strasse, plz, ort) FROM stdin;
1	Wes	29	binary	Fairview	2240 	Rushankou
2	Minette	97	diverse	Marquette	7    	Ivatsevichy
4	Henrik	38	female	Del Mar	722  	Huangxikou
5	Astrid	64	male	Kropf	204  	Baishuiyang
6	Leroy	38	female	Texas	19   	Pop
7	Lauraine	32	female	Sutteridge	2    	Sarajevo
8	Cathleen	42	male	Ridgeway	8543 	Shibukawa
9	Duff	33	diverse	Hallows	59   	Araçatuba
10	Kai	99	nonbinary	Rusk	54   	Tržič
11	Kirk	94	male	Carey	44834	Dengtang
12	Nevin	70	diverse	Weeping Birch	587  	Zinat
13	Costa	12	binary	Cherokee	2473 	Kabir
14	Anna-diana	5	diverse	Dexter	968  	Birnin Kebbi
15	Cecilio	98	female	Buell	88   	Évosmos
16	Stepha	41	nonbinary	Summer Ridge	99   	Qincheng
17	Othilie	94	nonbinary	Morningstar	6226 	Shingū
18	Free	30	male	Talisman	79   	Gataivai
19	Byrann	94	female	Westend	639  	Huanipaca
20	Neill	32	binary	Goodland	5    	Cochrane
3	Aileen	70	diverse	Corscot	32639	Mulyosari
\.


--
-- Data for Name: einschraenung; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.einschraenung (eid, massnahme, von, bis, mabussgeld, bussgeld) FROM stdin;
2	b2i7t4r1	2022-04-06	2021-09-14	1697.00	3935.00
4	r3i7o0l1	2021-12-05	2022-02-22	7237.00	162.00
6	x9k7s5p6	2022-01-23	2021-08-13	5796.00	3590.00
10	x9i2v8v0	2022-03-23	2021-07-12	344.00	8434.00
11	k5p1r8m7	2022-04-26	2021-07-30	244.00	4337.00
12	k1p5p3n3	2021-10-24	2022-03-25	8914.00	4686.00
13	i8f5b5a0	2022-04-28	2021-07-05	4634.00	8649.00
15	s8p0o4t8	2021-07-01	2022-03-17	2728.00	949.00
17	r9r2l3n1	2021-11-27	2022-03-18	7659.00	552.00
1	g8p8k7z7	2022-06-25	2021-09-12	6375.00	0.00
3	j9d6x4v2	2021-09-13	2022-05-02	8078.00	0.00
5	u2u1s0v5	2021-12-29	2022-06-18	2757.00	0.00
7	m4c2g4h5	2022-06-09	2021-08-03	6972.00	0.00
8	w6x1c9x6	2022-02-11	2022-01-21	3154.00	0.00
9	e0e2q1d3	2021-09-29	2022-02-27	5457.00	0.00
14	w5h3x9m1	2022-02-05	2021-10-10	3881.00	0.00
16	a1y0m3p2	2022-05-16	2022-06-18	4909.00	0.00
18	p9j3b2p4	2021-07-09	2021-08-03	7020.00	0.00
19	r8j8f7h1	2021-08-19	2022-03-28	8548.00	0.00
20	z0q0g9t4	2021-11-01	2022-01-22	5575.00	0.00
\.


--
-- Data for Name: gesundheitsamt; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.gesundheitsamt (amtid, strasse, plz, ort) FROM stdin;
1	Esker	435  	Antaparco
2	Mifflin	3136 	Lapaz
3	Memorial	26028	Marumori
4	Esker	76   	Sinŭiju
5	Village	06   	Bitin
6	Park Meadow	8    	Sarreguemines
7	Duke	215  	Dadong
8	Merrick	7    	Zbarazh
9	Stang	0    	Bayt Ūmmar
10	Cambridge	0414 	Al Jahrā’
11	Annamark	70   	Krajan Kidul Rojopolo
12	Cody	1    	Czudec
13	Mayfield	901  	Veselynove
14	Crest Line	10671	Dadukou
15	Alpine	9943 	Aplahoué
16	Bultman	91689	Cauto Cristo
17	Lakeland	8    	Gembu
18	Calypso	8444 	Yako
19	Westerfield	39   	Hénin-Beaumont
20	Coleman	07042	Taurisma
\.


--
-- Data for Name: gha_hat_mit; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.gha_hat_mit (mid, amtid) FROM stdin;
12	17
8	7
8	11
15	14
18	8
10	11
11	7
15	17
10	12
20	15
5	11
7	15
7	20
7	3
16	14
20	7
6	17
12	4
2	18
11	19
\.


--
-- Data for Name: impfng_enthaelt_impfstff; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.impfng_enthaelt_impfstff (isid, chargenummer) FROM stdin;
2	15
17	14
9	19
9	19
2	4
12	8
16	17
9	4
13	12
7	16
10	9
9	12
1	17
15	16
12	11
3	19
19	11
3	11
11	20
2	9
\.


--
-- Data for Name: impfstoff; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.impfstoff (isid, art, hersteller) FROM stdin;
1	AstraZeneca	Johnson&Johnson
2	BioNTech/Pfizer	Johnson&Johnson
3	BioNTech/Pfizer	Johnson&Johnson
4	Moderna	AstraZeneca
5	BioNTech/Pfizer	Johnson&Johnson
6	BioNTech/Pfizer	BioNTech/Pfizer
7	AstraZeneca	Johnson&Johnson
8	AstraZeneca	Moderna
9	BioNTech/Pfizer	Moderna
10	Johnson&Johnson	AstraZeneca
11	Moderna	Johnson&Johnson
12	BioNTech/Pfizer	Moderna
13	AstraZeneca	AstraZeneca
14	AstraZeneca	BioNTech/Pfizer
15	BioNTech/Pfizer	AstraZeneca
16	AstraZeneca	BioNTech/Pfizer
17	AstraZeneca	BioNTech/Pfizer
18	Moderna	Johnson&Johnson
19	Moderna	Johnson&Johnson
20	Johnson&Johnson	AstraZeneca
\.


--
-- Data for Name: impfung; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.impfung (chargenummer, datum, ablaufdatum) FROM stdin;
1	2019-08-26	2019-02-11
2	2020-10-17	2022-03-25
3	2020-12-09	2020-08-07
4	2020-12-08	2019-06-08
5	2019-08-13	2022-06-11
6	2019-10-26	2020-11-05
7	2019-07-27	2020-05-16
8	2021-03-11	2019-12-12
9	2019-11-11	2021-06-08
10	2020-11-17	2021-01-17
11	2020-06-15	2019-01-30
12	2020-09-30	2019-03-31
13	2021-11-13	2020-01-18
14	2020-02-29	2020-03-05
15	2020-09-13	2021-12-23
16	2021-04-14	2020-03-17
17	2019-07-11	2019-09-13
18	2020-06-24	2020-12-18
19	2021-06-27	2021-07-05
20	2022-02-14	2020-07-27
\.


--
-- Data for Name: impfzentrum; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.impfzentrum (izid, strasse, plz, ort) FROM stdin;
1	Stone Corner	0616 	Manaus
2	Grasskamp	42100	Dayapan
3	Buell	4    	Lianzhou
4	Redwing	59   	Richmond
5	Huxley	4    	Malandag
6	Roth	7482 	Jinbi
7	Katie	389  	Lysekil
8	Grasskamp	3    	Ningxi
9	Jenna	8    	Mali Iđoš
10	Ryan	911  	Votorantim
11	Gale	3    	Mwinilunga
12	Tomscot	53503	Xinyu
13	Vermont	46879	Garoua Boulaï
14	Hoard	340  	Strabychovo
15	Mockingbird	04   	Lasehao
16	Merchant	10   	Sanlicheng
17	Kropf	71039	Lyon
18	Bowman	7812 	Ami
19	Del Mar	30   	Doumuhu
20	Talisman	3209 	Talisay
\.


--
-- Data for Name: iz_hat_impf; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.iz_hat_impf (izid, chargenummer) FROM stdin;
19	3
11	5
18	14
17	6
10	11
16	20
13	6
14	10
17	19
13	13
1	7
4	8
19	2
20	8
2	2
2	14
4	9
11	9
3	1
3	4
\.


--
-- Data for Name: kontrolle; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.kontrolle (qid, mid) FROM stdin;
8	16
11	3
13	12
16	17
4	12
16	1
16	9
16	14
10	16
13	2
4	7
14	5
18	4
3	12
15	12
17	14
19	9
18	16
1	6
17	20
\.


--
-- Data for Name: mitarbeiter; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.mitarbeiter (mid, berufstaetigkeit, strasse, plz, ort) FROM stdin;
1	Support	Erie	4951 	Rudnya
2	Training	Surrey	433  	Hilotongan
3	Research and Development	Talmadge	200  	Tögrög
4	Services	Comanche	384  	Xinmin
5	Accounting	Rigney	41834	Pancoran
6	Business Development	Maryland	067  	Tianyi
7	Research and Development	Bay	7    	Beishan
8	Research and Development	Buena Vista	869  	Cimongkor
9	Product Management	Golf View	0444 	Lâm Thao
10	Services	Shoshone	52503	Igir-igir
11	Training	Nelson	062  	Panggungsari
12	Services	Montana	36   	Quinarayan
13	Legal	Hollow Ridge	208  	Cové
14	Sales	6th	4836 	Shibata
15	Research and Development	Marcy	53   	Saint John
16	Marketing	Amoth	069  	Urho
17	Accounting	7th	10700	Povenets
18	Services	Holy Cross	934  	Marxog
19	Human Resources	8th	64   	Alvaiázere
20	Human Resources	Muir	5464 	Longotea
\.


--
-- Data for Name: mitarbtr_verhaengt_einschrnkng; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.mitarbtr_verhaengt_einschrnkng (mid, eid) FROM stdin;
16	1
12	14
19	1
15	9
15	13
20	13
3	14
15	10
3	13
18	6
2	11
7	20
13	19
6	19
19	16
15	12
3	16
4	5
12	12
7	18
\.


--
-- Data for Name: quarantaene; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.quarantaene (qid, von, bis, strasse, plz, ort) FROM stdin;
2	2022-06-16	2020-08-14	Burrows	4185 	Ranot
3	2020-10-11	2021-12-31	Kensington	5    	Istres
4	2020-09-11	2021-02-26	Crest Line	3720 	Orléans
5	2022-05-03	2021-06-12	Stuart	353  	Kishorganj
6	2020-07-08	2022-05-22	Sherman	6023 	Dimitrovgrad
8	2021-07-14	2020-11-10	Ramsey	9    	Artemivs’k
9	2020-01-30	2020-03-03	Karstens	78   	Grand Rapids
10	2021-09-10	2022-05-25	Pepper Wood	607  	Dar Chabanne
11	2022-06-26	2021-08-02	Carpenter	660  	Lazeshchyna
12	2021-08-21	2022-05-23	Dapin	62   	Ayacucho
13	2021-11-06	2021-09-24	Maple	1    	Juvisy-sur-Orge
14	2021-02-08	2021-06-21	Algoma	8714 	La Soledad
15	2021-06-21	2020-11-25	Monica	143  	Lijiapu
16	2020-10-02	2020-10-05	Fieldstone	95   	Mendez-Nuñez
17	2021-01-05	2020-03-02	Lerdahl	04431	Donetsk
18	2021-03-01	2021-01-20	Cottonwood	894  	Mengxingzhuang
19	2022-03-06	2022-06-05	Oneill	14   	Sacsamarca
20	2021-05-01	2021-02-04	Westend	826  	Přibyslav
7	2021-04-27	2020-01-30	Sullivan	665  	Marburg
1	2021-04-22	2021-01-27	Farragut	53579	Marburg
\.


--
-- Data for Name: test; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.test (tid, datum, testkit, ergebnis) FROM stdin;
1	2021-09-12	AntiGen	negativ
2	2022-06-30	PCR	negativ
3	2022-06-01	PCR	positiv
4	2021-04-17	AntiGen	negativ
5	2022-03-04	AntiGen	positiv
6	2021-07-02	PCR	negativ
7	2020-12-12	PCR	positiv
8	2022-04-30	AntiGen	negativ
9	2020-09-24	AntiGen	negativ
10	2021-12-22	PCR	positiv
11	2022-01-20	PCR	negativ
12	2021-03-02	PCR	positiv
13	2022-05-25	PCR	negativ
14	2022-02-19	AntiGen	positiv
15	2022-04-08	PCR	negativ
16	2022-06-23	AntiGen	negativ
17	2021-03-17	AntiGen	positiv
18	2021-12-27	PCR	positiv
19	2021-02-19	PCR	negativ
20	2021-01-17	AntiGen	negativ
\.


--
-- Data for Name: testzentrum; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.testzentrum (tzid, strasse, plz, ort) FROM stdin;
1	Bonner	3    	Trzebinia
2	Jenna	954  	Xiadian
3	Walton	80   	Drakino
4	School	58   	Washington
5	Londonderry	5073 	Alajuelita
6	Lerdahl	47372	Ubon Ratchathani
7	5th	99919	Qingxi
8	Coolidge	51161	Al Jamālīyah
9	Bowman	66565	Nantes
10	Rieder	0964 	Sölvesborg
11	Oak Valley	017  	Sangke
12	Mcbride	0559 	Sâmraông
13	Stuart	774  	Rio Claro
14	Kipling	7822 	Mizque
15	Darwin	9    	Gongnong
16	Russell	9    	Vyshneve
17	Delladonna	1152 	Xinhua
18	Dwight	54   	Smiřice
19	Karstens	5    	Monjas
20	Burrows	82   	Jiangdong
\.


--
-- Data for Name: tz_macht_test; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.tz_macht_test (tid, tzid) FROM stdin;
16	15
16	9
9	16
4	5
19	17
4	5
9	7
1	10
14	3
7	1
13	19
9	4
8	11
14	20
14	14
5	5
7	16
1	4
13	15
9	3
\.


--
-- Name: buerger_bid_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.buerger_bid_seq', 1, false);


--
-- Name: einschraenung_eid_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.einschraenung_eid_seq', 1, false);


--
-- Name: gesundheitsamt_amtid_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.gesundheitsamt_amtid_seq', 1, false);


--
-- Name: impfung_chargenummer_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.impfung_chargenummer_seq', 1, false);


--
-- Name: impfzentrum_izid_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.impfzentrum_izid_seq', 1, false);


--
-- Name: imppfstoff_isid_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.imppfstoff_isid_seq', 1, false);


--
-- Name: mitarbeiter_mid_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.mitarbeiter_mid_seq', 1, false);


--
-- Name: quarantaene_qid_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.quarantaene_qid_seq', 1, false);


--
-- Name: test_tid_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.test_tid_seq', 1, false);


--
-- Name: testzentrum_tzid_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.testzentrum_tzid_seq', 1, false);


--
-- Name: buerger buerger_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.buerger
    ADD CONSTRAINT buerger_pkey PRIMARY KEY (bid);


--
-- Name: einschraenung einschraenung_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.einschraenung
    ADD CONSTRAINT einschraenung_pkey PRIMARY KEY (eid);


--
-- Name: gesundheitsamt gesundheitsamt_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.gesundheitsamt
    ADD CONSTRAINT gesundheitsamt_pkey PRIMARY KEY (amtid);


--
-- Name: gha_hat_mit gha_hat_mit_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.gha_hat_mit
    ADD CONSTRAINT gha_hat_mit_pkey PRIMARY KEY (amtid, mid);


--
-- Name: impfung impfung_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.impfung
    ADD CONSTRAINT impfung_pkey PRIMARY KEY (chargenummer);


--
-- Name: impfzentrum impfzentrum_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.impfzentrum
    ADD CONSTRAINT impfzentrum_pkey PRIMARY KEY (izid);


--
-- Name: impfstoff imppfstoff_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.impfstoff
    ADD CONSTRAINT imppfstoff_pkey PRIMARY KEY (isid);


--
-- Name: mitarbeiter mitarbeiter_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.mitarbeiter
    ADD CONSTRAINT mitarbeiter_pkey PRIMARY KEY (mid);


--
-- Name: quarantaene quarantaene_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.quarantaene
    ADD CONSTRAINT quarantaene_pkey PRIMARY KEY (qid);


--
-- Name: test test_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (tid);


--
-- Name: testzentrum testzentrum_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.testzentrum
    ADD CONSTRAINT testzentrum_pkey PRIMARY KEY (tzid);


--
-- Name: brgr_geht_in_quarntn brgr_geht_in_quarntn_bid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.brgr_geht_in_quarntn
    ADD CONSTRAINT brgr_geht_in_quarntn_bid_fkey FOREIGN KEY (bid) REFERENCES public.buerger(bid);


--
-- Name: brgr_geht_in_quarntn brgr_geht_in_quarntn_qid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.brgr_geht_in_quarntn
    ADD CONSTRAINT brgr_geht_in_quarntn_qid_fkey FOREIGN KEY (qid) REFERENCES public.quarantaene(qid);


--
-- Name: brgr_ght_impfztrm brgr_ght_impfztrm_bid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.brgr_ght_impfztrm
    ADD CONSTRAINT brgr_ght_impfztrm_bid_fkey FOREIGN KEY (bid) REFERENCES public.buerger(bid);


--
-- Name: brgr_ght_impfztrm brgr_ght_impfztrm_izid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.brgr_ght_impfztrm
    ADD CONSTRAINT brgr_ght_impfztrm_izid_fkey FOREIGN KEY (izid) REFERENCES public.impfzentrum(izid);


--
-- Name: brgr_ght_testztrm brgr_ght_testztrm_bid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.brgr_ght_testztrm
    ADD CONSTRAINT brgr_ght_testztrm_bid_fkey FOREIGN KEY (bid) REFERENCES public.buerger(bid);


--
-- Name: brgr_ght_testztrm brgr_ght_testztrm_tzid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.brgr_ght_testztrm
    ADD CONSTRAINT brgr_ght_testztrm_tzid_fkey FOREIGN KEY (tzid) REFERENCES public.testzentrum(tzid);


--
-- Name: brgr_verstosst_einschrnkng brgr_verstosst_einschrnkng_bid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.brgr_verstosst_einschrnkng
    ADD CONSTRAINT brgr_verstosst_einschrnkng_bid_fkey FOREIGN KEY (bid) REFERENCES public.buerger(bid);


--
-- Name: brgr_verstosst_einschrnkng brgr_verstosst_einschrnkng_eid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.brgr_verstosst_einschrnkng
    ADD CONSTRAINT brgr_verstosst_einschrnkng_eid_fkey FOREIGN KEY (eid) REFERENCES public.einschraenung(eid);


--
-- Name: gha_hat_mit gha_hat_mit_amtid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.gha_hat_mit
    ADD CONSTRAINT gha_hat_mit_amtid_fkey FOREIGN KEY (amtid) REFERENCES public.gesundheitsamt(amtid);


--
-- Name: gha_hat_mit gha_hat_mit_mid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.gha_hat_mit
    ADD CONSTRAINT gha_hat_mit_mid_fkey FOREIGN KEY (mid) REFERENCES public.mitarbeiter(mid);


--
-- Name: impfng_enthaelt_impfstff impfng_enthaelt_impfstff_chargenummer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.impfng_enthaelt_impfstff
    ADD CONSTRAINT impfng_enthaelt_impfstff_chargenummer_fkey FOREIGN KEY (chargenummer) REFERENCES public.impfung(chargenummer);


--
-- Name: impfng_enthaelt_impfstff impfng_enthaelt_impfstff_isid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.impfng_enthaelt_impfstff
    ADD CONSTRAINT impfng_enthaelt_impfstff_isid_fkey FOREIGN KEY (isid) REFERENCES public.impfstoff(isid);


--
-- Name: iz_hat_impf iz_hat_impf_chargenummer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.iz_hat_impf
    ADD CONSTRAINT iz_hat_impf_chargenummer_fkey FOREIGN KEY (chargenummer) REFERENCES public.impfung(chargenummer);


--
-- Name: iz_hat_impf iz_hat_impf_izid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.iz_hat_impf
    ADD CONSTRAINT iz_hat_impf_izid_fkey FOREIGN KEY (izid) REFERENCES public.impfzentrum(izid);


--
-- Name: kontrolle kontrolle_mid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.kontrolle
    ADD CONSTRAINT kontrolle_mid_fkey FOREIGN KEY (mid) REFERENCES public.mitarbeiter(mid);


--
-- Name: kontrolle kontrolle_qid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.kontrolle
    ADD CONSTRAINT kontrolle_qid_fkey FOREIGN KEY (qid) REFERENCES public.quarantaene(qid);


--
-- Name: mitarbtr_verhaengt_einschrnkng mitarbtr_verhaengt_einschrnkng_eid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.mitarbtr_verhaengt_einschrnkng
    ADD CONSTRAINT mitarbtr_verhaengt_einschrnkng_eid_fkey FOREIGN KEY (eid) REFERENCES public.einschraenung(eid);


--
-- Name: mitarbtr_verhaengt_einschrnkng mitarbtr_verhaengt_einschrnkng_mid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.mitarbtr_verhaengt_einschrnkng
    ADD CONSTRAINT mitarbtr_verhaengt_einschrnkng_mid_fkey FOREIGN KEY (mid) REFERENCES public.mitarbeiter(mid);


--
-- Name: tz_macht_test tz_macht_test_tid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.tz_macht_test
    ADD CONSTRAINT tz_macht_test_tid_fkey FOREIGN KEY (tid) REFERENCES public.test(tid);


--
-- Name: tz_macht_test tz_macht_test_tzid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.tz_macht_test
    ADD CONSTRAINT tz_macht_test_tzid_fkey FOREIGN KEY (tzid) REFERENCES public.testzentrum(tzid);


--
-- PostgreSQL database dump complete
--

