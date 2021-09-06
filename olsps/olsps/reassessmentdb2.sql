--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

-- Started on 2021-08-15 15:06:09

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
-- TOC entry 204 (class 1259 OID 457633)
-- Name: coefficients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.coefficients (
    id integer,
    "Factor" character varying(250),
    "Item" character varying(250),
    "Coefficient_value" character varying(250)
);


ALTER TABLE public.coefficients OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 457639)
-- Name: factor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.factor (
);


ALTER TABLE public.factor OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 457662)
-- Name: score; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.score (
    username character varying,
    item character varying,
    score integer,
    id integer NOT NULL
);


ALTER TABLE public.score OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 457675)
-- Name: score_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.score ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.score_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 99999999
    CACHE 1
);


--
-- TOC entry 202 (class 1259 OID 457622)
-- Name: scores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.scores (
    id integer NOT NULL,
    username character varying,
    item character varying,
    score character varying
);


ALTER TABLE public.scores OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 457625)
-- Name: scores_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.scores ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.scores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 99999999
    CACHE 1
);


--
-- TOC entry 207 (class 1259 OID 457644)
-- Name: secondary_scores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.secondary_scores (
    id integer NOT NULL,
    username character varying,
    item character varying,
    score character varying
);


ALTER TABLE public.secondary_scores OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 457642)
-- Name: secondary_scores_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.secondary_scores ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.secondary_scores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 99999999
    CACHE 1
);


--
-- TOC entry 2839 (class 0 OID 457633)
-- Dependencies: 204
-- Data for Name: coefficients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.coefficients (id, "Factor", "Item", "Coefficient_value") FROM stdin;



--
-- TOC entry 2840 (class 0 OID 457639)
-- Dependencies: 205
-- Data for Name: factor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.factor  FROM stdin;



