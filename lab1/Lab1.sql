PGDMP      4                |            postgres    16.2    16.2 
    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    5    postgres    DATABASE        CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Ukrainian_Ukraine.1251';
    DROP DATABASE postgres;
                postgres    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    4786                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            �           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            �            1259    16406    books    TABLE     �  CREATE TABLE public.books (
    number bigint NOT NULL,
    code bigint NOT NULL,
    novelty character varying(3),
    title character varying(128) NOT NULL,
    price double precision,
    publisher character varying(128) NOT NULL,
    pages bigint,
    format character varying(128),
    date date DEFAULT CURRENT_DATE,
    curculation bigint NOT NULL,
    theme character varying(128) NOT NULL,
    category character varying(128)
);
    DROP TABLE public.books;
       public         heap    postgres    false            �          0    16406    books 
   TABLE DATA           �   COPY public.books (number, code, novelty, title, price, publisher, pages, format, date, curculation, theme, category) FROM stdin;
    public          postgres    false    216   1
                  2606    16413    books books_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (code);
 :   ALTER TABLE ONLY public.books DROP CONSTRAINT books_pkey;
       public            postgres    false    216            �   �  x��WMoG=����\��{�ggr�(H�Y�D�����
Ga@�0A�%���Q�Ŏ��w�z�Q^U�ڳމwq�%�Z�������^Uka�����;p�|�����n���޺�t�����W1�v�n�m�/\3��)�o㽇��|�;oJ���ʆV	�k�]ӵ\s��| ����D��G�}E�U"tEAT��~�L�&�ب��I��6�k�|(� (��$H�?Luye��
���h�u�����M��ѮX��{�>'��9�1`���$�_wxF7_, `���x]��~*u���#�Pi��H�q@�N�*�Q��Xgp�Q�z��;��D[Jv	9�'��=���A�-�z�
v��85è�@gg�ZG�����ka���^�k��o���=�zEƗ1���l��R�MG��&��@�3c+ʺ�`�?I���`I�$��e�,1ʮ��|�+	�J�8
��%f�=�E'���?P!̭:���~_��|����^$�[8`� ^;��c��'Gc�YB'�R����ퟅI#��?�?�ߩ�"��Sg�f����Q6��:T�v�Ϧ��Z�~?�OҸ׺}�|��U�0 mA���
�������iZθ�t�����D����!�l&L�'ܵ;w�sH�g����EK8�XGHI$����.g����D��l�LE���EkU�i�
y�1���/s�����؍����Zއ��a'�E��f(K��,b]�	i������~2�>�Dk�5Ax묌��ٙ�Sss���[wd��_K�ot�"/^�����Fi��%J�Uu4���86�Mh�{cSQJp�l��2%҄m/�NcPگ_����C;��Ǚ-�$b9��UX��Gx}�q�8�e���́�+�BE�7}C���BM1�]
��'ZO~=y^��f�P�b�}�/}�>��Q��FN'*B����A�l�	�N/�:-�I�!��P:�g�8�|t(�}4>�;�x)I�!$i��Efkb\c.�/">m�@١tC���	�j�濙?�81QӠ��� ��WFgP�*���#�!�L��f�9j;٥f��Zt�UZ��2�����F��v�UG1�I�a'>�9L���aE%)��o����P��}ҦB�b���9k�cZ9��TF��/'� �ͫ�m������j'�[�4t
�����%���r?c"�ÜI}�Ƣ�*r��yG{��rk�5QY��@���t�Uy����J���n8�{�/æεHq5����7W����]�~j���@ǯjZq��Q�"E�M�v�WB4xm$_u�\��7�ԑr��a�Em�"��S��w�"�D�0*-��/&�N�����BY�ao���JM*]���~oHa1�~<������0yI&��s���6P��c:������fX���T��[     