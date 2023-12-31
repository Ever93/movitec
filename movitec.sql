PGDMP  7    )            
    {           movitec    16.0    16.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16399    movitec    DATABASE     }   CREATE DATABASE movitec WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Paraguay.1252';
    DROP DATABASE movitec;
                postgres    false            �            1259    16410    roles    TABLE     h   CREATE TABLE public.roles (
    id integer NOT NULL,
    nombre character varying,
    permisos text
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    16409    roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    216            �           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    215            �            1259    16426    usuarios    TABLE     �  CREATE TABLE public.usuarios (
    id integer NOT NULL,
    nombre character varying(250),
    apellido character varying(250),
    cedula character varying(50),
    telefono character varying(150),
    direccion character varying(255),
    correo character varying(200),
    clave_hash character varying(250),
    salt character varying(250),
    fecha date,
    hora time without time zone,
    rol integer
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �            1259    16425    usuarios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.usuarios_id_seq;
       public          postgres    false    218            �           0    0    usuarios_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;
          public          postgres    false    217                       2604    16413    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216                        2604    16429    usuarios id    DEFAULT     j   ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);
 :   ALTER TABLE public.usuarios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            �          0    16410    roles 
   TABLE DATA           5   COPY public.roles (id, nombre, permisos) FROM stdin;
    public          postgres    false    216   9       �          0    16426    usuarios 
   TABLE DATA           �   COPY public.usuarios (id, nombre, apellido, cedula, telefono, direccion, correo, clave_hash, salt, fecha, hora, rol) FROM stdin;
    public          postgres    false    218   i       �           0    0    roles_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.roles_id_seq', 1, false);
          public          postgres    false    215            �           0    0    usuarios_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.usuarios_id_seq', 3, true);
          public          postgres    false    217            "           2606    16417    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    216            $           2606    16433    usuarios usuarios_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    218            %           2606    16434    usuarios fk_rol_usuario    FK CONSTRAINT     |   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT fk_rol_usuario FOREIGN KEY (rol) REFERENCES public.roles(id) NOT VALID;
 A   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT fk_rol_usuario;
       public          postgres    false    218    216    4642            �       x�3�tL����,.)JL�/������� a��      �      x������ � �     