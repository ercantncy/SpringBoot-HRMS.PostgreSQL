PGDMP         '                y            HRMS    13.2    13.2 <               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16609    HRMS    DATABASE     c   CREATE DATABASE "HRMS" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE "HRMS";
                postgres    false            ?            1259    16611    activation_code_to_candidates    TABLE     r   CREATE TABLE public.activation_code_to_candidates (
    id integer NOT NULL,
    candidate_id integer NOT NULL
);
 1   DROP TABLE public.activation_code_to_candidates;
       public         heap    postgres    false            ?            1259    16614    activation_code_to_employers    TABLE     p   CREATE TABLE public.activation_code_to_employers (
    id integer NOT NULL,
    employer_id integer NOT NULL
);
 0   DROP TABLE public.activation_code_to_employers;
       public         heap    postgres    false            ?            1259    16617    activation_codes    TABLE     ?   CREATE TABLE public.activation_codes (
    id integer NOT NULL,
    activation_code character varying(38) NOT NULL,
    is_confirmed boolean NOT NULL,
    confirmed_date date NOT NULL
);
 $   DROP TABLE public.activation_codes;
       public         heap    postgres    false            ?            1259    16638    activation_codes_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.activation_codes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.activation_codes_id_seq;
       public          postgres    false    202                       0    0    activation_codes_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.activation_codes_id_seq OWNED BY public.activation_codes.id;
          public          postgres    false    209            ?            1259    16620 
   candidates    TABLE     ?   CREATE TABLE public.candidates (
    id integer NOT NULL,
    first_name character varying(25) NOT NULL,
    last_name character varying(25) NOT NULL,
    identity_number character varying(11) NOT NULL,
    birth_date date NOT NULL
);
    DROP TABLE public.candidates;
       public         heap    postgres    false            ?            1259    16623 	   employees    TABLE     ?   CREATE TABLE public.employees (
    id integer NOT NULL,
    first_name character varying(25) NOT NULL,
    last_name character varying(25) NOT NULL
);
    DROP TABLE public.employees;
       public         heap    postgres    false            ?            1259    16626     employer_activation_by_employees    TABLE     ?   CREATE TABLE public.employer_activation_by_employees (
    id integer NOT NULL,
    employer_id integer NOT NULL,
    confirmed_employee_id integer,
    is_confirmed boolean DEFAULT false NOT NULL,
    confirmed_date date
);
 4   DROP TABLE public.employer_activation_by_employees;
       public         heap    postgres    false            ?            1259    16640 '   employer_activation_by_employees_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.employer_activation_by_employees_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.employer_activation_by_employees_id_seq;
       public          postgres    false    205                       0    0 '   employer_activation_by_employees_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.employer_activation_by_employees_id_seq OWNED BY public.employer_activation_by_employees.id;
          public          postgres    false    210            ?            1259    16629 	   employers    TABLE     ?   CREATE TABLE public.employers (
    id integer NOT NULL,
    company_name character varying(255) NOT NULL,
    web_address character varying(50) NOT NULL,
    phone_number character varying(12) NOT NULL,
    is_activated boolean DEFAULT false NOT NULL
);
    DROP TABLE public.employers;
       public         heap    postgres    false            ?            1259    16632 
   job_titles    TABLE     f   CREATE TABLE public.job_titles (
    id integer NOT NULL,
    title character varying(50) NOT NULL
);
    DROP TABLE public.job_titles;
       public         heap    postgres    false            ?            1259    16642    job_titles_id_seq    SEQUENCE     z   CREATE SEQUENCE public.job_titles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.job_titles_id_seq;
       public          postgres    false    207                       0    0    job_titles_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.job_titles_id_seq OWNED BY public.job_titles.id;
          public          postgres    false    211            ?            1259    16635    users    TABLE     ?   CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying(50) NOT NULL,
    password character varying(25) NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            ?            1259    16644    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    208            	           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    212            H           2604    16717    activation_codes id    DEFAULT     z   ALTER TABLE ONLY public.activation_codes ALTER COLUMN id SET DEFAULT nextval('public.activation_codes_id_seq'::regclass);
 B   ALTER TABLE public.activation_codes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    202            I           2604    16718 #   employer_activation_by_employees id    DEFAULT     ?   ALTER TABLE ONLY public.employer_activation_by_employees ALTER COLUMN id SET DEFAULT nextval('public.employer_activation_by_employees_id_seq'::regclass);
 R   ALTER TABLE public.employer_activation_by_employees ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    205            L           2604    16721    job_titles id    DEFAULT     n   ALTER TABLE ONLY public.job_titles ALTER COLUMN id SET DEFAULT nextval('public.job_titles_id_seq'::regclass);
 <   ALTER TABLE public.job_titles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    207            M           2604    16722    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    208            ?          0    16611    activation_code_to_candidates 
   TABLE DATA           I   COPY public.activation_code_to_candidates (id, candidate_id) FROM stdin;
    public          postgres    false    200   K       ?          0    16614    activation_code_to_employers 
   TABLE DATA           G   COPY public.activation_code_to_employers (id, employer_id) FROM stdin;
    public          postgres    false    201   9K       ?          0    16617    activation_codes 
   TABLE DATA           ]   COPY public.activation_codes (id, activation_code, is_confirmed, confirmed_date) FROM stdin;
    public          postgres    false    202   VK       ?          0    16620 
   candidates 
   TABLE DATA           \   COPY public.candidates (id, first_name, last_name, identity_number, birth_date) FROM stdin;
    public          postgres    false    203   sK       ?          0    16623 	   employees 
   TABLE DATA           >   COPY public.employees (id, first_name, last_name) FROM stdin;
    public          postgres    false    204   ?K       ?          0    16626     employer_activation_by_employees 
   TABLE DATA           ?   COPY public.employer_activation_by_employees (id, employer_id, confirmed_employee_id, is_confirmed, confirmed_date) FROM stdin;
    public          postgres    false    205   ?K       ?          0    16629 	   employers 
   TABLE DATA           ^   COPY public.employers (id, company_name, web_address, phone_number, is_activated) FROM stdin;
    public          postgres    false    206   ?K       ?          0    16632 
   job_titles 
   TABLE DATA           /   COPY public.job_titles (id, title) FROM stdin;
    public          postgres    false    207   L       ?          0    16635    users 
   TABLE DATA           4   COPY public.users (id, email, password) FROM stdin;
    public          postgres    false    208   GL       
           0    0    activation_codes_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.activation_codes_id_seq', 1, false);
          public          postgres    false    209                       0    0 '   employer_activation_by_employees_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.employer_activation_by_employees_id_seq', 1, false);
          public          postgres    false    210                       0    0    job_titles_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.job_titles_id_seq', 2, true);
          public          postgres    false    211                       0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 1, true);
          public          postgres    false    212            O           2606    16647 ;   activation_code_to_candidates pk_activation_code_candidates 
   CONSTRAINT     y   ALTER TABLE ONLY public.activation_code_to_candidates
    ADD CONSTRAINT pk_activation_code_candidates PRIMARY KEY (id);
 e   ALTER TABLE ONLY public.activation_code_to_candidates DROP CONSTRAINT pk_activation_code_candidates;
       public            postgres    false    200            Q           2606    16649 9   activation_code_to_employers pk_activation_code_employers 
   CONSTRAINT     w   ALTER TABLE ONLY public.activation_code_to_employers
    ADD CONSTRAINT pk_activation_code_employers PRIMARY KEY (id);
 c   ALTER TABLE ONLY public.activation_code_to_employers DROP CONSTRAINT pk_activation_code_employers;
       public            postgres    false    201            S           2606    16651 $   activation_codes pk_activation_codes 
   CONSTRAINT     b   ALTER TABLE ONLY public.activation_codes
    ADD CONSTRAINT pk_activation_codes PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.activation_codes DROP CONSTRAINT pk_activation_codes;
       public            postgres    false    202            W           2606    16653    candidates pk_candidate_id 
   CONSTRAINT     X   ALTER TABLE ONLY public.candidates
    ADD CONSTRAINT pk_candidate_id PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.candidates DROP CONSTRAINT pk_candidate_id;
       public            postgres    false    203            [           2606    16655    employees pk_employees_id 
   CONSTRAINT     W   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT pk_employees_id PRIMARY KEY (id);
 C   ALTER TABLE ONLY public.employees DROP CONSTRAINT pk_employees_id;
       public            postgres    false    204            ]           2606    16657 B   employer_activation_by_employees pk_employeractivationemployees_id 
   CONSTRAINT     ?   ALTER TABLE ONLY public.employer_activation_by_employees
    ADD CONSTRAINT pk_employeractivationemployees_id PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.employer_activation_by_employees DROP CONSTRAINT pk_employeractivationemployees_id;
       public            postgres    false    205            _           2606    16659    employers pk_employers_id 
   CONSTRAINT     W   ALTER TABLE ONLY public.employers
    ADD CONSTRAINT pk_employers_id PRIMARY KEY (id);
 C   ALTER TABLE ONLY public.employers DROP CONSTRAINT pk_employers_id;
       public            postgres    false    206            a           2606    16661    job_titles pk_job_titles_id 
   CONSTRAINT     Y   ALTER TABLE ONLY public.job_titles
    ADD CONSTRAINT pk_job_titles_id PRIMARY KEY (id);
 E   ALTER TABLE ONLY public.job_titles DROP CONSTRAINT pk_job_titles_id;
       public            postgres    false    207            e           2606    16663    users pk_users_id 
   CONSTRAINT     O   ALTER TABLE ONLY public.users
    ADD CONSTRAINT pk_users_id PRIMARY KEY (id);
 ;   ALTER TABLE ONLY public.users DROP CONSTRAINT pk_users_id;
       public            postgres    false    208            U           2606    16665 $   activation_codes uc_activation_codes 
   CONSTRAINT     j   ALTER TABLE ONLY public.activation_codes
    ADD CONSTRAINT uc_activation_codes UNIQUE (activation_code);
 N   ALTER TABLE ONLY public.activation_codes DROP CONSTRAINT uc_activation_codes;
       public            postgres    false    202            Y           2606    16667 (   candidates uc_candidates_identity_number 
   CONSTRAINT     n   ALTER TABLE ONLY public.candidates
    ADD CONSTRAINT uc_candidates_identity_number UNIQUE (identity_number);
 R   ALTER TABLE ONLY public.candidates DROP CONSTRAINT uc_candidates_identity_number;
       public            postgres    false    203            c           2606    16669    job_titles uc_job_titles_title 
   CONSTRAINT     Z   ALTER TABLE ONLY public.job_titles
    ADD CONSTRAINT uc_job_titles_title UNIQUE (title);
 H   ALTER TABLE ONLY public.job_titles DROP CONSTRAINT uc_job_titles_title;
       public            postgres    false    207            g           2606    16671    users uc_users_email 
   CONSTRAINT     P   ALTER TABLE ONLY public.users
    ADD CONSTRAINT uc_users_email UNIQUE (email);
 >   ALTER TABLE ONLY public.users DROP CONSTRAINT uc_users_email;
       public            postgres    false    208            h           2606    16672 F   activation_code_to_candidates fk_activation_code_candidates_candidates    FK CONSTRAINT     ?   ALTER TABLE ONLY public.activation_code_to_candidates
    ADD CONSTRAINT fk_activation_code_candidates_candidates FOREIGN KEY (candidate_id) REFERENCES public.candidates(id);
 p   ALTER TABLE ONLY public.activation_code_to_candidates DROP CONSTRAINT fk_activation_code_candidates_candidates;
       public          postgres    false    203    2903    200            i           2606    16677 C   activation_code_to_employers fk_activation_code_employers_employers    FK CONSTRAINT     ?   ALTER TABLE ONLY public.activation_code_to_employers
    ADD CONSTRAINT fk_activation_code_employers_employers FOREIGN KEY (employer_id) REFERENCES public.employers(id);
 m   ALTER TABLE ONLY public.activation_code_to_employers DROP CONSTRAINT fk_activation_code_employers_employers;
       public          postgres    false    206    201    2911            j           2606    16682 ?   activation_codes fk_activation_codes_activation_code_candidates    FK CONSTRAINT     ?   ALTER TABLE ONLY public.activation_codes
    ADD CONSTRAINT fk_activation_codes_activation_code_candidates FOREIGN KEY (id) REFERENCES public.activation_code_to_candidates(id);
 i   ALTER TABLE ONLY public.activation_codes DROP CONSTRAINT fk_activation_codes_activation_code_candidates;
       public          postgres    false    200    202    2895            k           2606    16687 >   activation_codes fk_activation_codes_activation_code_employers    FK CONSTRAINT     ?   ALTER TABLE ONLY public.activation_codes
    ADD CONSTRAINT fk_activation_codes_activation_code_employers FOREIGN KEY (id) REFERENCES public.activation_code_to_employers(id);
 h   ALTER TABLE ONLY public.activation_codes DROP CONSTRAINT fk_activation_codes_activation_code_employers;
       public          postgres    false    202    2897    201            l           2606    16692    candidates fk_candidates_users    FK CONSTRAINT     x   ALTER TABLE ONLY public.candidates
    ADD CONSTRAINT fk_candidates_users FOREIGN KEY (id) REFERENCES public.users(id);
 H   ALTER TABLE ONLY public.candidates DROP CONSTRAINT fk_candidates_users;
       public          postgres    false    2917    203    208            m           2606    16697    employees fk_employees_users    FK CONSTRAINT     v   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT fk_employees_users FOREIGN KEY (id) REFERENCES public.users(id);
 F   ALTER TABLE ONLY public.employees DROP CONSTRAINT fk_employees_users;
       public          postgres    false    204    208    2917            n           2606    16702 K   employer_activation_by_employees fk_employer_activation_employees_employees    FK CONSTRAINT     ?   ALTER TABLE ONLY public.employer_activation_by_employees
    ADD CONSTRAINT fk_employer_activation_employees_employees FOREIGN KEY (confirmed_employee_id) REFERENCES public.employees(id);
 u   ALTER TABLE ONLY public.employer_activation_by_employees DROP CONSTRAINT fk_employer_activation_employees_employees;
       public          postgres    false    2907    205    204            o           2606    16707 K   employer_activation_by_employees fk_employer_activation_employees_employers    FK CONSTRAINT     ?   ALTER TABLE ONLY public.employer_activation_by_employees
    ADD CONSTRAINT fk_employer_activation_employees_employers FOREIGN KEY (employer_id) REFERENCES public.employers(id);
 u   ALTER TABLE ONLY public.employer_activation_by_employees DROP CONSTRAINT fk_employer_activation_employees_employers;
       public          postgres    false    205    2911    206            p           2606    16712    employers fk_employers_users    FK CONSTRAINT     v   ALTER TABLE ONLY public.employers
    ADD CONSTRAINT fk_employers_users FOREIGN KEY (id) REFERENCES public.users(id);
 F   ALTER TABLE ONLY public.employers DROP CONSTRAINT fk_employers_users;
       public          postgres    false    206    2917    208            ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?   .   x?3??N,JN??<??*)1?????9--?uu͸b???? ?
?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?   /   x?3??O+)O,JUpI-K??/H-?2B:%gd??&?p??qqq ??E      ?   1   x?3??N,JN?˯JJ?q?/-?????K???+)?442615?????? ,??     