--
-- TOC entry 2843 (class 0 OID 457662)
-- Dependencies: 208
-- Data for Name: score; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.score (username, item, score, id) FROM stdin;
david.levy@enjol.com	BWS_Adaptable_Coach	0	1
david.levy@enjol.com	BWS_Adaptable_Coach	0	2
david.levy@enjol.com	BWS_Adaptable_Comb	108	3
david.levy@enjol.com	BWS_Adaptable_Comb	108	4
david.levy@enjol.com	BWS_Adaptable_Self 	106	5
david.levy@enjol.com	BWS_Adaptable_Self 	106	6
david.levy@enjol.com	BWS_Awareness of others_Coach	0	7
david.levy@enjol.com	BWS_Awareness of others_Coach	0	8
david.levy@enjol.com	BWS_Awareness of others_Comb	0	9
david.levy@enjol.com	BWS_Awareness of others_Comb	0	10
david.levy@enjol.com	BWS_Caring_Coach	0	11
david.levy@enjol.com	BWS_Caring_Coach	0	12
david.levy@enjol.com	BWS_Caring_Comb	65	13
david.levy@enjol.com	BWS_Caring_Comb	65	14
david.levy@enjol.com	BWS_Caring_Self 	64	15
david.levy@enjol.com	BWS_Caring_Self 	64	16
david.levy@enjol.com	BWS_Collaborative_Coach	50	17
david.levy@enjol.com	BWS_Collaborative_Coach	50	18
david.levy@enjol.com	BWS_Collaborative_Comb	50	19
david.levy@enjol.com	BWS_Collaborative_Comb	50	20
david.levy@enjol.com	BWS_Committed_Coach	0	21
david.levy@enjol.com	BWS_Committed_Coach	0	22
david.levy@enjol.com	BWS_Committed_Comb	64	23
david.levy@enjol.com	BWS_Committed_Comb	64	24
david.levy@enjol.com	BWS_Committed_Self	64	25
david.levy@enjol.com	BWS_Committed_Self	64	26
david.levy@enjol.com	BWS_Committed_Self 	64	27
david.levy@enjol.com	BWS_Committed_Self 	64	28
david.levy@enjol.com	BWS_Competitive_Coach	0	29
david.levy@enjol.com	BWS_Competitive_Coach	0	30
david.levy@enjol.com	BWS_Competitive_Comb	65	31
david.levy@enjol.com	BWS_Competitive_Comb	65	32
david.levy@enjol.com	BWS_Competitive_Self 	64	33
david.levy@enjol.com	BWS_Competitive_Self 	64	34
david.levy@enjol.com	BWS_Confident_Coach	0	35
david.levy@enjol.com	BWS_Confident_Coach	0	36
david.levy@enjol.com	BWS_Confident_Comb	7	37
david.levy@enjol.com	BWS_Confident_Comb	7	38
david.levy@enjol.com	BWS_Confident_Self 	9	39
david.levy@enjol.com	BWS_Confident_Self 	9	40
david.levy@enjol.com	BWS_Courageous_Coach	0	41
david.levy@enjol.com	BWS_Courageous_Coach	0	42
david.levy@enjol.com	BWS_Courageous_Comb	0	43
david.levy@enjol.com	BWS_Courageous_Comb	0	44
david.levy@enjol.com	BWS_Empathetic_Coach	0	45
david.levy@enjol.com	BWS_Empathetic_Coach	0	46
david.levy@enjol.com	BWS_Empathetic_Comb	36	47
david.levy@enjol.com	BWS_Empathetic_Comb	36	48
david.levy@enjol.com	BWS_Empathetic_Self 	37	49
david.levy@enjol.com	BWS_Empathetic_Self 	37	50
david.levy@enjol.com	BWS_Energised_Coach	0	51
david.levy@enjol.com	BWS_Energised_Coach	0	52
david.levy@enjol.com	BWS_Energised_Comb	-11	53
david.levy@enjol.com	BWS_Energised_Comb	-11	54
david.levy@enjol.com	BWS_Energised_Self 	-9	55
david.levy@enjol.com	BWS_Energised_Self 	-9	56
david.levy@enjol.com	BWS_Expansive_Coach	0	57
david.levy@enjol.com	BWS_Expansive_Coach	0	58
david.levy@enjol.com	BWS_Expansive_Comb	34	59
david.levy@enjol.com	BWS_Expansive_Comb	34	60
david.levy@enjol.com	BWS_Expansive_Self	34	61
david.levy@enjol.com	BWS_Expansive_Self	34	62
david.levy@enjol.com	BWS_Expansive_Self 	34	63
david.levy@enjol.com	BWS_Expansive_Self 	34	64
david.levy@enjol.com	BWS_Focused_Coach	0	65
david.levy@enjol.com	BWS_Focused_Coach	0	66
david.levy@enjol.com	BWS_Focused_Comb	70	67
david.levy@enjol.com	BWS_Focused_Comb	70	68
david.levy@enjol.com	BWS_Focused_Self 	69	69
david.levy@enjol.com	BWS_Focused_Self 	69	70
david.levy@enjol.com	BWS_Guarded_Coach	0	71
david.levy@enjol.com	BWS_Guarded_Coach	0	72
david.levy@enjol.com	BWS_Guarded_Comb	61	73
david.levy@enjol.com	BWS_Guarded_Comb	61	74
david.levy@enjol.com	BWS_Guarded_Self 	60	75
david.levy@enjol.com	BWS_Guarded_Self 	60	76
david.levy@enjol.com	BWS_In-control_Comb	29	77
david.levy@enjol.com	BWS_In-control_Comb	29	78
david.levy@enjol.com	BWS_In-control_Self 	29	79
david.levy@enjol.com	BWS_In-control_Self 	29	80
david.levy@enjol.com	BWS_Motivated_Coach	0	81
david.levy@enjol.com	BWS_Motivated_Coach	0	82
david.levy@enjol.com	BWS_Motivated_Comb	90	83
david.levy@enjol.com	BWS_Motivated_Comb	90	84
david.levy@enjol.com	BWS_Motivated_Self 	88	85
david.levy@enjol.com	BWS_Motivated_Self 	88	86
david.levy@enjol.com	BWS_Open_Coach	87	87
david.levy@enjol.com	BWS_Open_Coach	87	88
david.levy@enjol.com	BWS_Open_Comb	58	89
david.levy@enjol.com	BWS_Open_Comb	58	90
david.levy@enjol.com	BWS_Open_Self 	54	91
david.levy@enjol.com	BWS_Open_Self 	54	92
david.levy@enjol.com	BWS_Optimistic_Coach	0	93
david.levy@enjol.com	BWS_Optimistic_Coach	0	94
david.levy@enjol.com	BWS_Optimistic_Comb	22	95
david.levy@enjol.com	BWS_Optimistic_Comb	22	96
david.levy@enjol.com	BWS_Optimistic_Self 	23	97
david.levy@enjol.com	BWS_Optimistic_Self 	23	98
david.levy@enjol.com	BWS_Proactive_Coach	0	99
david.levy@enjol.com	BWS_Proactive_Coach	0	100
david.levy@enjol.com	BWS_Proactive_Comb	19	101
david.levy@enjol.com	BWS_Proactive_Comb	19	102
david.levy@enjol.com	BWS_Proactive_Self 	20	103
david.levy@enjol.com	BWS_Proactive_Self 	20	104
david.levy@enjol.com	BWS_Realistic_Coach	0	105
david.levy@enjol.com	BWS_Realistic_Coach	0	106
david.levy@enjol.com	BWS_Realistic_Comb	80	107
david.levy@enjol.com	BWS_Realistic_Comb	80	108
david.levy@enjol.com	BWS_Realistic_Self	78	109
david.levy@enjol.com	BWS_Realistic_Self	78	110
david.levy@enjol.com	BWS_Realistic_Self 	78	111
david.levy@enjol.com	BWS_Realistic_Self 	78	112
david.levy@enjol.com	BWS_Resilient_Coach	0	113
david.levy@enjol.com	BWS_Resilient_Coach	0	114
david.levy@enjol.com	BWS_Resilient_Comb	50	115
david.levy@enjol.com	BWS_Resilient_Comb	50	116
david.levy@enjol.com	BWS_Resilient_Self 	50	117
david.levy@enjol.com	BWS_Resilient_Self 	50	118
david.levy@enjol.com	BWS_Responsive_Coach	13	119
david.levy@enjol.com	BWS_Responsive_Coach	13	120
david.levy@enjol.com	BWS_Responsive_Comb	99	121
david.levy@enjol.com	BWS_Responsive_Comb	99	122
david.levy@enjol.com	BWS_Responsive_Self 	106	123
david.levy@enjol.com	BWS_Responsive_Self 	106	124
david.levy@enjol.com	BWS_Risk-taker_Coach	0	125
david.levy@enjol.com	BWS_Risk-taker_Coach	0	126
david.levy@enjol.com	BWS_Risk-taker_Comb	21	127
david.levy@enjol.com	BWS_Risk-taker_Comb	21	128
david.levy@enjol.com	BWS_Risk-taker_Self	22	129
david.levy@enjol.com	BWS_Risk-taker_Self	22	130
david.levy@enjol.com	BWS_Risk-taker_Self 	22	131
david.levy@enjol.com	BWS_Risk-taker_Self 	22	132
david.levy@enjol.com	BWS_Selective_Coach	0	133
david.levy@enjol.com	BWS_Selective_Coach	0	134
david.levy@enjol.com	BWS_Selective_Comb	61	135
david.levy@enjol.com	BWS_Selective_Comb	61	136
david.levy@enjol.com	BWS_Selective_Self 	60	137
david.levy@enjol.com	BWS_Selective_Self 	60	138
david.levy@enjol.com	BWS_Self-orientated_Coach	0	139
david.levy@enjol.com	BWS_Self-orientated_Coach	0	140
david.levy@enjol.com	BWS_Self-orientated_Comb	57	141
david.levy@enjol.com	BWS_Self-orientated_Comb	57	142
david.levy@enjol.com	BWS_Self-orientated_Self 	57	143
david.levy@enjol.com	BWS_Self-orientated_Self 	57	144
david.levy@enjol.com	BWS_Stressed_Coach	0	145
david.levy@enjol.com	BWS_Stressed_Coach	0	146
david.levy@enjol.com	BWS_Stressed_Comb	4	147
david.levy@enjol.com	BWS_Stressed_Comb	4	148
david.levy@enjol.com	BWS_Stressed_Self 	5	149
david.levy@enjol.com	BWS_Stressed_Self 	5	150
david.levy@enjol.com	BWS_Transactional_Coach	0	151
david.levy@enjol.com	BWS_Transactional_Coach	0	152
david.levy@enjol.com	BWS_Transactional_Comb	72	153
david.levy@enjol.com	BWS_Transactional_Comb	72	154
david.levy@enjol.com	BWS_Transactional_Self 	71	155
david.levy@enjol.com	BWS_Transactional_Self 	71	156
david.levy@enjol.com	BWS_Trusting_Coach	50	157
david.levy@enjol.com	BWS_Trusting_Coach	50	158
david.levy@enjol.com	BWS_Trusting_Comb	40	159
david.levy@enjol.com	BWS_Trusting_Comb	40	160
david.levy@enjol.com	BWS_Trusting_Self	40	161
david.levy@enjol.com	BWS_Trusting_Self	40	162
david.levy@enjol.com	BWS_Trusting_Self 	40	163
david.levy@enjol.com	BWS_Trusting_Self 	40	164
david.levy@enjol.com	ER 	0	165
david.levy@enjol.com	ER 	0	166
david.levy@enjol.com	F1	0	167
david.levy@enjol.com	F1	0	168
david.levy@enjol.com	F2	0	169
david.levy@enjol.com	F2	0	170
david.levy@enjol.com	F3	0	171
david.levy@enjol.com	F3	0	172
david.levy@enjol.com	F4	0	173
david.levy@enjol.com	F4	0	174
david.levy@enjol.com	F5	0	175
david.levy@enjol.com	F5	0	176
david.levy@enjol.com	F6	0	177
david.levy@enjol.com	F6	0	178
david.levy@enjol.com	Lead_Cares_Self 	0	179
david.levy@enjol.com	Lead_Cares_Self 	0	180
david.levy@enjol.com	Lead_Issue_Self 	100	181
david.levy@enjol.com	Lead_Issue_Self 	100	182
david.levy@enjol.com	Lead_Potential_Self 	100	183
david.levy@enjol.com	Lead_Potential_Self 	100	184
david.levy@enjol.com	Lead_Value_Self	0	185
david.levy@enjol.com	Lead_Value_Self	0	186
david.levy@enjol.com	Lead_Value_Self 	0	187
david.levy@enjol.com	Lead_Value_Self 	0	188
david.levy@enjol.com	Loc_Capability_int_Self 	60	189
david.levy@enjol.com	Loc_Capability_int_Self 	60	190
david.levy@enjol.com	Loc_Ethic_int_Self 	64	191
david.levy@enjol.com	Loc_Ethic_int_Self 	64	192
david.levy@enjol.com	Loc_Fortune_ext_Self 	36	193
david.levy@enjol.com	Loc_Fortune_ext_Self 	36	194
david.levy@enjol.com	Loc_Networks_ext_Self 	40	195
david.levy@enjol.com	Loc_Networks_ext_Self 	40	196
david.levy@enjol.com	Mot_Competitive_Coach	0	197
david.levy@enjol.com	Mot_Competitive_Coach	0	198
david.levy@enjol.com	Mot_Consequences_Coach	0	199
david.levy@enjol.com	Mot_Consequences_Coach	0	200
david.levy@enjol.com	Mot_Conviction_Coach	0	201
david.levy@enjol.com	Mot_Conviction_Coach	0	202
david.levy@enjol.com	Mot_Rewards_Coach	0	203
david.levy@enjol.com	Mot_Rewards_Coach	0	204
david.levy@enjol.com	RC_Disciplined_and_Structured_Coach	0	205
david.levy@enjol.com	RC_Disciplined_and_Structured_Coach	0	206
david.levy@enjol.com	RC_Disciplined_and_Structured_Comb	60	207
david.levy@enjol.com	RC_Disciplined_and_Structured_Comb	60	208
david.levy@enjol.com	RC_Disciplined_and_Structured_Self 	60	209
david.levy@enjol.com	RC_Disciplined_and_Structured_Self 	60	210
david.levy@enjol.com	RC_Genuinely_Interested_Coach	0	211
david.levy@enjol.com	RC_Genuinely_Interested_Coach	0	212
david.levy@enjol.com	RC_Genuinely_Interested_Comb	95	213
david.levy@enjol.com	RC_Genuinely_Interested_Comb	95	214
david.levy@enjol.com	RC_Genuinely_Interested_Self 	95	215
david.levy@enjol.com	RC_Genuinely_Interested_Self 	95	216
david.levy@enjol.com	RC_Initiative_Coach	0	217
david.levy@enjol.com	RC_Initiative_Coach	0	218
david.levy@enjol.com	RC_Initiative_Comb	30	219
david.levy@enjol.com	RC_Initiative_Comb	30	220
david.levy@enjol.com	RC_Initiative_Self	30	221
david.levy@enjol.com	RC_Initiative_Self	30	222
david.levy@enjol.com	RC_Initiative_Self 	30	223
david.levy@enjol.com	RC_Initiative_Self 	30	224
david.levy@enjol.com	RC_Instinct_Coach	0	225
david.levy@enjol.com	RC_Instinct_Coach	0	226
david.levy@enjol.com	RC_Instinct_Comb	0	227
david.levy@enjol.com	RC_Instinct_Comb	0	228
david.levy@enjol.com	RC_Instinct_Self 	0	229
david.levy@enjol.com	RC_Instinct_Self 	0	230
david.levy@enjol.com	RC_Organised_and_Delivers_Coach	0	231
david.levy@enjol.com	RC_Organised_and_Delivers_Coach	0	232
david.levy@enjol.com	RC_Organised_and_Delivers_Comb	40	233
david.levy@enjol.com	RC_Organised_and_Delivers_Comb	40	234
david.levy@enjol.com	RC_Organised_and_Delivers_Self	40	235
david.levy@enjol.com	RC_Organised_and_Delivers_Self	40	236
david.levy@enjol.com	RC_Organised_and_Delivers_Self 	40	237
david.levy@enjol.com	RC_Organised_and_Delivers_Self 	40	238
david.levy@enjol.com	RC_Proactive_Coach	0	239
david.levy@enjol.com	RC_Proactive_Coach	0	240
david.levy@enjol.com	RC_Proactive_Comb	15	241
david.levy@enjol.com	RC_Proactive_Comb	15	242
david.levy@enjol.com	RC_Proactive_Self 	15	243
david.levy@enjol.com	RC_Proactive_Self 	15	244
david.levy@enjol.com	RC_Problem_Solving_Coach	0	245
david.levy@enjol.com	RC_Problem_Solving_Coach	0	246
david.levy@enjol.com	RC_Problem_Solving_Comb	80	247
david.levy@enjol.com	RC_Problem_Solving_Comb	80	248
david.levy@enjol.com	RC_Problem_Solving_Self 	80	249
david.levy@enjol.com	RC_Problem_Solving_Self 	80	250
david.levy@enjol.com	RC_Relational_Coach	0	251
david.levy@enjol.com	RC_Relational_Coach	0	252
david.levy@enjol.com	RC_Relational_Comb	60	253
david.levy@enjol.com	RC_Relational_Comb	60	254
david.levy@enjol.com	RC_Relational_Self	60	255
david.levy@enjol.com	RC_Relational_Self	60	256
david.levy@enjol.com	RC_Relational_Self 	60	257
david.levy@enjol.com	RC_Relational_Self 	60	258
david.levy@enjol.com	RC_Responsive_Coach	0	259
david.levy@enjol.com	RC_Responsive_Coach	0	260
david.levy@enjol.com	RC_Responsive_Comb	100	261
david.levy@enjol.com	RC_Responsive_Comb	100	262
david.levy@enjol.com	RC_Responsive_Self 	100	263
david.levy@enjol.com	RC_Responsive_Self 	100	264
david.levy@enjol.com	RC_Solutions_Match_Clients_Needs_Coach	0	265
david.levy@enjol.com	RC_Solutions_Match_Clients_Needs_Coach	0	266
david.levy@enjol.com	RC_Solutions_Match_Clients_Needs_Comb	20	267
david.levy@enjol.com	RC_Solutions_Match_Clients_Needs_Comb	20	268
david.levy@enjol.com	RC_Solutions_Match_Clients_Needs_Self 	20	269
david.levy@enjol.com	RC_Solutions_Match_Clients_Needs_Self 	20	270
david.levy@enjol.com	Res_Hope_mind_Coach	0	271
david.levy@enjol.com	Res_Hope_mind_Coach	0	272
david.levy@enjol.com	Res_Hope_mind_Self	0	273
david.levy@enjol.com	Res_Hope_mind_Self	0	274
david.levy@enjol.com	Res_Hope_mind_Self 	0	275
david.levy@enjol.com	Res_Hope_mind_Self 	0	276
david.levy@enjol.com	Res_Improvise_orient_Coach	0	277
david.levy@enjol.com	Res_Improvise_orient_Coach	0	278
david.levy@enjol.com	Res_Improvise_orient_Self 	20	279
david.levy@enjol.com	Res_Improvise_orient_Self 	20	280
david.levy@enjol.com	Res_Perspective_orient_Coach	0	281
david.levy@enjol.com	Res_Perspective_orient_Coach	0	282
david.levy@enjol.com	Res_Perspective_orient_Self 	80	283
david.levy@enjol.com	Res_Perspective_orient_Self 	80	284
david.levy@enjol.com	Res_Reality_mind_Coach	0	285
david.levy@enjol.com	Res_Reality_mind_Coach	0	286
david.levy@enjol.com	Res_Reality_mind_Self	100	287
david.levy@enjol.com	Res_Reality_mind_Self	100	288
david.levy@enjol.com	Res_Reality_mind_Self 	100	289
david.levy@enjol.com	Res_Reality_mind_Self 	100	290
david.levy@enjol.com	Scn_Coping	58	291
david.levy@enjol.com	Scn_Coping	58	292
david.levy@enjol.com	Scn_Demanding	69	293
david.levy@enjol.com	Scn_Demanding	69	294
david.levy@enjol.com	SmO_Dealmaker_Coach	0	295
david.levy@enjol.com	SmO_Dealmaker_Coach	0	296
david.levy@enjol.com	SmO_Dealmaker_Comb	25	297
david.levy@enjol.com	SmO_Dealmaker_Comb	25	298
david.levy@enjol.com	SmO_Dealmaker_Self	25	299
david.levy@enjol.com	SmO_Dealmaker_Self	25	300
david.levy@enjol.com	SmO_Dealmaker_Self 	25	301
david.levy@enjol.com	SmO_Dealmaker_Self 	25	302
david.levy@enjol.com	SmO_Driven_Coach	0	303
david.levy@enjol.com	SmO_Driven_Coach	0	304
david.levy@enjol.com	SmO_Driven_Comb	0	305
david.levy@enjol.com	SmO_Driven_Comb	0	306
david.levy@enjol.com	SmO_Emot_Smart_Coach	0	307
david.levy@enjol.com	SmO_Emot_Smart_Coach	0	308
david.levy@enjol.com	SmO_Emot_Smart_Comb	50	309
david.levy@enjol.com	SmO_Emot_Smart_Comb	50	310
david.levy@enjol.com	SmO_Emot_Smart_Self 	50	311
david.levy@enjol.com	SmO_Emot_Smart_Self 	50	312
david.levy@enjol.com	SmO_Persuasive_Coach	0	313
david.levy@enjol.com	SmO_Persuasive_Coach	0	314
david.levy@enjol.com	SmO_Persuasive_Comb	45	315
david.levy@enjol.com	SmO_Persuasive_Comb	45	316
david.levy@enjol.com	SmO_Persuasive_Self 	45	317
david.levy@enjol.com	SmO_Persuasive_Self 	45	318
david.levy@enjol.com	SmO_Relat_Builder_Coach	0	319
david.levy@enjol.com	SmO_Relat_Builder_Coach	0	320
david.levy@enjol.com	SmO_Relat_Builder_Comb	45	321
david.levy@enjol.com	SmO_Relat_Builder_Comb	45	322
david.levy@enjol.com	SmO_Relat_Builder_Self 	45	323
david.levy@enjol.com	SmO_Relat_Builder_Self 	45	324
david.levy@enjol.com	SmO_RESILIENT_Coach	0	325
david.levy@enjol.com	SmO_RESILIENT_Coach	0	326
david.levy@enjol.com	SmO_RESILIENT_Comb	65	327
david.levy@enjol.com	SmO_RESILIENT_Comb	65	328
david.levy@enjol.com	SmO_RESILIENT_Self	65	329
david.levy@enjol.com	SmO_RESILIENT_Self	65	330
david.levy@enjol.com	SmO_RESILIENT_Self 	65	331
david.levy@enjol.com	SmO_RESILIENT_Self 	65	332
david.levy@enjol.com	SmO_Self-Belief_Coach	0	333
david.levy@enjol.com	SmO_Self-Belief_Coach	0	334
david.levy@enjol.com	SmO_Self-Belief_Comb	40	335
david.levy@enjol.com	SmO_Self-Belief_Comb	40	336
david.levy@enjol.com	SmO_Self-Belief_Self 	40	337
david.levy@enjol.com	SmO_Self-Belief_Self 	40	338
david.levy@enjol.com	SmO_Single-Minded_Coach	0	339
david.levy@enjol.com	SmO_Single-Minded_Coach	0	340
david.levy@enjol.com	SmO_Single-Minded_Comb	60	341
david.levy@enjol.com	SmO_Single-Minded_Comb	60	342
david.levy@enjol.com	SmO_Single-Minded_Self	60	343
david.levy@enjol.com	SmO_Single-Minded_Self	60	344
david.levy@enjol.com	SmO_Single-Minded_Self 	60	345
david.levy@enjol.com	SmO_Single-Minded_Self 	60	346
david.levy@enjol.com	SmO_Technically_Smart_Coach	0	347
david.levy@enjol.com	SmO_Technically_Smart_Coach	0	348
david.levy@enjol.com	SmO_Technically_Smart_Comb	70	349
david.levy@enjol.com	SmO_Technically_Smart_Comb	70	350
david.levy@enjol.com	SmO_Technically_Smart_Self 	70	351
david.levy@enjol.com	SmO_Technically_Smart_Self 	70	352
david.levy@enjol.com	Trust_Acceptance_Coach	0	353
david.levy@enjol.com	Trust_Acceptance_Coach	0	354
david.levy@enjol.com	Trust_Acceptance_Comb	20	355
david.levy@enjol.com	Trust_Acceptance_Comb	20	356
david.levy@enjol.com	Trust_Acceptance_Self	20	357
david.levy@enjol.com	Trust_Acceptance_Self	20	358
david.levy@enjol.com	Trust_Congruence_Coach	0	359
david.levy@enjol.com	Trust_Congruence_Coach	0	360
david.levy@enjol.com	Trust_Congruence_Comb	73	361
david.levy@enjol.com	Trust_Congruence_Comb	73	362
david.levy@enjol.com	Trust_Congruence_Self	73	363
david.levy@enjol.com	Trust_Congruence_Self	73	364
david.levy@enjol.com	Trust_Openness_Coach	0	365
david.levy@enjol.com	Trust_Openness_Coach	0	366
david.levy@enjol.com	Trust_Openness_Comb	33	367
david.levy@enjol.com	Trust_Openness_Comb	33	368
david.levy@enjol.com	Trust_Openness_Self	33	369
david.levy@enjol.com	Trust_Openness_Self	33	370
david.levy@enjol.com	Trust_Reliability_Coach	0	371
david.levy@enjol.com	Trust_Reliability_Coach	0	372
david.levy@enjol.com	Trust_Reliability_Comb	73	373
david.levy@enjol.com	Trust_Reliability_Comb	73	374
david.levy@enjol.com	Trust_Reliability_Self	73	375
david.levy@enjol.com	Trust_Reliability_Self	73	376
david.levy@enjol.com	WC_Coaching_Self 	0	377
david.levy@enjol.com	WC_Coaching_Self 	0	378
david.levy@enjol.com	WC_Feedback_Self 	0	379
david.levy@enjol.com	WC_Feedback_Self 	0	380
david.levy@enjol.com	WC_Leads_Self	0	381
david.levy@enjol.com	WC_Leads_Self	0	382
david.levy@enjol.com	WC_Leads_Self 	0	383
david.levy@enjol.com	WC_Leads_Self 	0	384
david.levy@enjol.com	WC_Products_Self 	100	385
david.levy@enjol.com	WC_Products_Self 	100	386
david.levy@enjol.com	WC_Supporting_Self 	100	387
david.levy@enjol.com	WC_Supporting_Self 	100	388
david.levy@enjol.com	WS_Broad_Coach	0	389
david.levy@enjol.com	WS_Broad_Coach	0	390
david.levy@enjol.com	WS_Consistent_Coach	0	391
david.levy@enjol.com	WS_Consistent_Coach	0	392
david.levy@enjol.com	WS_Detailed_Coach	0	393
david.levy@enjol.com	WS_Detailed_Coach	0	394
david.levy@enjol.com	WS_Multi-task_Coach	0	395
david.levy@enjol.com	WS_Multi-task_Coach	0	396
david.levy@enjol.com	WS_Organised_Coach	0	397
david.levy@enjol.com	WS_Organised_Coach	0	398
david.levy@enjol.com	WS_Sequential_Coach	0	399
david.levy@enjol.com	WS_Sequential_Coach	0	400
david.levy@enjol.com	WS_Spontaneous_Coach	0	401
david.levy@enjol.com	WS_Spontaneous_Coach	0	402
david.levy@enjol.com	WS_Varied_Coach	0	403
david.levy@enjol.com	WS_Varied_Coach	0	404
tyler@olsps.com	BWS_Adaptable_Coach	102	405
tyler@olsps.com	BWS_Adaptable_Coach	102	406
tyler@olsps.com	BWS_Adaptable_Comb	115	407
tyler@olsps.com	BWS_Adaptable_Comb	115	408
tyler@olsps.com	BWS_Adaptable_Self 	101	409
tyler@olsps.com	BWS_Adaptable_Self 	101	410
tyler@olsps.com	BWS_Awareness of others_Coach	75	411
tyler@olsps.com	BWS_Awareness of others_Coach	75	412
tyler@olsps.com	BWS_Awareness of others_Comb	104	413
tyler@olsps.com	BWS_Awareness of others_Comb	104	414
tyler@olsps.com	BWS_Caring_Coach	75	415
tyler@olsps.com	BWS_Caring_Coach	75	416
tyler@olsps.com	BWS_Caring_Comb	40	417
tyler@olsps.com	BWS_Caring_Comb	40	418
tyler@olsps.com	BWS_Caring_Self 	3	419
tyler@olsps.com	BWS_Caring_Self 	3	420
tyler@olsps.com	BWS_Collaborative_Coach	63	421
tyler@olsps.com	BWS_Collaborative_Coach	63	422
tyler@olsps.com	BWS_Collaborative_Comb	77	423
tyler@olsps.com	BWS_Collaborative_Comb	77	424
tyler@olsps.com	BWS_Committed_Coach	61	425
tyler@olsps.com	BWS_Committed_Coach	61	426
tyler@olsps.com	BWS_Committed_Comb	77	427
tyler@olsps.com	BWS_Committed_Comb	77	428
tyler@olsps.com	BWS_Committed_Self	94	429
tyler@olsps.com	BWS_Committed_Self	94	430
tyler@olsps.com	BWS_Committed_Self 	94	431
tyler@olsps.com	BWS_Committed_Self 	94	432
tyler@olsps.com	BWS_Competitive_Coach	50	433
tyler@olsps.com	BWS_Competitive_Coach	50	434
tyler@olsps.com	BWS_Competitive_Comb	38	435
tyler@olsps.com	BWS_Competitive_Comb	38	436
tyler@olsps.com	BWS_Competitive_Self 	29	437
tyler@olsps.com	BWS_Competitive_Self 	29	438
tyler@olsps.com	BWS_Confident_Coach	13	439
tyler@olsps.com	BWS_Confident_Coach	13	440
tyler@olsps.com	BWS_Confident_Comb	14	441
tyler@olsps.com	BWS_Confident_Comb	14	442
tyler@olsps.com	BWS_Confident_Self 	30	443
tyler@olsps.com	BWS_Confident_Self 	30	444
tyler@olsps.com	BWS_Courageous_Coach	37	445
tyler@olsps.com	BWS_Courageous_Coach	37	446
tyler@olsps.com	BWS_Courageous_Comb	18	447
tyler@olsps.com	BWS_Courageous_Comb	18	448
tyler@olsps.com	BWS_Empathetic_Coach	63	449
tyler@olsps.com	BWS_Empathetic_Coach	63	450
tyler@olsps.com	BWS_Empathetic_Comb	59	451
tyler@olsps.com	BWS_Empathetic_Comb	59	452
tyler@olsps.com	BWS_Empathetic_Self 	48	453
tyler@olsps.com	BWS_Empathetic_Self 	48	454
tyler@olsps.com	BWS_Energised_Coach	-2	455
tyler@olsps.com	BWS_Energised_Coach	-2	456
tyler@olsps.com	BWS_Energised_Comb	16	457
tyler@olsps.com	BWS_Energised_Comb	16	458
tyler@olsps.com	BWS_Energised_Self 	48	459
tyler@olsps.com	BWS_Energised_Self 	48	460
tyler@olsps.com	BWS_Expansive_Coach	-2	461
tyler@olsps.com	BWS_Expansive_Coach	-2	462
tyler@olsps.com	BWS_Expansive_Comb	22	463
tyler@olsps.com	BWS_Expansive_Comb	22	464
tyler@olsps.com	BWS_Expansive_Self	48	465
tyler@olsps.com	BWS_Expansive_Self	48	466
tyler@olsps.com	BWS_Expansive_Self 	48	467
tyler@olsps.com	BWS_Expansive_Self 	48	468
tyler@olsps.com	BWS_Focused_Coach	102	469
tyler@olsps.com	BWS_Focused_Coach	102	470
tyler@olsps.com	BWS_Focused_Comb	86	471
tyler@olsps.com	BWS_Focused_Comb	86	472
tyler@olsps.com	BWS_Focused_Self 	72	473
tyler@olsps.com	BWS_Focused_Self 	72	474
tyler@olsps.com	BWS_Guarded_Coach	50	475
tyler@olsps.com	BWS_Guarded_Coach	50	476
tyler@olsps.com	BWS_Guarded_Comb	71	477
tyler@olsps.com	BWS_Guarded_Comb	71	478
tyler@olsps.com	BWS_Guarded_Self 	92	479
tyler@olsps.com	BWS_Guarded_Self 	92	480
tyler@olsps.com	BWS_In-control_Comb	47	481
tyler@olsps.com	BWS_In-control_Comb	47	482
tyler@olsps.com	BWS_In-control_Self 	48	483
tyler@olsps.com	BWS_In-control_Self 	48	484
tyler@olsps.com	BWS_Motivated_Coach	37	485
tyler@olsps.com	BWS_Motivated_Coach	37	486
tyler@olsps.com	BWS_Motivated_Comb	38	487
tyler@olsps.com	BWS_Motivated_Comb	38	488
tyler@olsps.com	BWS_Motivated_Self 	48	489
tyler@olsps.com	BWS_Motivated_Self 	48	490
tyler@olsps.com	BWS_Open_Coach	37	491
tyler@olsps.com	BWS_Open_Coach	37	492
tyler@olsps.com	BWS_Open_Comb	47	493
tyler@olsps.com	BWS_Open_Comb	47	494
tyler@olsps.com	BWS_Open_Self 	61	495
tyler@olsps.com	BWS_Open_Self 	61	496
tyler@olsps.com	BWS_Optimistic_Coach	25	497
tyler@olsps.com	BWS_Optimistic_Coach	25	498
tyler@olsps.com	BWS_Optimistic_Comb	18	499
tyler@olsps.com	BWS_Optimistic_Comb	18	500
tyler@olsps.com	BWS_Optimistic_Self 	20	501
tyler@olsps.com	BWS_Optimistic_Self 	20	502
tyler@olsps.com	BWS_Proactive_Coach	25	503
tyler@olsps.com	BWS_Proactive_Coach	25	504
tyler@olsps.com	BWS_Proactive_Comb	20	505
tyler@olsps.com	BWS_Proactive_Comb	20	506
tyler@olsps.com	BWS_Proactive_Self 	29	507
tyler@olsps.com	BWS_Proactive_Self 	29	508
tyler@olsps.com	BWS_Realistic_Coach	88	509
tyler@olsps.com	BWS_Realistic_Coach	88	510
tyler@olsps.com	BWS_Realistic_Comb	47	511
tyler@olsps.com	BWS_Realistic_Comb	47	512
tyler@olsps.com	BWS_Realistic_Self	10	513
tyler@olsps.com	BWS_Realistic_Self	10	514
tyler@olsps.com	BWS_Realistic_Self 	10	515
tyler@olsps.com	BWS_Realistic_Self 	10	516
tyler@olsps.com	BWS_Resilient_Coach	50	517
tyler@olsps.com	BWS_Resilient_Coach	50	518
tyler@olsps.com	BWS_Resilient_Comb	56	519
tyler@olsps.com	BWS_Resilient_Comb	56	520
tyler@olsps.com	BWS_Resilient_Self 	65	521
tyler@olsps.com	BWS_Resilient_Self 	65	522
tyler@olsps.com	BWS_Responsive_Coach	88	523
tyler@olsps.com	BWS_Responsive_Coach	88	524
tyler@olsps.com	BWS_Responsive_Comb	71	525
tyler@olsps.com	BWS_Responsive_Comb	71	526
tyler@olsps.com	BWS_Responsive_Self 	48	527
tyler@olsps.com	BWS_Responsive_Self 	48	528
tyler@olsps.com	BWS_Risk-taker_Coach	13	529
tyler@olsps.com	BWS_Risk-taker_Coach	13	530
tyler@olsps.com	BWS_Risk-taker_Comb	3	531
tyler@olsps.com	BWS_Risk-taker_Comb	3	532
tyler@olsps.com	BWS_Risk-taker_Self	11	533
tyler@olsps.com	BWS_Risk-taker_Self	11	534
tyler@olsps.com	BWS_Risk-taker_Self 	11	535
tyler@olsps.com	BWS_Risk-taker_Self 	11	536
tyler@olsps.com	BWS_Selective_Coach	75	537
tyler@olsps.com	BWS_Selective_Coach	75	538
tyler@olsps.com	BWS_Selective_Comb	55	539
tyler@olsps.com	BWS_Selective_Comb	55	540
tyler@olsps.com	BWS_Selective_Self 	32	541
tyler@olsps.com	BWS_Selective_Self 	32	542
tyler@olsps.com	BWS_Self-orientated_Coach	75	543
tyler@olsps.com	BWS_Self-orientated_Coach	75	544
tyler@olsps.com	BWS_Self-orientated_Comb	104	545
tyler@olsps.com	BWS_Self-orientated_Comb	104	546
tyler@olsps.com	BWS_Self-orientated_Self 	125	547
tyler@olsps.com	BWS_Self-orientated_Self 	125	548
tyler@olsps.com	BWS_Stressed_Coach	25	549
tyler@olsps.com	BWS_Stressed_Coach	25	550
tyler@olsps.com	BWS_Stressed_Comb	28	551
tyler@olsps.com	BWS_Stressed_Comb	28	552
tyler@olsps.com	BWS_Stressed_Self 	48	553
tyler@olsps.com	BWS_Stressed_Self 	48	554
tyler@olsps.com	BWS_Transactional_Coach	50	555
tyler@olsps.com	BWS_Transactional_Coach	50	556
tyler@olsps.com	BWS_Transactional_Comb	47	557
tyler@olsps.com	BWS_Transactional_Comb	47	558
tyler@olsps.com	BWS_Transactional_Self 	48	559
tyler@olsps.com	BWS_Transactional_Self 	48	560
tyler@olsps.com	BWS_Trusting_Coach	25	561
tyler@olsps.com	BWS_Trusting_Coach	25	562
tyler@olsps.com	BWS_Trusting_Comb	33	563
tyler@olsps.com	BWS_Trusting_Comb	33	564
tyler@olsps.com	BWS_Trusting_Self	48	565
tyler@olsps.com	BWS_Trusting_Self	48	566
tyler@olsps.com	BWS_Trusting_Self 	48	567
tyler@olsps.com	BWS_Trusting_Self 	48	568
tyler@olsps.com	ER 	0	569
tyler@olsps.com	ER 	0	570
tyler@olsps.com	F1	0	571
tyler@olsps.com	F1	0	572
tyler@olsps.com	F2	0	573
tyler@olsps.com	F2	0	574
tyler@olsps.com	F3	0	575
tyler@olsps.com	F3	0	576
tyler@olsps.com	F4	0	577
tyler@olsps.com	F4	0	578
tyler@olsps.com	F5	0	579
tyler@olsps.com	F5	0	580
tyler@olsps.com	F6	0	581
tyler@olsps.com	F6	0	582
tyler@olsps.com	Lead_Cares_Self 	0	583
tyler@olsps.com	Lead_Cares_Self 	0	584
tyler@olsps.com	Lead_Issue_Self 	0	585
tyler@olsps.com	Lead_Issue_Self 	0	586
tyler@olsps.com	Lead_Potential_Self 	0	587
tyler@olsps.com	Lead_Potential_Self 	0	588
tyler@olsps.com	Lead_Value_Self	0	589
tyler@olsps.com	Lead_Value_Self	0	590
tyler@olsps.com	Lead_Value_Self 	0	591
tyler@olsps.com	Lead_Value_Self 	0	592
tyler@olsps.com	Loc_Capability_int_Self 	25	593
tyler@olsps.com	Loc_Capability_int_Self 	25	594
tyler@olsps.com	Loc_Ethic_int_Self 	25	595
tyler@olsps.com	Loc_Ethic_int_Self 	25	596
tyler@olsps.com	Loc_Fortune_ext_Self 	50	597
tyler@olsps.com	Loc_Fortune_ext_Self 	50	598
tyler@olsps.com	Loc_Networks_ext_Self 	100	599
tyler@olsps.com	Loc_Networks_ext_Self 	100	600
tyler@olsps.com	Mot_Competitive_Coach	56	601
tyler@olsps.com	Mot_Competitive_Coach	56	602
tyler@olsps.com	Mot_Consequences_Coach	4	603
tyler@olsps.com	Mot_Consequences_Coach	4	604
tyler@olsps.com	Mot_Conviction_Coach	68	605
tyler@olsps.com	Mot_Conviction_Coach	68	606
tyler@olsps.com	Mot_Rewards_Coach	72	607
tyler@olsps.com	Mot_Rewards_Coach	72	608
tyler@olsps.com	RC_Disciplined_and_Structured_Coach	50	609
tyler@olsps.com	RC_Disciplined_and_Structured_Coach	50	610
tyler@olsps.com	RC_Disciplined_and_Structured_Comb	50	611
tyler@olsps.com	RC_Disciplined_and_Structured_Comb	50	612
tyler@olsps.com	RC_Disciplined_and_Structured_Self 	0	613
tyler@olsps.com	RC_Disciplined_and_Structured_Self 	0	614
tyler@olsps.com	RC_Genuinely_Interested_Coach	100	615
tyler@olsps.com	RC_Genuinely_Interested_Coach	100	616
tyler@olsps.com	RC_Genuinely_Interested_Comb	69	617
tyler@olsps.com	RC_Genuinely_Interested_Comb	69	618
tyler@olsps.com	RC_Genuinely_Interested_Self 	58	619
tyler@olsps.com	RC_Genuinely_Interested_Self 	58	620
tyler@olsps.com	RC_Initiative_Coach	25	621
tyler@olsps.com	RC_Initiative_Coach	25	622
tyler@olsps.com	RC_Initiative_Comb	25	623
tyler@olsps.com	RC_Initiative_Comb	25	624
tyler@olsps.com	RC_Initiative_Self	0	625
tyler@olsps.com	RC_Initiative_Self	0	626
tyler@olsps.com	RC_Initiative_Self 	0	627
tyler@olsps.com	RC_Initiative_Self 	0	628
tyler@olsps.com	RC_Instinct_Coach	0	629
tyler@olsps.com	RC_Instinct_Coach	0	630
tyler@olsps.com	RC_Instinct_Comb	0	631
tyler@olsps.com	RC_Instinct_Comb	0	632
tyler@olsps.com	RC_Instinct_Self 	0	633
tyler@olsps.com	RC_Instinct_Self 	0	634
tyler@olsps.com	RC_Organised_and_Delivers_Coach	50	635
tyler@olsps.com	RC_Organised_and_Delivers_Coach	50	636
tyler@olsps.com	RC_Organised_and_Delivers_Comb	56	637
tyler@olsps.com	RC_Organised_and_Delivers_Comb	56	638
tyler@olsps.com	RC_Organised_and_Delivers_Self	58	639
tyler@olsps.com	RC_Organised_and_Delivers_Self	58	640
tyler@olsps.com	RC_Organised_and_Delivers_Self 	58	641
tyler@olsps.com	RC_Organised_and_Delivers_Self 	58	642
tyler@olsps.com	RC_Proactive_Coach	25	643
tyler@olsps.com	RC_Proactive_Coach	25	644
tyler@olsps.com	RC_Proactive_Comb	44	645
tyler@olsps.com	RC_Proactive_Comb	44	646
tyler@olsps.com	RC_Proactive_Self 	50	647
tyler@olsps.com	RC_Proactive_Self 	50	648
tyler@olsps.com	RC_Problem_Solving_Coach	75	649
tyler@olsps.com	RC_Problem_Solving_Coach	75	650
tyler@olsps.com	RC_Problem_Solving_Comb	44	651
tyler@olsps.com	RC_Problem_Solving_Comb	44	652
tyler@olsps.com	RC_Problem_Solving_Self 	33	653
tyler@olsps.com	RC_Problem_Solving_Self 	33	654
tyler@olsps.com	RC_Relational_Coach	100	655
tyler@olsps.com	RC_Relational_Coach	100	656
tyler@olsps.com	RC_Relational_Comb	100	657
tyler@olsps.com	RC_Relational_Comb	100	658
tyler@olsps.com	RC_Relational_Self	0	659
tyler@olsps.com	RC_Relational_Self	0	660
tyler@olsps.com	RC_Relational_Self 	0	661
tyler@olsps.com	RC_Relational_Self 	0	662
tyler@olsps.com	RC_Responsive_Coach	75	663
tyler@olsps.com	RC_Responsive_Coach	75	664
tyler@olsps.com	RC_Responsive_Comb	75	665
tyler@olsps.com	RC_Responsive_Comb	75	666
tyler@olsps.com	RC_Responsive_Self 	0	667
tyler@olsps.com	RC_Responsive_Self 	0	668
tyler@olsps.com	RC_Solutions_Match_Clients_Needs_Coach	0	669
tyler@olsps.com	RC_Solutions_Match_Clients_Needs_Coach	0	670
tyler@olsps.com	RC_Solutions_Match_Clients_Needs_Comb	38	671
tyler@olsps.com	RC_Solutions_Match_Clients_Needs_Comb	38	672
tyler@olsps.com	RC_Solutions_Match_Clients_Needs_Self 	50	673
tyler@olsps.com	RC_Solutions_Match_Clients_Needs_Self 	50	674
tyler@olsps.com	Res_Hope_mind_Coach	0	675
tyler@olsps.com	Res_Hope_mind_Coach	0	676
tyler@olsps.com	Res_Hope_mind_Self	0	677
tyler@olsps.com	Res_Hope_mind_Self	0	678
tyler@olsps.com	Res_Hope_mind_Self 	0	679
tyler@olsps.com	Res_Hope_mind_Self 	0	680
tyler@olsps.com	Res_Improvise_orient_Coach	50	681
tyler@olsps.com	Res_Improvise_orient_Coach	50	682
tyler@olsps.com	Res_Improvise_orient_Self 	100	683
tyler@olsps.com	Res_Improvise_orient_Self 	100	684
tyler@olsps.com	Res_Perspective_orient_Coach	100	685
tyler@olsps.com	Res_Perspective_orient_Coach	100	686
tyler@olsps.com	Res_Perspective_orient_Self 	0	687
tyler@olsps.com	Res_Perspective_orient_Self 	0	688
tyler@olsps.com	Res_Reality_mind_Coach	50	689
tyler@olsps.com	Res_Reality_mind_Coach	50	690
tyler@olsps.com	Res_Reality_mind_Self	100	691
tyler@olsps.com	Res_Reality_mind_Self	100	692
tyler@olsps.com	Res_Reality_mind_Self 	100	693
tyler@olsps.com	Res_Reality_mind_Self 	100	694
tyler@olsps.com	Scn_Coping	45	695
tyler@olsps.com	Scn_Coping	45	696
tyler@olsps.com	Scn_Demanding	68	697
tyler@olsps.com	Scn_Demanding	68	698
tyler@olsps.com	SmO_Dealmaker_Coach	25	699
tyler@olsps.com	SmO_Dealmaker_Coach	25	700
tyler@olsps.com	SmO_Dealmaker_Comb	40	701
tyler@olsps.com	SmO_Dealmaker_Comb	40	702
tyler@olsps.com	SmO_Dealmaker_Self	50	703
tyler@olsps.com	SmO_Dealmaker_Self	50	704
tyler@olsps.com	SmO_Dealmaker_Self 	50	705
tyler@olsps.com	SmO_Dealmaker_Self 	50	706
tyler@olsps.com	SmO_Driven_Coach	38	707
tyler@olsps.com	SmO_Driven_Coach	38	708
tyler@olsps.com	SmO_Driven_Comb	38	709
tyler@olsps.com	SmO_Driven_Comb	38	710
tyler@olsps.com	SmO_Emot_Smart_Coach	50	711
tyler@olsps.com	SmO_Emot_Smart_Coach	50	712
tyler@olsps.com	SmO_Emot_Smart_Comb	40	713
tyler@olsps.com	SmO_Emot_Smart_Comb	40	714
tyler@olsps.com	SmO_Emot_Smart_Self 	33	715
tyler@olsps.com	SmO_Emot_Smart_Self 	33	716
tyler@olsps.com	SmO_Persuasive_Coach	38	717
tyler@olsps.com	SmO_Persuasive_Coach	38	718
tyler@olsps.com	SmO_Persuasive_Comb	40	719
tyler@olsps.com	SmO_Persuasive_Comb	40	720
tyler@olsps.com	SmO_Persuasive_Self 	42	721
tyler@olsps.com	SmO_Persuasive_Self 	42	722
tyler@olsps.com	SmO_Relat_Builder_Coach	63	723
tyler@olsps.com	SmO_Relat_Builder_Coach	63	724
tyler@olsps.com	SmO_Relat_Builder_Comb	50	725
tyler@olsps.com	SmO_Relat_Builder_Comb	50	726
tyler@olsps.com	SmO_Relat_Builder_Self 	42	727
tyler@olsps.com	SmO_Relat_Builder_Self 	42	728
tyler@olsps.com	SmO_RESILIENT_Coach	50	729
tyler@olsps.com	SmO_RESILIENT_Coach	50	730
tyler@olsps.com	SmO_RESILIENT_Comb	45	731
tyler@olsps.com	SmO_RESILIENT_Comb	45	732
tyler@olsps.com	SmO_RESILIENT_Self	42	733
tyler@olsps.com	SmO_RESILIENT_Self	42	734
tyler@olsps.com	SmO_RESILIENT_Self 	42	735
tyler@olsps.com	SmO_RESILIENT_Self 	42	736
tyler@olsps.com	SmO_Self-Belief_Coach	50	737
tyler@olsps.com	SmO_Self-Belief_Coach	50	738
tyler@olsps.com	SmO_Self-Belief_Comb	60	739
tyler@olsps.com	SmO_Self-Belief_Comb	60	740
tyler@olsps.com	SmO_Self-Belief_Self 	67	741
tyler@olsps.com	SmO_Self-Belief_Self 	67	742
tyler@olsps.com	SmO_Single-Minded_Coach	63	743
tyler@olsps.com	SmO_Single-Minded_Coach	63	744
tyler@olsps.com	SmO_Single-Minded_Comb	55	745
tyler@olsps.com	SmO_Single-Minded_Comb	55	746
tyler@olsps.com	SmO_Single-Minded_Self	50	747
tyler@olsps.com	SmO_Single-Minded_Self	50	748
tyler@olsps.com	SmO_Single-Minded_Self 	50	749
tyler@olsps.com	SmO_Single-Minded_Self 	50	750
tyler@olsps.com	SmO_Technically_Smart_Coach	75	751
tyler@olsps.com	SmO_Technically_Smart_Coach	75	752
tyler@olsps.com	SmO_Technically_Smart_Comb	75	753
tyler@olsps.com	SmO_Technically_Smart_Comb	75	754
tyler@olsps.com	SmO_Technically_Smart_Self 	75	755
tyler@olsps.com	SmO_Technically_Smart_Self 	75	756
tyler@olsps.com	Trust_Acceptance_Coach	0	757
tyler@olsps.com	Trust_Acceptance_Coach	0	758
tyler@olsps.com	Trust_Acceptance_Comb	27	759
tyler@olsps.com	Trust_Acceptance_Comb	27	760
tyler@olsps.com	Trust_Acceptance_Self	44	761
tyler@olsps.com	Trust_Acceptance_Self	44	762
tyler@olsps.com	Trust_Congruence_Coach	100	763
tyler@olsps.com	Trust_Congruence_Coach	100	764
tyler@olsps.com	Trust_Congruence_Comb	60	765
tyler@olsps.com	Trust_Congruence_Comb	60	766
tyler@olsps.com	Trust_Congruence_Self	33	767
tyler@olsps.com	Trust_Congruence_Self	33	768
tyler@olsps.com	Trust_Openness_Coach	33	769
tyler@olsps.com	Trust_Openness_Coach	33	770
tyler@olsps.com	Trust_Openness_Comb	33	771
tyler@olsps.com	Trust_Openness_Comb	33	772
tyler@olsps.com	Trust_Openness_Self	33	773
tyler@olsps.com	Trust_Openness_Self	33	774
tyler@olsps.com	Trust_Reliability_Coach	67	775
tyler@olsps.com	Trust_Reliability_Coach	67	776
tyler@olsps.com	Trust_Reliability_Comb	80	777
tyler@olsps.com	Trust_Reliability_Comb	80	778
tyler@olsps.com	Trust_Reliability_Self	89	779
tyler@olsps.com	Trust_Reliability_Self	89	780
tyler@olsps.com	WC_Coaching_Self 	33	781
tyler@olsps.com	WC_Coaching_Self 	33	782
tyler@olsps.com	WC_Feedback_Self 	67	783
tyler@olsps.com	WC_Feedback_Self 	67	784
tyler@olsps.com	WC_Leads_Self	33	785
tyler@olsps.com	WC_Leads_Self	33	786
tyler@olsps.com	WC_Leads_Self 	33	787
tyler@olsps.com	WC_Leads_Self 	33	788
tyler@olsps.com	WC_Products_Self 	33	789
tyler@olsps.com	WC_Products_Self 	33	790
tyler@olsps.com	WC_Supporting_Self 	33	791
tyler@olsps.com	WC_Supporting_Self 	33	792
tyler@olsps.com	WS_Broad_Coach	30	793
tyler@olsps.com	WS_Broad_Coach	30	794
tyler@olsps.com	WS_Consistent_Coach	20	795
tyler@olsps.com	WS_Consistent_Coach	20	796
tyler@olsps.com	WS_Detailed_Coach	100	797
tyler@olsps.com	WS_Detailed_Coach	100	798
tyler@olsps.com	WS_Multi-task_Coach	40	799
tyler@olsps.com	WS_Multi-task_Coach	40	800
tyler@olsps.com	WS_Organised_Coach	50	801
tyler@olsps.com	WS_Organised_Coach	50	802
tyler@olsps.com	WS_Sequential_Coach	80	803
tyler@olsps.com	WS_Sequential_Coach	80	804
tyler@olsps.com	WS_Spontaneous_Coach	50	805
tyler@olsps.com	WS_Spontaneous_Coach	50	806
tyler@olsps.com	WS_Varied_Coach	30	807
tyler@olsps.com	WS_Varied_Coach	30	808



--
-- TOC entry 2837 (class 0 OID 457622)
-- Dependencies: 202
-- Data for Name: scores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.scores (id, username, item, score) FROM stdin;



--
-- TOC entry 2842 (class 0 OID 457644)
-- Dependencies: 207
-- Data for Name: secondary_scores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.secondary_scores (id, username, item, score) FROM stdin;



--
-- TOC entry 2850 (class 0 OID 0)
-- Dependencies: 209
-- Name: score_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.score_id_seq', 808, true);


--
-- TOC entry 2851 (class 0 OID 0)
-- Dependencies: 203
-- Name: scores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.scores_id_seq', 1, false);


--
-- TOC entry 2852 (class 0 OID 0)
-- Dependencies: 206
-- Name: secondary_scores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.secondary_scores_id_seq', 1, false);


-- Completed on 2021-08-15 15:06:09

--
-- PostgreSQL database dump complete
--

