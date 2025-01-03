PGDMP  5                    |            back_nest_angular_3    16.1    16.1 Q               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    28920    back_nest_angular_3    DATABASE     �   CREATE DATABASE back_nest_angular_3 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Ecuador.1252';
 #   DROP DATABASE back_nest_angular_3;
                postgres    false            �            1259    28987 	   categoria    TABLE     x   CREATE TABLE public.categoria (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    detalle text
);
    DROP TABLE public.categoria;
       public         heap    postgres    false            �            1259    28986    categoria_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categoria_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.categoria_id_seq;
       public          postgres    false    230                       0    0    categoria_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.categoria_id_seq OWNED BY public.categoria.id;
          public          postgres    false    229            �            1259    28962    clientes    TABLE     �   CREATE TABLE public.clientes (
    id integer NOT NULL,
    nombre_completo character varying NOT NULL,
    dni character varying NOT NULL,
    telefono character varying NOT NULL
);
    DROP TABLE public.clientes;
       public         heap    postgres    false            �            1259    28961    clientes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.clientes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.clientes_id_seq;
       public          postgres    false    224                       0    0    clientes_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.clientes_id_seq OWNED BY public.clientes.id;
          public          postgres    false    223            �            1259    28922 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    "timestamp" bigint NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false            �            1259    28921    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    216                       0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    215            �            1259    28980    pedido_producto    TABLE     �   CREATE TABLE public.pedido_producto (
    id integer NOT NULL,
    pedidoid integer NOT NULL,
    "productoId" integer NOT NULL,
    cantidad integer NOT NULL,
    "pedidoId" integer
);
 #   DROP TABLE public.pedido_producto;
       public         heap    postgres    false            �            1259    28979    pedido_producto_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pedido_producto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.pedido_producto_id_seq;
       public          postgres    false    228                       0    0    pedido_producto_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.pedido_producto_id_seq OWNED BY public.pedido_producto.id;
          public          postgres    false    227            �            1259    28971    pedidos    TABLE     �   CREATE TABLE public.pedidos (
    id integer NOT NULL,
    fecha character varying NOT NULL,
    estado integer NOT NULL,
    observaciones character varying NOT NULL,
    "clienteId" integer
);
    DROP TABLE public.pedidos;
       public         heap    postgres    false            �            1259    28970    pedidos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pedidos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.pedidos_id_seq;
       public          postgres    false    226                       0    0    pedidos_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.pedidos_id_seq OWNED BY public.pedidos.id;
          public          postgres    false    225            �            1259    28931    persona    TABLE     �   CREATE TABLE public.persona (
    id integer NOT NULL,
    nombres character varying NOT NULL,
    apellidos character varying NOT NULL,
    "userId" integer
);
    DROP TABLE public.persona;
       public         heap    postgres    false            �            1259    28930    persona_id_seq    SEQUENCE     �   CREATE SEQUENCE public.persona_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.persona_id_seq;
       public          postgres    false    218                       0    0    persona_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.persona_id_seq OWNED BY public.persona.id;
          public          postgres    false    217            �            1259    28996 	   productos    TABLE     #  CREATE TABLE public.productos (
    id integer NOT NULL,
    nombre character varying(250) NOT NULL,
    precio numeric(10,2) NOT NULL,
    stock integer NOT NULL,
    image character varying(250),
    descripcion text,
    estado boolean DEFAULT true NOT NULL,
    "categoriaId" integer
);
    DROP TABLE public.productos;
       public         heap    postgres    false            �            1259    28995    productos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.productos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.productos_id_seq;
       public          postgres    false    232                       0    0    productos_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.productos_id_seq OWNED BY public.productos.id;
          public          postgres    false    231            �            1259    29005 	   role_user    TABLE     a   CREATE TABLE public.role_user (
    "rolesId" integer NOT NULL,
    "userId" integer NOT NULL
);
    DROP TABLE public.role_user;
       public         heap    postgres    false            �            1259    28953    roles    TABLE     �   CREATE TABLE public.roles (
    id integer NOT NULL,
    nombre character varying NOT NULL,
    detalle character varying NOT NULL
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    28952    roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    222                        0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    221            �            1259    28942    user    TABLE     �   CREATE TABLE public."user" (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    mail character varying(255) NOT NULL,
    password character varying(200) NOT NULL
);
    DROP TABLE public."user";
       public         heap    postgres    false            �            1259    28941    user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_id_seq;
       public          postgres    false    220            !           0    0    user_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;
          public          postgres    false    219            M           2604    28990    categoria id    DEFAULT     l   ALTER TABLE ONLY public.categoria ALTER COLUMN id SET DEFAULT nextval('public.categoria_id_seq'::regclass);
 ;   ALTER TABLE public.categoria ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230            J           2604    28965    clientes id    DEFAULT     j   ALTER TABLE ONLY public.clientes ALTER COLUMN id SET DEFAULT nextval('public.clientes_id_seq'::regclass);
 :   ALTER TABLE public.clientes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            F           2604    28925    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            L           2604    28983    pedido_producto id    DEFAULT     x   ALTER TABLE ONLY public.pedido_producto ALTER COLUMN id SET DEFAULT nextval('public.pedido_producto_id_seq'::regclass);
 A   ALTER TABLE public.pedido_producto ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            K           2604    28974 
   pedidos id    DEFAULT     h   ALTER TABLE ONLY public.pedidos ALTER COLUMN id SET DEFAULT nextval('public.pedidos_id_seq'::regclass);
 9   ALTER TABLE public.pedidos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            G           2604    28934 
   persona id    DEFAULT     h   ALTER TABLE ONLY public.persona ALTER COLUMN id SET DEFAULT nextval('public.persona_id_seq'::regclass);
 9   ALTER TABLE public.persona ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            N           2604    28999    productos id    DEFAULT     l   ALTER TABLE ONLY public.productos ALTER COLUMN id SET DEFAULT nextval('public.productos_id_seq'::regclass);
 ;   ALTER TABLE public.productos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    232    232            I           2604    28956    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            H           2604    28945    user id    DEFAULT     d   ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);
 8   ALTER TABLE public."user" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220                      0    28987 	   categoria 
   TABLE DATA           8   COPY public.categoria (id, nombre, detalle) FROM stdin;
    public          postgres    false    230   k]       	          0    28962    clientes 
   TABLE DATA           F   COPY public.clientes (id, nombre_completo, dni, telefono) FROM stdin;
    public          postgres    false    224   �]                 0    28922 
   migrations 
   TABLE DATA           ;   COPY public.migrations (id, "timestamp", name) FROM stdin;
    public          postgres    false    216   �]                 0    28980    pedido_producto 
   TABLE DATA           [   COPY public.pedido_producto (id, pedidoid, "productoId", cantidad, "pedidoId") FROM stdin;
    public          postgres    false    228   ^                 0    28971    pedidos 
   TABLE DATA           P   COPY public.pedidos (id, fecha, estado, observaciones, "clienteId") FROM stdin;
    public          postgres    false    226   )^                 0    28931    persona 
   TABLE DATA           C   COPY public.persona (id, nombres, apellidos, "userId") FROM stdin;
    public          postgres    false    218   F^                 0    28996 	   productos 
   TABLE DATA           i   COPY public.productos (id, nombre, precio, stock, image, descripcion, estado, "categoriaId") FROM stdin;
    public          postgres    false    232   c^                 0    29005 	   role_user 
   TABLE DATA           8   COPY public.role_user ("rolesId", "userId") FROM stdin;
    public          postgres    false    233   �_                 0    28953    roles 
   TABLE DATA           4   COPY public.roles (id, nombre, detalle) FROM stdin;
    public          postgres    false    222   �_                 0    28942    user 
   TABLE DATA           :   COPY public."user" (id, name, mail, password) FROM stdin;
    public          postgres    false    220   `       "           0    0    categoria_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.categoria_id_seq', 3, true);
          public          postgres    false    229            #           0    0    clientes_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.clientes_id_seq', 1, false);
          public          postgres    false    223            $           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 1, true);
          public          postgres    false    215            %           0    0    pedido_producto_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.pedido_producto_id_seq', 1, false);
          public          postgres    false    227            &           0    0    pedidos_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.pedidos_id_seq', 1, false);
          public          postgres    false    225            '           0    0    persona_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.persona_id_seq', 1, false);
          public          postgres    false    217            (           0    0    productos_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.productos_id_seq', 11, true);
          public          postgres    false    231            )           0    0    roles_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.roles_id_seq', 1, false);
          public          postgres    false    221            *           0    0    user_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.user_id_seq', 17, true);
          public          postgres    false    219            e           2606    29004 (   productos PK_04f604609a0949a7f3b43400766 
   CONSTRAINT     h   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT "PK_04f604609a0949a7f3b43400766" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.productos DROP CONSTRAINT "PK_04f604609a0949a7f3b43400766";
       public            postgres    false    232            S           2606    28938 &   persona PK_13aefc75f60510f2be4cd243d71 
   CONSTRAINT     f   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT "PK_13aefc75f60510f2be4cd243d71" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.persona DROP CONSTRAINT "PK_13aefc75f60510f2be4cd243d71";
       public            postgres    false    218            Q           2606    28929 )   migrations PK_8c82d7f526340ab734260ea46be 
   CONSTRAINT     i   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT "PK_8c82d7f526340ab734260ea46be" PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.migrations DROP CONSTRAINT "PK_8c82d7f526340ab734260ea46be";
       public            postgres    false    216            a           2606    28985 .   pedido_producto PK_97f69aaf286bdd82afbd487e4d5 
   CONSTRAINT     n   ALTER TABLE ONLY public.pedido_producto
    ADD CONSTRAINT "PK_97f69aaf286bdd82afbd487e4d5" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.pedido_producto DROP CONSTRAINT "PK_97f69aaf286bdd82afbd487e4d5";
       public            postgres    false    228            [           2606    28960 $   roles PK_c1433d71a4838793a49dcad46ab 
   CONSTRAINT     d   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT "PK_c1433d71a4838793a49dcad46ab" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.roles DROP CONSTRAINT "PK_c1433d71a4838793a49dcad46ab";
       public            postgres    false    222            i           2606    29009 (   role_user PK_c9667a1fe5b74f7427a3ab50025 
   CONSTRAINT     y   ALTER TABLE ONLY public.role_user
    ADD CONSTRAINT "PK_c9667a1fe5b74f7427a3ab50025" PRIMARY KEY ("rolesId", "userId");
 T   ALTER TABLE ONLY public.role_user DROP CONSTRAINT "PK_c9667a1fe5b74f7427a3ab50025";
       public            postgres    false    233    233            W           2606    28949 #   user PK_cace4a159ff9f2512dd42373760 
   CONSTRAINT     e   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "PK_cace4a159ff9f2512dd42373760" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public."user" DROP CONSTRAINT "PK_cace4a159ff9f2512dd42373760";
       public            postgres    false    220            ]           2606    28969 '   clientes PK_d76bf3571d906e4e86470482c08 
   CONSTRAINT     g   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT "PK_d76bf3571d906e4e86470482c08" PRIMARY KEY (id);
 S   ALTER TABLE ONLY public.clientes DROP CONSTRAINT "PK_d76bf3571d906e4e86470482c08";
       public            postgres    false    224            _           2606    28978 &   pedidos PK_ebb5680ed29a24efdc586846725 
   CONSTRAINT     f   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT "PK_ebb5680ed29a24efdc586846725" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT "PK_ebb5680ed29a24efdc586846725";
       public            postgres    false    226            c           2606    28994 (   categoria PK_f027836b77b84fb4c3a374dc70d 
   CONSTRAINT     h   ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT "PK_f027836b77b84fb4c3a374dc70d" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.categoria DROP CONSTRAINT "PK_f027836b77b84fb4c3a374dc70d";
       public            postgres    false    230            U           2606    28940 &   persona REL_551ede1f9ac73b4e8f18495c6d 
   CONSTRAINT     g   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT "REL_551ede1f9ac73b4e8f18495c6d" UNIQUE ("userId");
 R   ALTER TABLE ONLY public.persona DROP CONSTRAINT "REL_551ede1f9ac73b4e8f18495c6d";
       public            postgres    false    218            Y           2606    28951 #   user UQ_7395ecde6cda2e7fe90253ec59f 
   CONSTRAINT     b   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "UQ_7395ecde6cda2e7fe90253ec59f" UNIQUE (mail);
 Q   ALTER TABLE ONLY public."user" DROP CONSTRAINT "UQ_7395ecde6cda2e7fe90253ec59f";
       public            postgres    false    220            f           1259    29011    IDX_2a23ceb75c7511d0523c4aaf49    INDEX     Z   CREATE INDEX "IDX_2a23ceb75c7511d0523c4aaf49" ON public.role_user USING btree ("userId");
 4   DROP INDEX public."IDX_2a23ceb75c7511d0523c4aaf49";
       public            postgres    false    233            g           1259    29010    IDX_eb446d431a1abb9801e6ade445    INDEX     [   CREATE INDEX "IDX_eb446d431a1abb9801e6ade445" ON public.role_user USING btree ("rolesId");
 4   DROP INDEX public."IDX_eb446d431a1abb9801e6ade445";
       public            postgres    false    233            o           2606    29042 (   role_user FK_2a23ceb75c7511d0523c4aaf492    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_user
    ADD CONSTRAINT "FK_2a23ceb75c7511d0523c4aaf492" FOREIGN KEY ("userId") REFERENCES public."user"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.role_user DROP CONSTRAINT "FK_2a23ceb75c7511d0523c4aaf492";
       public          postgres    false    4695    233    220            k           2606    29017 &   pedidos FK_485346a40b61bb8ae3a98f5400c    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT "FK_485346a40b61bb8ae3a98f5400c" FOREIGN KEY ("clienteId") REFERENCES public.clientes(id);
 R   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT "FK_485346a40b61bb8ae3a98f5400c";
       public          postgres    false    226    4701    224            j           2606    29012 &   persona FK_551ede1f9ac73b4e8f18495c6da    FK CONSTRAINT     �   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT "FK_551ede1f9ac73b4e8f18495c6da" FOREIGN KEY ("userId") REFERENCES public."user"(id);
 R   ALTER TABLE ONLY public.persona DROP CONSTRAINT "FK_551ede1f9ac73b4e8f18495c6da";
       public          postgres    false    4695    218    220            l           2606    29022 .   pedido_producto FK_6085b3aa6d0d1aec5985d3cb2ce    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedido_producto
    ADD CONSTRAINT "FK_6085b3aa6d0d1aec5985d3cb2ce" FOREIGN KEY ("pedidoId") REFERENCES public.pedidos(id);
 Z   ALTER TABLE ONLY public.pedido_producto DROP CONSTRAINT "FK_6085b3aa6d0d1aec5985d3cb2ce";
       public          postgres    false    228    226    4703            n           2606    29032 (   productos FK_aee00189e42dd8880cdfe1bb1e7    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT "FK_aee00189e42dd8880cdfe1bb1e7" FOREIGN KEY ("categoriaId") REFERENCES public.categoria(id);
 T   ALTER TABLE ONLY public.productos DROP CONSTRAINT "FK_aee00189e42dd8880cdfe1bb1e7";
       public          postgres    false    4707    232    230            m           2606    29027 .   pedido_producto FK_da007c96a1af3dbf6a925bf6581    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedido_producto
    ADD CONSTRAINT "FK_da007c96a1af3dbf6a925bf6581" FOREIGN KEY ("productoId") REFERENCES public.productos(id);
 Z   ALTER TABLE ONLY public.pedido_producto DROP CONSTRAINT "FK_da007c96a1af3dbf6a925bf6581";
       public          postgres    false    4709    232    228            p           2606    29037 (   role_user FK_eb446d431a1abb9801e6ade4456    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_user
    ADD CONSTRAINT "FK_eb446d431a1abb9801e6ade4456" FOREIGN KEY ("rolesId") REFERENCES public.roles(id) ON UPDATE CASCADE ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.role_user DROP CONSTRAINT "FK_eb446d431a1abb9801e6ade4456";
       public          postgres    false    4699    222    233               8   x�3�I-.Q(�/H���2�,IM����O�L2�K��9�R�8���b���� ���      	      x������ � �         ,   x�3�447�05352�074�-HI,IIL�I-F������             x������ � �            x������ � �            x������ � �         Z  x�U�]k�0���_�wMrb[�@���ƴS��Pb=�"m�������]��\=��
�ѭr��8�s���9c�����1g��v�(�7a�[��cgSky�Lp1��<D�߅7!Г��>#�� �}c:����ZZ�H�YiL@�������N�-�l�g�<Ma"ܬ�l��#�(�Xi��CJ���"��O���e#?�\�jd��ݳv/��dfk�/n�5�~��`���V9��GXc1,�
�a�,  [��ү�����o;�����.4�4�/��%/%�r6Mb�F�1��qss2X�{u�{E>~E5��||�
]�n��U�J����-1������A�	����            x������ � �            x������ � �         �  x�e�K��@ �3��<��MDDa@�����6��~�ff2�&�:~I�X���4FD�ѽ��y�U�:u1�3�ڹީ�j��qZ���`JP�5T�~��1���g:�C��d����5@���q��/� ��X�g|=	~�?�0p��9�����$�`�
&��a���S\-�aN��|��J!K��R: `��I�b�v	7&Y�SV�d�M�0c(�&X	�[�[N�r����bZ�M-0��|�E�Ԇ	�9�F$+�1�^�y������C�ֲ��*"&R�,����h��?�!�u��B{��t�gvɊ�D�M�2�ⵔs�S`�}� �t�'�d�����b*+�Xg^�ܰ7�x6HV"�-y�Hn���I��Ty�oGɾ��>���4��+�~�.�S��(v��Y6��u���$ɿ���     