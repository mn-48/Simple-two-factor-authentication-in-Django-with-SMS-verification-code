PGDMP     &                	    y            basic_db     12.8 (Ubuntu 12.8-1.pgdg20.04+1)     14.0 (Ubuntu 14.0-1.pgdg20.04+1) n    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    23859    basic_db    DATABASE     ]   CREATE DATABASE basic_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE basic_db;
                nazmul    false                        3079    17822    hstore 	   EXTENSION     :   CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;
    DROP EXTENSION hstore;
                   false            �           0    0    EXTENSION hstore    COMMENT     S   COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';
                        false    2            �            1259    23891 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    nazmul    false            �            1259    23889    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          nazmul    false    210            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          nazmul    false    209            �            1259    23901    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    nazmul    false            �            1259    23899    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          nazmul    false    212            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          nazmul    false    211            �            1259    23883    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    nazmul    false            �            1259    23881    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          nazmul    false    208            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          nazmul    false    207            �            1259    24027 
   codes_code    TABLE     �   CREATE TABLE public.codes_code (
    id bigint NOT NULL,
    number character varying(5) NOT NULL,
    user_id bigint NOT NULL
);
    DROP TABLE public.codes_code;
       public         heap    nazmul    false            �            1259    24025    codes_code_id_seq    SEQUENCE     z   CREATE SEQUENCE public.codes_code_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.codes_code_id_seq;
       public          nazmul    false    223            �           0    0    codes_code_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.codes_code_id_seq OWNED BY public.codes_code.id;
          public          nazmul    false    222            �            1259    23993    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    nazmul    false            �            1259    23991    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          nazmul    false    220            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          nazmul    false    219            �            1259    23873    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    nazmul    false            �            1259    23871    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          nazmul    false    206            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          nazmul    false    205            �            1259    23862    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    nazmul    false            �            1259    23860    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          nazmul    false    204            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          nazmul    false    203            �            1259    24015    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    nazmul    false            �            1259    23935    users_customuser    TABLE       CREATE TABLE public.users_customuser (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    phone_number character varying(20) NOT NULL
);
 $   DROP TABLE public.users_customuser;
       public         heap    nazmul    false            �            1259    23948    users_customuser_groups    TABLE     �   CREATE TABLE public.users_customuser_groups (
    id bigint NOT NULL,
    customuser_id bigint NOT NULL,
    group_id integer NOT NULL
);
 +   DROP TABLE public.users_customuser_groups;
       public         heap    nazmul    false            �            1259    23946    users_customuser_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_customuser_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.users_customuser_groups_id_seq;
       public          nazmul    false    216            �           0    0    users_customuser_groups_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.users_customuser_groups_id_seq OWNED BY public.users_customuser_groups.id;
          public          nazmul    false    215            �            1259    23933    users_customuser_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_customuser_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.users_customuser_id_seq;
       public          nazmul    false    214            �           0    0    users_customuser_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.users_customuser_id_seq OWNED BY public.users_customuser.id;
          public          nazmul    false    213            �            1259    23956 !   users_customuser_user_permissions    TABLE     �   CREATE TABLE public.users_customuser_user_permissions (
    id bigint NOT NULL,
    customuser_id bigint NOT NULL,
    permission_id integer NOT NULL
);
 5   DROP TABLE public.users_customuser_user_permissions;
       public         heap    nazmul    false            �            1259    23954 (   users_customuser_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_customuser_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.users_customuser_user_permissions_id_seq;
       public          nazmul    false    218            �           0    0 (   users_customuser_user_permissions_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.users_customuser_user_permissions_id_seq OWNED BY public.users_customuser_user_permissions.id;
          public          nazmul    false    217            �           2604    23894    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          nazmul    false    210    209    210            �           2604    23904    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          nazmul    false    212    211    212            �           2604    23886    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          nazmul    false    207    208    208            �           2604    24030    codes_code id    DEFAULT     n   ALTER TABLE ONLY public.codes_code ALTER COLUMN id SET DEFAULT nextval('public.codes_code_id_seq'::regclass);
 <   ALTER TABLE public.codes_code ALTER COLUMN id DROP DEFAULT;
       public          nazmul    false    223    222    223            �           2604    23996    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          nazmul    false    220    219    220            �           2604    23876    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          nazmul    false    206    205    206            �           2604    23865    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          nazmul    false    203    204    204            �           2604    23938    users_customuser id    DEFAULT     z   ALTER TABLE ONLY public.users_customuser ALTER COLUMN id SET DEFAULT nextval('public.users_customuser_id_seq'::regclass);
 B   ALTER TABLE public.users_customuser ALTER COLUMN id DROP DEFAULT;
       public          nazmul    false    213    214    214            �           2604    23951    users_customuser_groups id    DEFAULT     �   ALTER TABLE ONLY public.users_customuser_groups ALTER COLUMN id SET DEFAULT nextval('public.users_customuser_groups_id_seq'::regclass);
 I   ALTER TABLE public.users_customuser_groups ALTER COLUMN id DROP DEFAULT;
       public          nazmul    false    215    216    216            �           2604    23959 $   users_customuser_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.users_customuser_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.users_customuser_user_permissions_id_seq'::regclass);
 S   ALTER TABLE public.users_customuser_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          nazmul    false    218    217    218            }          0    23891 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          nazmul    false    210   ��                 0    23901    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          nazmul    false    212   �       {          0    23883    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          nazmul    false    208   �       �          0    24027 
   codes_code 
   TABLE DATA           9   COPY public.codes_code (id, number, user_id) FROM stdin;
    public          nazmul    false    223   N�       �          0    23993    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          nazmul    false    220   ��       y          0    23873    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          nazmul    false    206   ��       w          0    23862    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          nazmul    false    204   .�       �          0    24015    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          nazmul    false    221   P�       �          0    23935    users_customuser 
   TABLE DATA           �   COPY public.users_customuser (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, phone_number) FROM stdin;
    public          nazmul    false    214   �       �          0    23948    users_customuser_groups 
   TABLE DATA           N   COPY public.users_customuser_groups (id, customuser_id, group_id) FROM stdin;
    public          nazmul    false    216   ��       �          0    23956 !   users_customuser_user_permissions 
   TABLE DATA           ]   COPY public.users_customuser_user_permissions (id, customuser_id, permission_id) FROM stdin;
    public          nazmul    false    218   ؞       �           0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, true);
          public          nazmul    false    209            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, true);
          public          nazmul    false    211            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 28, true);
          public          nazmul    false    207            �           0    0    codes_code_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.codes_code_id_seq', 6, true);
          public          nazmul    false    222            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 22, true);
          public          nazmul    false    219            �           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 7, true);
          public          nazmul    false    205            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 24, true);
          public          nazmul    false    203            �           0    0    users_customuser_groups_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.users_customuser_groups_id_seq', 2, true);
          public          nazmul    false    215            �           0    0    users_customuser_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.users_customuser_id_seq', 11, true);
          public          nazmul    false    213            �           0    0 (   users_customuser_user_permissions_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.users_customuser_user_permissions_id_seq', 28, true);
          public          nazmul    false    217            �           2606    23931    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            nazmul    false    210            �           2606    23917 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            nazmul    false    212    212            �           2606    23906 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            nazmul    false    212            �           2606    23896    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            nazmul    false    210            �           2606    23908 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            nazmul    false    208    208            �           2606    23888 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            nazmul    false    208            �           2606    24032    codes_code codes_code_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.codes_code
    ADD CONSTRAINT codes_code_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.codes_code DROP CONSTRAINT codes_code_pkey;
       public            nazmul    false    223            �           2606    24034 !   codes_code codes_code_user_id_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.codes_code
    ADD CONSTRAINT codes_code_user_id_key UNIQUE (user_id);
 K   ALTER TABLE ONLY public.codes_code DROP CONSTRAINT codes_code_user_id_key;
       public            nazmul    false    223            �           2606    24002 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            nazmul    false    220            �           2606    23880 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            nazmul    false    206    206            �           2606    23878 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            nazmul    false    206            �           2606    23870 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            nazmul    false    204            �           2606    24022 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            nazmul    false    221            �           2606    23964 T   users_customuser_groups users_customuser_groups_customuser_id_group_id_76b619e3_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.users_customuser_groups
    ADD CONSTRAINT users_customuser_groups_customuser_id_group_id_76b619e3_uniq UNIQUE (customuser_id, group_id);
 ~   ALTER TABLE ONLY public.users_customuser_groups DROP CONSTRAINT users_customuser_groups_customuser_id_group_id_76b619e3_uniq;
       public            nazmul    false    216    216            �           2606    23953 4   users_customuser_groups users_customuser_groups_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.users_customuser_groups
    ADD CONSTRAINT users_customuser_groups_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.users_customuser_groups DROP CONSTRAINT users_customuser_groups_pkey;
       public            nazmul    false    216            �           2606    23943 &   users_customuser users_customuser_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.users_customuser
    ADD CONSTRAINT users_customuser_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.users_customuser DROP CONSTRAINT users_customuser_pkey;
       public            nazmul    false    214            �           2606    23978 a   users_customuser_user_permissions users_customuser_user_pe_customuser_id_permission_7a7debf6_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.users_customuser_user_permissions
    ADD CONSTRAINT users_customuser_user_pe_customuser_id_permission_7a7debf6_uniq UNIQUE (customuser_id, permission_id);
 �   ALTER TABLE ONLY public.users_customuser_user_permissions DROP CONSTRAINT users_customuser_user_pe_customuser_id_permission_7a7debf6_uniq;
       public            nazmul    false    218    218            �           2606    23961 H   users_customuser_user_permissions users_customuser_user_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.users_customuser_user_permissions
    ADD CONSTRAINT users_customuser_user_permissions_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.users_customuser_user_permissions DROP CONSTRAINT users_customuser_user_permissions_pkey;
       public            nazmul    false    218            �           2606    24058 .   users_customuser users_customuser_username_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.users_customuser
    ADD CONSTRAINT users_customuser_username_key UNIQUE (username);
 X   ALTER TABLE ONLY public.users_customuser DROP CONSTRAINT users_customuser_username_key;
       public            nazmul    false    214            �           1259    23932    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            nazmul    false    210            �           1259    23928 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            nazmul    false    212            �           1259    23929 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            nazmul    false    212            �           1259    23914 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            nazmul    false    208            �           1259    24013 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            nazmul    false    220            �           1259    24014 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            nazmul    false    220            �           1259    24024 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            nazmul    false    221            �           1259    24023 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            nazmul    false    221            �           1259    23975 .   users_customuser_groups_customuser_id_958147bf    INDEX     {   CREATE INDEX users_customuser_groups_customuser_id_958147bf ON public.users_customuser_groups USING btree (customuser_id);
 B   DROP INDEX public.users_customuser_groups_customuser_id_958147bf;
       public            nazmul    false    216            �           1259    23976 )   users_customuser_groups_group_id_01390b14    INDEX     q   CREATE INDEX users_customuser_groups_group_id_01390b14 ON public.users_customuser_groups USING btree (group_id);
 =   DROP INDEX public.users_customuser_groups_group_id_01390b14;
       public            nazmul    false    216            �           1259    23989 8   users_customuser_user_permissions_customuser_id_5771478b    INDEX     �   CREATE INDEX users_customuser_user_permissions_customuser_id_5771478b ON public.users_customuser_user_permissions USING btree (customuser_id);
 L   DROP INDEX public.users_customuser_user_permissions_customuser_id_5771478b;
       public            nazmul    false    218            �           1259    23990 8   users_customuser_user_permissions_permission_id_baaa2f74    INDEX     �   CREATE INDEX users_customuser_user_permissions_permission_id_baaa2f74 ON public.users_customuser_user_permissions USING btree (permission_id);
 L   DROP INDEX public.users_customuser_user_permissions_permission_id_baaa2f74;
       public            nazmul    false    218            �           1259    24059 '   users_customuser_username_80452fdf_like    INDEX     |   CREATE INDEX users_customuser_username_80452fdf_like ON public.users_customuser USING btree (username varchar_pattern_ops);
 ;   DROP INDEX public.users_customuser_username_80452fdf_like;
       public            nazmul    false    214            �           2606    23923 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          nazmul    false    212    3013    208            �           2606    23918 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          nazmul    false    210    212    3018            �           2606    23909 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          nazmul    false    206    3008    208            �           2606    24035 =   codes_code codes_code_user_id_2f7a75e8_fk_users_customuser_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.codes_code
    ADD CONSTRAINT codes_code_user_id_2f7a75e8_fk_users_customuser_id FOREIGN KEY (user_id) REFERENCES public.users_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.codes_code DROP CONSTRAINT codes_code_user_id_2f7a75e8_fk_users_customuser_id;
       public          nazmul    false    214    223    3026            �           2606    24003 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          nazmul    false    220    206    3008            �           2606    24008 I   django_admin_log django_admin_log_user_id_c564eba6_fk_users_customuser_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_customuser_id FOREIGN KEY (user_id) REFERENCES public.users_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_customuser_id;
       public          nazmul    false    3026    214    220            �           2606    23965 P   users_customuser_groups users_customuser_gro_customuser_id_958147bf_fk_users_cus    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_customuser_groups
    ADD CONSTRAINT users_customuser_gro_customuser_id_958147bf_fk_users_cus FOREIGN KEY (customuser_id) REFERENCES public.users_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.users_customuser_groups DROP CONSTRAINT users_customuser_gro_customuser_id_958147bf_fk_users_cus;
       public          nazmul    false    214    3026    216            �           2606    23970 R   users_customuser_groups users_customuser_groups_group_id_01390b14_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_customuser_groups
    ADD CONSTRAINT users_customuser_groups_group_id_01390b14_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.users_customuser_groups DROP CONSTRAINT users_customuser_groups_group_id_01390b14_fk_auth_group_id;
       public          nazmul    false    210    216    3018            �           2606    23979 Z   users_customuser_user_permissions users_customuser_use_customuser_id_5771478b_fk_users_cus    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_customuser_user_permissions
    ADD CONSTRAINT users_customuser_use_customuser_id_5771478b_fk_users_cus FOREIGN KEY (customuser_id) REFERENCES public.users_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.users_customuser_user_permissions DROP CONSTRAINT users_customuser_use_customuser_id_5771478b_fk_users_cus;
       public          nazmul    false    3026    214    218            �           2606    23984 Z   users_customuser_user_permissions users_customuser_use_permission_id_baaa2f74_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_customuser_user_permissions
    ADD CONSTRAINT users_customuser_use_permission_id_baaa2f74_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.users_customuser_user_permissions DROP CONSTRAINT users_customuser_use_permission_id_baaa2f74_fk_auth_perm;
       public          nazmul    false    218    208    3013            }      x�3�,-N-�-�L-����� /!�            x�3�4�42����� 
��      {   2  x�]�Kn�0��ur
NPM�sֽF�
E���ܾ`��fG�o�+�|�c�v]���ư��3��{?��z$��v�A�s�0G�����a��w�?Ŏ�2�Ͱ��u��xLねd��T'l-���@aNT����~��������d\��."N6EB9D<�D�t����4������B�cb]!s.���/e��S���^4�*[��η-1�N�52�u&v���(/2�4FX��KE�
������0�����? �M0���%����$H)6ہ�i�X_�U�mZ�j�;igh�𚖴_~}Xk�c$      �   7   x����0�7��I�.��Fo5O!�_fw�()�7�jn���
�      �     x���Oo�0��Χ0|�*��_�>�Z�ة��[��@�V�+��'9ْ(�Ѡ�>���H>�X�!�!�(}|$i��O`
,�^��������5�ʗ�բmV�_���o�~��h�����������\J\Bv�}��ۮb�������\�r���~ȗ���KhQ���B��vUF�C�s6'�V}'6���-ۨ6�jMBiZ��(�R2��L �',�:iE�=��7�=��(�w�+�\�<�0�Xs�^�C��~r~�B3�u�F���9�Ekc���J̔�x-�dRH���CxY�#cy���FV+�6�gX��k�q=\�C��:n̓�ك���1�@���G��L���	f�ƜT��æ^,ʰ�7ۣh��؊<Y��X7��7M�4õ�l�P�0���5I}��m^. dB�����e)71���a�}��rLb��]B��;漖���Ӥ�{�4���"�SeL+�1�[Zx�F���٪��	ဤ�iJ��@t��!u���/�����u\.�]�f�����      y   d   x�M�A
�0�ӏ�U?�E̠�	�����o�MUK�>�!G�':Z��8��%��-KI��*Ѫjgb�����T�sՊ���1��=�c����,�      w     x���ݎ�0���S�Z���<K%�M�YK������k�Ĥ]��.��1s挡:�~��4];V�Юw�3m����=�����q!� b�ߔ�������:�ѽ��6J(��Vf�>���S���j�N6���΍��}���̗nm�_m��\$/(zE�c��θ�)�3 <QD��{J��r�0��A�dA�{Dk�I���bcs����r7M��8�߳eyL:Y��!�{Q�!��|�֝��è��m>�Ύ�9�m5
Q%��k6�y�qL*�IPH�C/��c��7�+��<��A!͘�\ =�"���.wq��GP�h;�,�w��«m�ݥ^%�k,�	�X�{�\��F SK�r�`
g�W�ܶ?��SN�! ]�٬�BR��qJ��ޚ�>~xw|���/�U�����Fq��#�;���cQ�Ԋ#��܃Us�Xz׳�eCQ#�=�5�(d�qU���X�J��D��� �7��U{"\j�$��d���+�e�T�H��c�Y�v�?�v�6      �   �  x�]�Ɏ�H��s�S�}d��$�nc����4b��5���j��gZ��/}��j,ʮ����M�iA�&Jj6j���G�(�~Bl�hi���AIWO1���x��S�g�%b�gK�>�-
��HA�`E� 4+`���h��|��H~�X2�d�#����Eyζ�o���&����#� j��+��Z%����F��0zY���r�k�C|G��
F�����2���ѯ��g�0*��:<,�l+�K<�����&��������!1w)�7�79��h���Kf���}%���T۬�@UbR�Z�\��U�R�ab�L�������As��X��I��ݴ`|҅ܞ�<7��V,��9�Xe<g�{��h�<E���s��X�*��p!��Ԇ��:��Ij�����lj�{�S�,8�o��� Px?̬y�CL�����D �ARg�d�D/[������GJ��9��ɑ��y�B�����٨��'N��^�>[�'�)��z�l�۵A�$�}�M���i�CuK��c(��2�^~g:15��RwI��9���\�Y�N�&T���d�����6�5i罼���z��EJ7� �s�zE��6�	��7��sw�}]ڣ�1�
t��p���HP�޻֐gX�����������	U�8k���_&&)���OL�}VӞX��j`R�ALهiNW�7VCj����eT�1���yݹD�m��m\���.�4����Y�i��Q.��U���W�$����ů��b�f�
vf��L����|8��% ����nD��G;���L|+��r��7�Kֽ�^�T��"�l2�E�9�8��[	� H@P��A�B�[�˻�k2���E=*�߾&7*�/�|��0�De��W]�
�W�SN1h7��
�Ub_c��.[�������/֪5�������1�������'4�      �   �  x����N�0�����E�*��v|�� J5Pm�IHȔ�t��(N8���i��.��Ȓ=���=���mUk�}��(7��N�k�"G��Cg���+D0�=�{w�jhBz�#&��S� �,�b5�b�0G�ihS�5{e�>gf����̑�gL߰%'�� ��MU۸t9>#���f�!h"����>�]5�]I��4��'���A8c�T<.����&��K8v�-89�XҤ����V�����]��ğ�\��8M��2�/8������S���$㣃
@S�αl�d9����g6fr�P�&ܩ���!`!�����]R����)NF�{S�L�2:���W�9�#����N�ˢ�� 5������� �����������HB�h�KɅZ?�w�{���m�0      �      x�3�44�4�2��1z\\\ �@      �   n   x�%λ�@��S�a������8��� =j����ɨtfe�*�]Y���Vu՞���O�%�h�(����bj���(���#�����4��#{��^8�7�����IT!)     