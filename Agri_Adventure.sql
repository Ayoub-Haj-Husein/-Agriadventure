PGDMP                      {            Agri_Adventure    16.0    16.0 Z    8           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            9           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            :           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ;           1262    16452    Agri_Adventure    DATABASE     �   CREATE DATABASE "Agri_Adventure" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
     DROP DATABASE "Agri_Adventure";
                Agri_Adventure_Ayoub    false            <           0    0    DATABASE "Agri_Adventure"    ACL     �   REVOKE CONNECT,TEMPORARY ON DATABASE "Agri_Adventure" FROM PUBLIC;
REVOKE ALL ON DATABASE "Agri_Adventure" FROM "Agri_Adventure_Ayoub";
GRANT ALL ON DATABASE "Agri_Adventure" TO "Agri_Adventure_Ayoub" WITH GRANT OPTION;
                   Agri_Adventure_Ayoub    false    4923            =           0    0    Agri_Adventure    DATABASE PROPERTIES     6   ALTER DATABASE "Agri_Adventure" CONNECTION LIMIT = 2;
                     Agri_Adventure_Ayoub    false            �            1259    86236    Carts    TABLE     �  CREATE TABLE public."Carts" (
    "cartId" integer NOT NULL,
    "userId" integer NOT NULL,
    "productId" integer NOT NULL,
    price character varying(255) NOT NULL,
    quantity integer NOT NULL,
    category character varying(255) NOT NULL,
    "productName" character varying(255) NOT NULL,
    "imageUrl" text NOT NULL,
    "isDeleted" boolean DEFAULT false NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Carts";
       public         heap    Agri_Adventure_Ayoub    false            �            1259    86213    Carts_cartId_seq    SEQUENCE     �   CREATE SEQUENCE public."Carts_cartId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Carts_cartId_seq";
       public          Agri_Adventure_Ayoub    false    222            >           0    0    Carts_cartId_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Carts_cartId_seq" OWNED BY public."Carts"."cartId";
          public          Agri_Adventure_Ayoub    false    220            �            1259    86205 
   Contact_us    TABLE     �  CREATE TABLE public."Contact_us" (
    "contactUsId" integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    message text NOT NULL,
    "isDeleted" boolean DEFAULT false NOT NULL,
    readable boolean DEFAULT false NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
     DROP TABLE public."Contact_us";
       public         heap    Agri_Adventure_Ayoub    false            �            1259    86202    Contact_us_contactUsId_seq    SEQUENCE     �   CREATE SEQUENCE public."Contact_us_contactUsId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."Contact_us_contactUsId_seq";
       public          Agri_Adventure_Ayoub    false    219            ?           0    0    Contact_us_contactUsId_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."Contact_us_contactUsId_seq" OWNED BY public."Contact_us"."contactUsId";
          public          Agri_Adventure_Ayoub    false    216            �            1259    86285    FAQs    TABLE       CREATE TABLE public."FAQs" (
    "faqId" integer NOT NULL,
    question character varying(255) NOT NULL,
    answer text NOT NULL,
    "isDeleted" boolean DEFAULT false NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."FAQs";
       public         heap    Agri_Adventure_Ayoub    false            �            1259    86278    FAQs_faqId_seq    SEQUENCE     �   CREATE SEQUENCE public."FAQs_faqId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."FAQs_faqId_seq";
       public          Agri_Adventure_Ayoub    false    230            @           0    0    FAQs_faqId_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."FAQs_faqId_seq" OWNED BY public."FAQs"."faqId";
          public          Agri_Adventure_Ayoub    false    229            �            1259    86320    FavoritesLocations    TABLE     2  CREATE TABLE public."FavoritesLocations" (
    "favoritesLocationsId" integer NOT NULL,
    "userId" integer NOT NULL,
    "locationId" integer NOT NULL,
    "isDeleted" boolean DEFAULT false NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 (   DROP TABLE public."FavoritesLocations";
       public         heap    Agri_Adventure_Ayoub    false            �            1259    86319 +   FavoritesLocations_favoritesLocationsId_seq    SEQUENCE     �   CREATE SEQUENCE public."FavoritesLocations_favoritesLocationsId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public."FavoritesLocations_favoritesLocationsId_seq";
       public          Agri_Adventure_Ayoub    false    234            A           0    0 +   FavoritesLocations_favoritesLocationsId_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."FavoritesLocations_favoritesLocationsId_seq" OWNED BY public."FavoritesLocations"."favoritesLocationsId";
          public          Agri_Adventure_Ayoub    false    233            �            1259    86293    FavoritesProducts    TABLE     /  CREATE TABLE public."FavoritesProducts" (
    "favoritesProductsId" integer NOT NULL,
    "userId" integer NOT NULL,
    "productId" integer NOT NULL,
    "isDeleted" boolean DEFAULT false NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 '   DROP TABLE public."FavoritesProducts";
       public         heap    Agri_Adventure_Ayoub    false            �            1259    86290 )   FavoritesProducts_favoritesProductsId_seq    SEQUENCE     �   CREATE SEQUENCE public."FavoritesProducts_favoritesProductsId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public."FavoritesProducts_favoritesProductsId_seq";
       public          Agri_Adventure_Ayoub    false    232            B           0    0 )   FavoritesProducts_favoritesProductsId_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public."FavoritesProducts_favoritesProductsId_seq" OWNED BY public."FavoritesProducts"."favoritesProductsId";
          public          Agri_Adventure_Ayoub    false    231            �            1259    89202 	   Locations    TABLE     *  CREATE TABLE public."Locations" (
    "locationId" integer NOT NULL,
    "locationName" character varying(255) NOT NULL,
    owner character varying(255) DEFAULT 'Public'::character varying NOT NULL,
    description text NOT NULL,
    location character varying(255) NOT NULL,
    "TheBeginningAndEndOfTheJourney" jsonb NOT NULL,
    workdays character varying(255) NOT NULL,
    "TicketPricePerPerson" integer,
    "numberOfResidents" integer DEFAULT 0,
    "totalStars" integer DEFAULT 0,
    phone integer,
    evaluation double precision,
    email character varying(255) NOT NULL,
    "isDeleted" boolean DEFAULT false NOT NULL,
    "ViewThePlace" boolean DEFAULT false NOT NULL,
    "imageUrl" text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Locations";
       public         heap    Agri_Adventure_Ayoub    false            �            1259    89201    Locations_locationId_seq    SEQUENCE     �   CREATE SEQUENCE public."Locations_locationId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."Locations_locationId_seq";
       public          Agri_Adventure_Ayoub    false    238            C           0    0    Locations_locationId_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."Locations_locationId_seq" OWNED BY public."Locations"."locationId";
          public          Agri_Adventure_Ayoub    false    237            �            1259    86267    Orders    TABLE     �  CREATE TABLE public."Orders" (
    "orderId" integer NOT NULL,
    "userId" integer NOT NULL,
    "totalPrice" double precision NOT NULL,
    "orderStatus" character varying(255) DEFAULT 'Pending'::character varying NOT NULL,
    cardholder character varying(255) NOT NULL,
    country character varying(255),
    state character varying(255),
    address character varying(255),
    email character varying(255) NOT NULL,
    phone character varying(255),
    "isDeleted" boolean DEFAULT false NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ordersReceived" boolean DEFAULT false NOT NULL
);
    DROP TABLE public."Orders";
       public         heap    Agri_Adventure_Ayoub    false            �            1259    86266    Orders_orderId_seq    SEQUENCE     �   CREATE SEQUENCE public."Orders_orderId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Orders_orderId_seq";
       public          Agri_Adventure_Ayoub    false    226            D           0    0    Orders_orderId_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Orders_orderId_seq" OWNED BY public."Orders"."orderId";
          public          Agri_Adventure_Ayoub    false    225            �            1259    86255    Products    TABLE     �  CREATE TABLE public."Products" (
    "productId" integer NOT NULL,
    "productName" character varying(255) NOT NULL,
    category character varying(255) NOT NULL,
    description character varying(255),
    price character varying(255) NOT NULL,
    "imageUrl" text NOT NULL,
    owner character varying(255) NOT NULL,
    "numberOfResidents" integer DEFAULT 0,
    "totalStars" integer DEFAULT 0,
    phone integer,
    evaluation double precision,
    email character varying(255) NOT NULL,
    "ViewTheProduct" boolean DEFAULT false NOT NULL,
    "isDeleted" boolean DEFAULT false NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Products";
       public         heap    Agri_Adventure_Ayoub    false            �            1259    86254    Products_productId_seq    SEQUENCE     �   CREATE SEQUENCE public."Products_productId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Products_productId_seq";
       public          Agri_Adventure_Ayoub    false    224            E           0    0    Products_productId_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."Products_productId_seq" OWNED BY public."Products"."productId";
          public          Agri_Adventure_Ayoub    false    223            �            1259    86204    Ratings_And_Reviews_Locations    TABLE     f  CREATE TABLE public."Ratings_And_Reviews_Locations" (
    "ratingsAndReviewsLocationsId" integer NOT NULL,
    "locationId" integer NOT NULL,
    "userId" integer NOT NULL,
    "locationName" character varying(255) NOT NULL,
    comment character varying(255),
    rating character varying(255),
    "imageUrl" text,
    "firstName" character varying(255) NOT NULL,
    "lastName" character varying(255) NOT NULL,
    "postDate" character varying(255) NOT NULL,
    "isDeleted" boolean DEFAULT false NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 3   DROP TABLE public."Ratings_And_Reviews_Locations";
       public         heap    Agri_Adventure_Ayoub    false            �            1259    86201 >   Ratings_And_Reviews_Locations_ratingsAndReviewsLocationsId_seq    SEQUENCE     �   CREATE SEQUENCE public."Ratings_And_Reviews_Locations_ratingsAndReviewsLocationsId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 W   DROP SEQUENCE public."Ratings_And_Reviews_Locations_ratingsAndReviewsLocationsId_seq";
       public          Agri_Adventure_Ayoub    false    218            F           0    0 >   Ratings_And_Reviews_Locations_ratingsAndReviewsLocationsId_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."Ratings_And_Reviews_Locations_ratingsAndReviewsLocationsId_seq" OWNED BY public."Ratings_And_Reviews_Locations"."ratingsAndReviewsLocationsId";
          public          Agri_Adventure_Ayoub    false    215            �            1259    86277    Ratings_And_Reviews_Products    TABLE     a  CREATE TABLE public."Ratings_And_Reviews_Products" (
    "ratingsAndReviewsProductId" integer NOT NULL,
    "productId" integer NOT NULL,
    "userId" integer NOT NULL,
    "productName" character varying(255) NOT NULL,
    comment character varying(255),
    rating character varying(255),
    "imageUrl" text,
    "firstName" character varying(255) NOT NULL,
    "lastName" character varying(255) NOT NULL,
    "postDate" character varying(255) NOT NULL,
    "isDeleted" boolean DEFAULT false NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 2   DROP TABLE public."Ratings_And_Reviews_Products";
       public         heap    Agri_Adventure_Ayoub    false            �            1259    86272 ;   Ratings_And_Reviews_Products_ratingsAndReviewsProductId_seq    SEQUENCE     �   CREATE SEQUENCE public."Ratings_And_Reviews_Products_ratingsAndReviewsProductId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 T   DROP SEQUENCE public."Ratings_And_Reviews_Products_ratingsAndReviewsProductId_seq";
       public          Agri_Adventure_Ayoub    false    228            G           0    0 ;   Ratings_And_Reviews_Products_ratingsAndReviewsProductId_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."Ratings_And_Reviews_Products_ratingsAndReviewsProductId_seq" OWNED BY public."Ratings_And_Reviews_Products"."ratingsAndReviewsProductId";
          public          Agri_Adventure_Ayoub    false    227            �            1259    86219    Reservations    TABLE     �  CREATE TABLE public."Reservations" (
    "reservationId" integer NOT NULL,
    "userId" integer NOT NULL,
    "locationId" integer NOT NULL,
    "numberOfVisitors" integer NOT NULL,
    "locationName" character varying(255) NOT NULL,
    price double precision NOT NULL,
    cardholder character varying(255) NOT NULL,
    country character varying(255),
    state character varying(255),
    address character varying(255),
    email character varying(255) NOT NULL,
    phone character varying(255) NOT NULL,
    "isDeleted" boolean DEFAULT false NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "completeOrIncomplete" boolean DEFAULT false NOT NULL
);
 "   DROP TABLE public."Reservations";
       public         heap    Agri_Adventure_Ayoub    false            �            1259    86203    Reservations_reservationId_seq    SEQUENCE     �   CREATE SEQUENCE public."Reservations_reservationId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."Reservations_reservationId_seq";
       public          Agri_Adventure_Ayoub    false    221            H           0    0    Reservations_reservationId_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."Reservations_reservationId_seq" OWNED BY public."Reservations"."reservationId";
          public          Agri_Adventure_Ayoub    false    217            �            1259    88925    Users    TABLE     f  CREATE TABLE public."Users" (
    "userId" integer NOT NULL,
    "userRole" character varying(255) DEFAULT 'User'::character varying,
    "firstName" character varying(255) NOT NULL,
    "lastName" character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    gender character varying(255) DEFAULT 'Undefined'::character varying,
    "isDeleted" boolean DEFAULT false NOT NULL,
    "imageUrl" text,
    "isBanned" boolean DEFAULT false NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Users";
       public         heap    Agri_Adventure_Ayoub    false            �            1259    88924    Users_userId_seq    SEQUENCE     �   CREATE SEQUENCE public."Users_userId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Users_userId_seq";
       public          Agri_Adventure_Ayoub    false    236            I           0    0    Users_userId_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Users_userId_seq" OWNED BY public."Users"."userId";
          public          Agri_Adventure_Ayoub    false    235            Y           2604    86240    Carts cartId    DEFAULT     r   ALTER TABLE ONLY public."Carts" ALTER COLUMN "cartId" SET DEFAULT nextval('public."Carts_cartId_seq"'::regclass);
 ?   ALTER TABLE public."Carts" ALTER COLUMN "cartId" DROP DEFAULT;
       public          Agri_Adventure_Ayoub    false    220    222    222            S           2604    86214    Contact_us contactUsId    DEFAULT     �   ALTER TABLE ONLY public."Contact_us" ALTER COLUMN "contactUsId" SET DEFAULT nextval('public."Contact_us_contactUsId_seq"'::regclass);
 I   ALTER TABLE public."Contact_us" ALTER COLUMN "contactUsId" DROP DEFAULT;
       public          Agri_Adventure_Ayoub    false    216    219    219            f           2604    86289 
   FAQs faqId    DEFAULT     n   ALTER TABLE ONLY public."FAQs" ALTER COLUMN "faqId" SET DEFAULT nextval('public."FAQs_faqId_seq"'::regclass);
 =   ALTER TABLE public."FAQs" ALTER COLUMN "faqId" DROP DEFAULT;
       public          Agri_Adventure_Ayoub    false    230    229    230            j           2604    86323 '   FavoritesLocations favoritesLocationsId    DEFAULT     �   ALTER TABLE ONLY public."FavoritesLocations" ALTER COLUMN "favoritesLocationsId" SET DEFAULT nextval('public."FavoritesLocations_favoritesLocationsId_seq"'::regclass);
 Z   ALTER TABLE public."FavoritesLocations" ALTER COLUMN "favoritesLocationsId" DROP DEFAULT;
       public          Agri_Adventure_Ayoub    false    234    233    234            h           2604    86300 %   FavoritesProducts favoritesProductsId    DEFAULT     �   ALTER TABLE ONLY public."FavoritesProducts" ALTER COLUMN "favoritesProductsId" SET DEFAULT nextval('public."FavoritesProducts_favoritesProductsId_seq"'::regclass);
 X   ALTER TABLE public."FavoritesProducts" ALTER COLUMN "favoritesProductsId" DROP DEFAULT;
       public          Agri_Adventure_Ayoub    false    231    232    232            q           2604    89205    Locations locationId    DEFAULT     �   ALTER TABLE ONLY public."Locations" ALTER COLUMN "locationId" SET DEFAULT nextval('public."Locations_locationId_seq"'::regclass);
 G   ALTER TABLE public."Locations" ALTER COLUMN "locationId" DROP DEFAULT;
       public          Agri_Adventure_Ayoub    false    238    237    238            `           2604    86270    Orders orderId    DEFAULT     v   ALTER TABLE ONLY public."Orders" ALTER COLUMN "orderId" SET DEFAULT nextval('public."Orders_orderId_seq"'::regclass);
 A   ALTER TABLE public."Orders" ALTER COLUMN "orderId" DROP DEFAULT;
       public          Agri_Adventure_Ayoub    false    225    226    226            [           2604    86258    Products productId    DEFAULT     ~   ALTER TABLE ONLY public."Products" ALTER COLUMN "productId" SET DEFAULT nextval('public."Products_productId_seq"'::regclass);
 E   ALTER TABLE public."Products" ALTER COLUMN "productId" DROP DEFAULT;
       public          Agri_Adventure_Ayoub    false    224    223    224            Q           2604    86215 :   Ratings_And_Reviews_Locations ratingsAndReviewsLocationsId    DEFAULT     �   ALTER TABLE ONLY public."Ratings_And_Reviews_Locations" ALTER COLUMN "ratingsAndReviewsLocationsId" SET DEFAULT nextval('public."Ratings_And_Reviews_Locations_ratingsAndReviewsLocationsId_seq"'::regclass);
 m   ALTER TABLE public."Ratings_And_Reviews_Locations" ALTER COLUMN "ratingsAndReviewsLocationsId" DROP DEFAULT;
       public          Agri_Adventure_Ayoub    false    218    215    218            d           2604    86282 7   Ratings_And_Reviews_Products ratingsAndReviewsProductId    DEFAULT     �   ALTER TABLE ONLY public."Ratings_And_Reviews_Products" ALTER COLUMN "ratingsAndReviewsProductId" SET DEFAULT nextval('public."Ratings_And_Reviews_Products_ratingsAndReviewsProductId_seq"'::regclass);
 j   ALTER TABLE public."Ratings_And_Reviews_Products" ALTER COLUMN "ratingsAndReviewsProductId" DROP DEFAULT;
       public          Agri_Adventure_Ayoub    false    228    227    228            V           2604    86230    Reservations reservationId    DEFAULT     �   ALTER TABLE ONLY public."Reservations" ALTER COLUMN "reservationId" SET DEFAULT nextval('public."Reservations_reservationId_seq"'::regclass);
 M   ALTER TABLE public."Reservations" ALTER COLUMN "reservationId" DROP DEFAULT;
       public          Agri_Adventure_Ayoub    false    221    217    221            l           2604    88928    Users userId    DEFAULT     r   ALTER TABLE ONLY public."Users" ALTER COLUMN "userId" SET DEFAULT nextval('public."Users_userId_seq"'::regclass);
 ?   ALTER TABLE public."Users" ALTER COLUMN "userId" DROP DEFAULT;
       public          Agri_Adventure_Ayoub    false    235    236    236            %          0    86236    Carts 
   TABLE DATA           �   COPY public."Carts" ("cartId", "userId", "productId", price, quantity, category, "productName", "imageUrl", "isDeleted", "createdAt", "updatedAt") FROM stdin;
    public          Agri_Adventure_Ayoub    false    222   3�       "          0    86205 
   Contact_us 
   TABLE DATA           �   COPY public."Contact_us" ("contactUsId", username, email, message, "isDeleted", readable, "createdAt", "updatedAt") FROM stdin;
    public          Agri_Adventure_Ayoub    false    219   ��       -          0    86285    FAQs 
   TABLE DATA           b   COPY public."FAQs" ("faqId", question, answer, "isDeleted", "createdAt", "updatedAt") FROM stdin;
    public          Agri_Adventure_Ayoub    false    230   ��       1          0    86320    FavoritesLocations 
   TABLE DATA           �   COPY public."FavoritesLocations" ("favoritesLocationsId", "userId", "locationId", "isDeleted", "createdAt", "updatedAt") FROM stdin;
    public          Agri_Adventure_Ayoub    false    234   �       /          0    86293    FavoritesProducts 
   TABLE DATA           �   COPY public."FavoritesProducts" ("favoritesProductsId", "userId", "productId", "isDeleted", "createdAt", "updatedAt") FROM stdin;
    public          Agri_Adventure_Ayoub    false    232   )�       5          0    89202 	   Locations 
   TABLE DATA           %  COPY public."Locations" ("locationId", "locationName", owner, description, location, "TheBeginningAndEndOfTheJourney", workdays, "TicketPricePerPerson", "numberOfResidents", "totalStars", phone, evaluation, email, "isDeleted", "ViewThePlace", "imageUrl", "createdAt", "updatedAt") FROM stdin;
    public          Agri_Adventure_Ayoub    false    238   E�       )          0    86267    Orders 
   TABLE DATA           �   COPY public."Orders" ("orderId", "userId", "totalPrice", "orderStatus", cardholder, country, state, address, email, phone, "isDeleted", "createdAt", "updatedAt", "ordersReceived") FROM stdin;
    public          Agri_Adventure_Ayoub    false    226   `      '          0    86255    Products 
   TABLE DATA           �   COPY public."Products" ("productId", "productName", category, description, price, "imageUrl", owner, "numberOfResidents", "totalStars", phone, evaluation, email, "ViewTheProduct", "isDeleted", "createdAt", "updatedAt") FROM stdin;
    public          Agri_Adventure_Ayoub    false    224   �      !          0    86204    Ratings_And_Reviews_Locations 
   TABLE DATA           �   COPY public."Ratings_And_Reviews_Locations" ("ratingsAndReviewsLocationsId", "locationId", "userId", "locationName", comment, rating, "imageUrl", "firstName", "lastName", "postDate", "isDeleted", "createdAt", "updatedAt") FROM stdin;
    public          Agri_Adventure_Ayoub    false    218   �1      +          0    86277    Ratings_And_Reviews_Products 
   TABLE DATA           �   COPY public."Ratings_And_Reviews_Products" ("ratingsAndReviewsProductId", "productId", "userId", "productName", comment, rating, "imageUrl", "firstName", "lastName", "postDate", "isDeleted", "createdAt", "updatedAt") FROM stdin;
    public          Agri_Adventure_Ayoub    false    228   &R      $          0    86219    Reservations 
   TABLE DATA           �   COPY public."Reservations" ("reservationId", "userId", "locationId", "numberOfVisitors", "locationName", price, cardholder, country, state, address, email, phone, "isDeleted", "createdAt", "updatedAt", "completeOrIncomplete") FROM stdin;
    public          Agri_Adventure_Ayoub    false    221   ,t      3          0    88925    Users 
   TABLE DATA           �   COPY public."Users" ("userId", "userRole", "firstName", "lastName", email, password, gender, "isDeleted", "imageUrl", "isBanned", "createdAt", "updatedAt") FROM stdin;
    public          Agri_Adventure_Ayoub    false    236   O�      J           0    0    Carts_cartId_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Carts_cartId_seq"', 118, true);
          public          Agri_Adventure_Ayoub    false    220            K           0    0    Contact_us_contactUsId_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."Contact_us_contactUsId_seq"', 27, true);
          public          Agri_Adventure_Ayoub    false    216            L           0    0    FAQs_faqId_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."FAQs_faqId_seq"', 30, true);
          public          Agri_Adventure_Ayoub    false    229            M           0    0 +   FavoritesLocations_favoritesLocationsId_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public."FavoritesLocations_favoritesLocationsId_seq"', 54, true);
          public          Agri_Adventure_Ayoub    false    233            N           0    0 )   FavoritesProducts_favoritesProductsId_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public."FavoritesProducts_favoritesProductsId_seq"', 17, true);
          public          Agri_Adventure_Ayoub    false    231            O           0    0    Locations_locationId_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."Locations_locationId_seq"', 37, true);
          public          Agri_Adventure_Ayoub    false    237            P           0    0    Orders_orderId_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Orders_orderId_seq"', 12, true);
          public          Agri_Adventure_Ayoub    false    225            Q           0    0    Products_productId_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Products_productId_seq"', 33, true);
          public          Agri_Adventure_Ayoub    false    223            R           0    0 >   Ratings_And_Reviews_Locations_ratingsAndReviewsLocationsId_seq    SEQUENCE SET     p   SELECT pg_catalog.setval('public."Ratings_And_Reviews_Locations_ratingsAndReviewsLocationsId_seq"', 101, true);
          public          Agri_Adventure_Ayoub    false    215            S           0    0 ;   Ratings_And_Reviews_Products_ratingsAndReviewsProductId_seq    SEQUENCE SET     l   SELECT pg_catalog.setval('public."Ratings_And_Reviews_Products_ratingsAndReviewsProductId_seq"', 97, true);
          public          Agri_Adventure_Ayoub    false    227            T           0    0    Reservations_reservationId_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."Reservations_reservationId_seq"', 104, true);
          public          Agri_Adventure_Ayoub    false    217            U           0    0    Users_userId_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Users_userId_seq"', 32, true);
          public          Agri_Adventure_Ayoub    false    235            ~           2606    86253    Carts Carts_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Carts"
    ADD CONSTRAINT "Carts_pkey" PRIMARY KEY ("cartId");
 >   ALTER TABLE ONLY public."Carts" DROP CONSTRAINT "Carts_pkey";
       public            Agri_Adventure_Ayoub    false    222            z           2606    86251    Contact_us Contact_us_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public."Contact_us"
    ADD CONSTRAINT "Contact_us_pkey" PRIMARY KEY ("contactUsId");
 H   ALTER TABLE ONLY public."Contact_us" DROP CONSTRAINT "Contact_us_pkey";
       public            Agri_Adventure_Ayoub    false    219            �           2606    86317    FAQs FAQs_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public."FAQs"
    ADD CONSTRAINT "FAQs_pkey" PRIMARY KEY ("faqId");
 <   ALTER TABLE ONLY public."FAQs" DROP CONSTRAINT "FAQs_pkey";
       public            Agri_Adventure_Ayoub    false    230            �           2606    86328 *   FavoritesLocations FavoritesLocations_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."FavoritesLocations"
    ADD CONSTRAINT "FavoritesLocations_pkey" PRIMARY KEY ("favoritesLocationsId");
 X   ALTER TABLE ONLY public."FavoritesLocations" DROP CONSTRAINT "FavoritesLocations_pkey";
       public            Agri_Adventure_Ayoub    false    234            �           2606    86306 (   FavoritesProducts FavoritesProducts_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public."FavoritesProducts"
    ADD CONSTRAINT "FavoritesProducts_pkey" PRIMARY KEY ("favoritesProductsId");
 V   ALTER TABLE ONLY public."FavoritesProducts" DROP CONSTRAINT "FavoritesProducts_pkey";
       public            Agri_Adventure_Ayoub    false    232            �           2606    89214    Locations Locations_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."Locations"
    ADD CONSTRAINT "Locations_pkey" PRIMARY KEY ("locationId");
 F   ALTER TABLE ONLY public."Locations" DROP CONSTRAINT "Locations_pkey";
       public            Agri_Adventure_Ayoub    false    238            �           2606    86301    Orders Orders_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "Orders_pkey" PRIMARY KEY ("orderId");
 @   ALTER TABLE ONLY public."Orders" DROP CONSTRAINT "Orders_pkey";
       public            Agri_Adventure_Ayoub    false    226            �           2606    86276    Products Products_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_pkey" PRIMARY KEY ("productId");
 D   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_pkey";
       public            Agri_Adventure_Ayoub    false    224            x           2606    86252 @   Ratings_And_Reviews_Locations Ratings_And_Reviews_Locations_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Ratings_And_Reviews_Locations"
    ADD CONSTRAINT "Ratings_And_Reviews_Locations_pkey" PRIMARY KEY ("ratingsAndReviewsLocationsId");
 n   ALTER TABLE ONLY public."Ratings_And_Reviews_Locations" DROP CONSTRAINT "Ratings_And_Reviews_Locations_pkey";
       public            Agri_Adventure_Ayoub    false    218            �           2606    86304 >   Ratings_And_Reviews_Products Ratings_And_Reviews_Products_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Ratings_And_Reviews_Products"
    ADD CONSTRAINT "Ratings_And_Reviews_Products_pkey" PRIMARY KEY ("ratingsAndReviewsProductId");
 l   ALTER TABLE ONLY public."Ratings_And_Reviews_Products" DROP CONSTRAINT "Ratings_And_Reviews_Products_pkey";
       public            Agri_Adventure_Ayoub    false    228            |           2606    86246    Reservations Reservations_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public."Reservations"
    ADD CONSTRAINT "Reservations_pkey" PRIMARY KEY ("reservationId");
 L   ALTER TABLE ONLY public."Reservations" DROP CONSTRAINT "Reservations_pkey";
       public            Agri_Adventure_Ayoub    false    221            �           2606    88936    Users Users_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY ("userId");
 >   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_pkey";
       public            Agri_Adventure_Ayoub    false    236            %      x����r��֮�N_���9��S3b�	!J	�8jQ�Hp��Ϟ9+�y:��n�i�e[<�;����}�q��!�����rߎiSF��3;/���m������~��K�礮�"�����K����5c�������zxyDZ�_�����P��9k��Wxy&�����]�{}�>S�V}��7�2��z��S�|N���� ��������f}���$�$EA��2Ҥ����oF<�N�L�V�(g��K�*���I��>x�	�� ;�;��[?`�(�>9�҄�gF(ݾ�Vb�ıƎ�sce�qw�XN�HJO�s�IN8�S\�1rJ�swW��`�l�/:>�t�q���uU,���Z�]:��;̹�f����X�ug�A���LU���(�S������xl��CE���3��w̥����&naۭN��.Z��몳'���S��"Њ�Q��	�Ӊ�]W4N����a�|��������ڰ��q��,-�
~�;.��x�Bu��Pn��m��@�_�/��!����8�������6���3������3M��p^�����z�~S�"�Y(~����g��J��E|mǕ��:��.�OG���L��a�Qㅻh���_��d���)�:!p,M|�ۦ�ux�tR�gm�z.����/(���|8b͡=����������%�:v�N�����Ł�lV������=F"�F\b}�v_j�}T:-�s�{.i���p��0#�\35�(�h��R-MJ��
�dGXy��
��Pf�+�O��S��Nȸ]�c^㾡i{N�iTt}�o����^x���
���	9"|v�B����`(bu!)ص��,��-��o�;�����0L� �;��(`zBV�o�3d��1�(�ٷ�~{����D�+]��϶��#t�4�E���r�{4�����<+����T��Q�[�El����#.�Å��]��bLq�X�Q+̨�c�qrWRw�X1^/\��U+_.�i���3b������ʡv�l�;�e�z�N������(Ea@�a��G4���y���Ģ:V�d��(�޲�p�Y)8����N���R0�a�Bn��鑝/�э"��I�MF�.���,N��m9pwtWK���p���Wf�7��]�&��w�I��C%�L������d�Rw�%��v3�	�2����k[��H�w}���\��$� "W�7�����W�nH�t�����]�D�o��υ�J8˺^�[���p��B'�*2S�1r��³���j�GH�k!�)�\�.^�����y\��ӂ�&��V�0��h��SF˴�r�hl��Y:w�r%��}�K�Tͷ�C�Oq�������9\4���LD#1cn�V����y[�����f'mI�5��ol9�t����b�I���s$����g��t#O����؇�Dj�t��#Oj�+�BBէ;�h�l�m*��wi�%�i�
�y��/#T�^�+GGߗ$K`�|i�]y��~�FL? ƞ!{��r���W0�oĿ]%[w�gxJ�K=e�z�|?@�B�ltٗ��n�5a��9e�)8w~��Q]���mx��f�8�����p+��Ad��"�$.�Tȴ���f�i��G��AsnE$��ҿ
�k0���!��{Gd5�
��E7�2[M%����n=�����NS�y=��\�\�<*��#�T�H*$���ȸ��c��Yn],[��x�&8}�~�ui��Ň�_a;'H�=4��!�.�V���N AV��cU�D/�L��D.�8���|f}r��%�;u��S��C`A���se���w���!B��<�I �D�����=}܍�u���������2�-A2��
:�lM�.n>��	锹����ѽ�3���V!�,�U�[���$�ѡ��e��1<�D��+2�z�T�[[%�C.�#�L��_��B�F�i�@;��l��u�vVؘ\,_r�c4����=ʞ���F���
�Ӄ�y6�)�pM�;���&c����y��Kw&�b��az��Ev%HVE��z&\,y8�.nN�q���յ׻��aR�$�ģ"�D�
bv�'���
��o�/z�;d!�[��0tk�]��.L�����#��Q��a�%�$WW�Q[��}s������M~%�g�)���u�ｎ���M�Y��ы��-�y	��+X��6�kb���(P��l=D��C����Z�5Qi�N�͢����,Y��:=�z%��b�M��X�&��a![�6Okfw��^&9�ַ�W�n��:�A���>ы�����/3e��2an��f�o$��z���c�Z�k�{8b?"����T�!t�͸;c�F�L���/�Մݽ��*K؝���Zb�r��X���Mľ��w�����pz�R�!���ۀ��؟��&�����r���;��[
Q򙄑w���Dmi�V~fZ��8��~P��iz�A��a�N�����?��"��(��X����q��_�[I�2u��5�u���(�NH��0�8fX?���'�x�o�8#�[�Δ��t\Tc���.�k����uA��DIdR�u�ИD�����k��Ʌ�����¹oF�-�ޛ�Ū�$Ci�.��й���^{��~�G,��(kP�A��˳�q�S�҆kͿ%�����9�x�u����d647�>jc�rNn�GrdǾ��j!2�\��v|��D�=�t2Mfl}��.��v�wA�vVY���s�pC?Bet�~{a�+;�0�g�D���i�r+x���
������b���'�*�n�֭��n���;������{V��Y��_��W 7g�p~���A�|Ɖ7�B���)n��&n�q��������\¯\b Xo5�Vs�)�O2��6�C2_�H|��F�=h��(�ߘ����͟�#��<֞��nz0t�(C59���'��L4VJ*�
TS	a�5��䞸�7��[�]9���I���"W�}L=�w��;@{e��ZxG;zQ緥UI�/���g�J��n�*�ʈ,u��e8�J	�@`Xѧ�Y�ͨ�;<�%����Li�����u�!B]��EP@�K���.IN~"e+'�3>�Z��g�
��>B�f�/��*E�T�6����P9�FW���Y�y@"�p�6ve镕�	e�:�]���y*��z���=��
�����&<��j���6W q�M���/2#L�pne�Vv���J$��������[�+��7�(�\����J~S���V��œ�J<O�	�T���(N�&rԩ	k
���<��^|�Ι�����8TR	d�f~K�f���
��k&XR����ChI�����$��Z\Y�w�7���j>�r�q�������Đ��W���y�����KGXh�h/���<�,8><�N�N�\�PkIؓ����h\�5V��T�k�G�yD���)|bg(XfrWզ�[�j}D�Yvh�$�b����^P�|�N(i����ܥ6/ܕ�f�X�F��ƣ|d�h���h'��UDe�ց���<�g��O�Oj�s�7��ӥ���i�cB_� �6�g�x>K�y�L���;_�!@&���w�i֥7ԟ�n�_�g:E��pH!Jϱ�Y3������)����8;1�➧��R_����S&7S4�ԅwJx-POܱ��QWrǃ6�Z��tdH�`|��5��<�"�k{�)	���p��NS���Q�!�h���%P�?�75��q�b4����>ʫ{�y��v�)�YV��"k�É��߂������&�2��E�̵�3�9� ��$	�	w;-�⤴���IS�]���=Ge�q�٪�YٌX�j��@�H�,O�^�}��{ڳ�����c���%-Y�M-��� Kꏴ�},_�G��l2�&�|��C�C�#�3L�!r5��:�^�'4ط��b�%-��\Rԛf�_\�pP�ɏ������W�5�|3��'��2<�&�l2�/�y^ɤ�	�㨍���|%s�y6����<�p���F�Η�:B�pn:Ϧ�|���H��~�_@����
��l:�/�y^�D�g��8�D_    ��Z�܄�M���B�wBi���PT�г	=�F�y%yƈ��ҿD!@�&�lB�/z^�ğ!���_X���Э}��/R�2�7h��0���=3=���$ښD��$z'�;�>���4<�/��sܜ��w��r ��w�
��mc�����#����X�P��bl��5������e�4=�����lj�'��;
���W�J�Dnu�V��ʺ?����'���oC��Я:��>���,D����+���i�������w��'~sS7��ל���LP���'��x��8��8�y�{4�8�A�nz�^z�޽�ݟ�w��%
=�o7��iz �m�ma��#l�Y$��`��3�2������~����j]�Ui�[�M���������ބKO���^��N��"Ƣ�b?��SM�h�Z5�N�s�T��a�d�H�a��3<��X��[w�n�;c����DΞ�k�ӑ q�L�ôz�aF5��TT��X���#4�XRL��x;���D��紷�*􁩏��j<K?{,se��|d�wl�l�1MQ������\�<��n�.Š�b\I*���\�Th���T�Әr�����N�#>��]�elMt���)�n�$ލ�/�NL�Q\.���S�k��]ǎS��wA"�s ��h��ǡ��w|'F��6�z�� sK0����w�J#���$��4"�+�$��F�;�4�ُ�O�|�/�]F"�F>���|�b�<M����l�\a_�z}�Ίo�����au��q�.�	sB�f�PC�С��d����Z�U ��tw+�*�
ijhd�6����,�=���д�j�����٠����b>�پ�%�{��8s��9�Y�&��]\��<x���%�C�>���ٳ���J�g����C�B[��p�/n�����7��?�F*���@Y3c�~�ŧ�qA՞׍qD��	��h�I���	�`��@�Mhv����}Ο���j����hR�;3��|�	�(�������)v]�xCZ�����?��/Ձ\�,�bӳ9�4��;�������oO�qjK �8����cb�?3ia���P�8*N�)�bs7n�?�:�v}@�OpW�1�P>r�UA� �zsnGv��[���-چ��!2�y�PD����#���0�Mz6�m���������Ĺ@Dz��b�g�j���X�bP�$���,G��	�����-$����hd�w�4�;�ʽX]�n<�7Nh�G��Q�zD��)����M<������3�2�Q��b��f���jB4��'^J50YB��;Iܾ��ŵ���:�Њ�Ȕ��\Q%�!�$�z=x}��姕D��������~���.;�����٠�ҽ�MD}܇!�/�-�Ds�y6�K�2�Ԭ�^�Y+��p'G_E	�֪�a�Yh��i���j�9���N��δu��ƍ��d`ч�?�D!�H��2-�1��_�J^�����܍�F/����ݠ�ury�����%�l��R�;��$2����°z�Q�΂)�;$*�\{M�y�!>	V�H#�ޛϹ��7��2�k+���9�c�i��|���T1�e�Z�� $z��=-��՛�+w
?�U�b��"�+�8@����^P�^������U\��|~�$t �� ����5S��>�6.��i��Q��~�Dm�Guo`+"N����R~9��؅uA��s>a���ʟf���x��>B�͛����_��ލ�]��ᡞ����\�vh�Uɶ��C��g	�0���� �[V����R6��W��av�����>�
ϴJ�,�z�½Х�=]N�X9�̎�{T��z��ҥ�uJ�g��"�E�sJ�ωp�
w9�<�]0A`�;��2��*�
�s�$*��@n��NG�6�K��QNea�o7t.򣐏?#�O��͗]rl��������U\���D��|�KJ�61�fD�('w��r� SbL����cOʸOL�?����ɼ��T�R��z	��;�G�!��,Ő��H0�Yՠ��=v�Z�.~��4��ݞ�S���畊=�W#*�YAR��{P�J5	�،��'(7��:*3�Q��vM	�./��q�Ճ��Lߟ��y9MĻ�Vu�h�Г͙l�`��s
�XY#/PL�BP4�rS�U���=��^8�L�;�{<2B`�4���xу�BV�y`�dy�J	�g��}01`�d%�߼�.m���G���x��"}��e�G �[7~�����3������{����k�����7�{����P:x��ç|��Wb��qؕmr�L��X��AHq�����"]kD�䂐��Qu8�f�'�zH1#����zu������w�ך�q_������3[�;�[�>BA��.:�eGǝM�0�e����3�Zv��:R�a����û�Jɺ5�ٽ��>����n���+es}�$�-���p�SAǓ,��]'�]�͑tN,ƃ\���
)5���'�@P`�%�;_q�n}V�A,5�Y��D ?�rȩW���Gx1LP�GS)�K�ݧ�5�\�a'�aM�����}����\S�G�zF�����\�p�_ؾ��7l7l?�k���V����O�4=�ئ,m��g*K?��n���㛲�)K�=��#�I������	'6eiS�>UYzM�y�2������Z%k!�7Oi�Ҧ����.�~���|���I��!)�sp3!9ڹ�=y�;Q��a.0	dj�:�Q���A��d2�6�4�S1U6\,�bķ?���Z�W�"�s᠈��J�0�����Q-@!2��l�DD���t�z�^��x��$ΒsΞ~�z��8d����]Mt�h�G��h�%��3�X���w[�\�@�p �sr��=fgܼ��>vho"�H�g��ӈ�N8_
��PЕ(������M�������XJq�u<RA0����<sbr�H���IQ���BIy���-�����tҿ��k�6�nx��M��4�_�y��G�g�~_����S��i��P�|T���9���'��4�M��\��6q�~?�ny"��	n_��A l]�i��G3��{�/]�u��
b.��}�$��	�L�$WTtGiz�f<v���t���d�'գ�� v!�2<���o��s~�\��J=O�s���:���<�u�:I�<'Thk���_������e�6j���M�-��LK�5C�ߖg\�znT�0'O��h:�좝��LR�ns��Io���Ͳ5�dc>�P��Ɲ$荐ik�ޑ�Cs&!�3w�; a�+s�ǔrd�bt���dfۮ9����N.((�C��98mTv�lH!�W�����VVc�V������3E�?7�� �'�n�m�g�" �l�{C�y!�K����K���>�fa�:-ݔ."�:�K\6�SP�C�%>.��Ď���t{(	*�w�KD�rw����q,X:��#�Y��^����pl<�fE&�8��m7���]��a�hPO��R`�q�=���/�97C=�B<��!
��F͡E��h�{��q����l)�1/��Gt�$si"9�KU�k�$lc�Z����G)�����;���Jhf{;T�Q o�!�|�^%�I�Ƈ��Şf:Y��X�v���޸> �>�厠X���-x��@%�1����O��m�نH�!�O"y?�So�N��L$����n�~��G�h3��}%a�M�����a�}=A� 'm�Ѧ}�f�+��3N�	���Z��M?���_�������c��B�"�[�~���f�+��ޅ�/Z_V<a (����c�r4c}�+E��;�[�!�<�
HX�5�,Tpf/���Y�2���נ��+����+\p9�ec����h����\D�M�WJ�Is򋣧�N:n�V ���(�㮃��J��E<��6�t����v��3딘��K����^���Xc��Y�Bi���ah�qel��Q!w#�e&�8N7�C+XB;��i�"M�!�Ў~,�*_�����R������;�    N��=ګ9����v4�����k�Č�Xhw���a�9���Q=՚��G�t>_�Lp��7���L�L����߸.m~����ҟ\!_ږm�N�}��e����r�z����C:�b�@�5�����Z�� y�]8к�7���;��FeJn�i��-Q�O���H#;�67$
�K��9�u4�o^d,(hʄ�BwҺ2AH��өP��ŧ�԰�=f���Z~���dϒRF�vz� �[��N��h��'�!s���c4�K|<|1S*�k�}g��B�������֭HQt ����/���Tӓ�>OG&@G�8����|ė����{���J�l�}�)x����i���Y��c���ņ\���1�������D�m.y�K��`��5�c��f��0�B-�ݴ�M�����WN�g�zs��_���?i ��oZ���?~a^C9�}��I���o��/\?~�^͏�N/����W<�Y�mV�͊�G*���q��R@�6+�͊��Y��@ş���b�ԗGH����[���2�;��C�!�M�꟦'�n3$�ɯ�A~�^��;���MO$���6C�͐|��+r���S1���D��m�d�!�E;ȯ����ە���H��͐l3$_����$(�?H8���H
к�K���%���4��8���MO$@�ԥM]�U��� �0���MO���M^���I�$�w��nz�`p��M^�䥯YE~ő~ƈ���'
�n��&/}�*������A���D��$"طk|�������c��n��'���M���!�BV��Π��z����
l��Gt1�Z�x"Qj�&�<r�v����BoՈ��Ak�������E�Q�u���.@�kr�c(�OV��u$����UC�O�싛�i�^��$�hh�3��N�=���źb��\���V���K'���f�'T ���K@��c\<�W��A%U�v2aM[`�X�;�崤��r߁6FE3a?�t�
ё=\�[j�L9��ޒ#�J&�](�$��($dNK��Q���Ғb*����,Ǫ:�2� N}P���	��G#&8��`���=���}��" ���KF���4��<+��\��u�.��f��e��`���O�	�ׇ%����8�8I�"I^���O*{(Eudy��M���UX���CG�/*�t`MU�`��E:�c|���6��R�^����SDQ\k��	=E�^�}�䃔��4��0,�Ϲ⪾�sN��V��z���Y�h�uP��+\)@��O��T�}�ٝ�(�a��i	�sA��E��^S�'ג��
��,3�0��,���&z��6CW��&��S�-��[��ˬ�<7��ζ�����ɂ�wr\�g�ݮ�h��V
~G���xO� �����O<��=8�g���w6_k}
����m+w��r���3��3�����Xnw���',ܽ%��F A�Z%� J��o_)tQ�������l&�t�CLx W��P��K�	�]K��Z7F(-��U�|_��!l����<�w:#�	#2xk�i\j>���w���/���
�8�s��h�!C�'�uk�<�c��^,d����X�P:zlA7�Pٗ,	2%���ޟcb�i��^T�����0���P����	�B��EW&��t���x(y4�AVrtvś՚:��c_��=QI{ �ް���DmAʿ��j�]>���L����.�$��8Rp�;�Qw����%�����I~�C�s$""xvԖP���V�b����Q��=#��n�e��� ��7�߄�^��ç�/���(��c�ݩư��8�m��x1�X��e��+t��,m5�
������ZTAa�e����&�p�*�����A zB�����^�������ݩw��%<��g�Z�#ɔ�F��8�՞;+��|\�;O>�;����d��)�z #t1o�Ԍ��/�;��]�J��pSp���6�M���" �@��@���(��Q�}��wѱ�C;������B�$��~���g"�f~�>\=s��VS��y�A��N��h�C
ݮ�Fk��^ �E�%�h�p���[��ӗ�����o�w�K��E�7�"���(�w�Ꞵ#���7_����2S&y1�����x�����#r��_��<.rN�ɥ�O�e8�g�^k)��i�D<fN/
�b�1��M���b�%c�V�����R��2�aE�	*rwd{��l�v�T���B�=�� g�U��F��4��b�eI�h��>Vpס��;�*>��c,�
0B������RR��ƞ~<J��.M=L�e��e�>��欞��X�����ѰF����`�������$U�Z j�cM��J;9� M�Ď�E�� T{~�/�=�,����)
����r׻�O�!>'����{��?Ƅo��K�������+���E�`j|u��Ku_n����S�� ��a�GF��8h���r/���`�����hK�2?�
��$�.2d@!��TV�T���2F8�����o��+R��/q�'�@d�e> o��3YO�z�u�b'\��O>xP�����D�InM����L�nB6�� �)0a*���t{O������)��Y�G�Fv����#��h�u����kv����{��Q�u}����ǽ�뱱G�S}�?2r������">�?���/s�4���F�V^p������Rt������'��Zĥ���dy�"��=p���${����K�t��zqogK�ҷc��4�.(�BJ�.������$j�����S���S�}p��t�����!h�z�r'<m��RF���[�E5��NN�G,�*��R�̕pfv���ΛR�c����MDa�F��Q�� ���a��V:���c��F�T�ܫ���b>��k��W)WN�(��]p����&T�4�ҳ.��`D$������rv�9H��s7��G�$�]o�^�m�2�Ԫfn��G~�xF��k���|��%�.��:&���l���c��\R�/-�LFdL�Q�95��z�t���z/�*���[k	��2_2�d<uM��`*���c�:�D���~��Hܳ�ئsLM�~@���{>ۃ��Q���Vvk��c�/�]ks��,g�Gp"�`�g�ӂ�8��4{��p�ޣ0l��]����S��aW�V�F��������'�-4��"��{�<�G�R>����h�uY0;�}�\m�R{-ᡕ	�_��U�[U��ăJ���SQ��Aw\x`H��MczTm�G���z]�Y�?(�ᵬ�>.�^Q5�~�яEz�V���3sQ�K�(.S,צ'�ʉӈe�՜v7ܨ��Q�<*�%���\c)wM������$c�D �c��@�#�]���~�h�����;[T�ɖv��e�� ����H�.L��+I�S���3N��R�w���]Eij�9@I®>:k�VX�Ãaڳ
:��>3�cŋ�k���u'��㈕��<�q���w�FN�Г]�T�D@�;H�!�%Nk���xX_]�T=N%]�,m��!�n�̖��EX���{������:�ԓ�L�9��2�̀����o����/�Q9�l�Bm]���B�w0�Z4�=�韦'�xAtkCmm�_ӆzT������4=������6����#O���剦^x�ƞ���_8����3
�-���	��\�6����Em�wPőg}?c�Ӵ��T�N�����N�{�����6�?M+���[���J��=0�g��>�?M+�/-��ۿu�a��=Z�g�|?+�Ӵ��ҝ��[���6���x���k�?M+���ںT[�ꋷ���ї���oO�YM8���##X,@vkTm��/��{ŕzFߞ����+���ۆ޶���6�^�q������u���<�%�mI�,齀	C�-���~}s[����>}M�;�oOv��J��v�B�6!�MH��=�א�R}�q�M��ۈ�6"��z�Ky�~����6�#��^H�D�M���]�׸�=c��$����T7���+��3��Dȿ}U� Q   �I��&�o"�/Y��&��	��<_��M��D�/[�{��aVJ�t�^�M��D����{�|o�O`����=?==�Z�8      "   �  x��Yˎ�6]S_����a���&�h'�h�M�nh����á��8_�{Iɒ=�	��� 9$-��s����rA�E�(Ra���~%?�|�I�*s򫖲VŦzA_��S�䆊"1�)ZT~�J�d���Tl�Z5Y�h�Ѻl��r�
�[�Q0z�%�S	���emQ�r���.�:5K*��E����uS�z#t����eҬ��%Yß?�[���!�'��_1�y��$81��	y��Mߤ"kR`�=���2���u���fV���u�a��Z���X��'�r�T8?+Wfm�
l�Q%r I*� *���2��E��^�����$
�+*�JU�N�ϸ8q�y<@�<	z�ln͓`b٤�8����ӶXm3Q�%�Q���Z0����&K �G�sO+��T쨖�\I�x�Wn�5؏t".&�؁�`��!y��w��;QiE
�1t�Q-�p�i����Z&��{V��z¦lE�DŲl�!�6|&4z�)�{Bcq)\�M�Dj?��|����r)*E4t�J�v�����@��;�����#aK��U�� ���h>czMW�Τ�E�Z�c�ŪV+�)�ʽ��N/��E�Y<��H�<�{��w ]�$�6�d�NB���$(����A���v������������Aӫ�>��Zz!���	c̧Np�C��?�8�{�r��6�1h�
cf�3C��ں�����u��R��s����9t9{"����=�!���Ϣ]h�����L�EvhIN#JcR����B�y�Qt����w|�%�@çl��3����@�L���<��{Nq���<szk��=�,�
��gq�ʏC�?!��L�Jdmz �N	�.�x�`�%�9���=�9xsh4�E��FP
g,��Q�y>'o�.�RS	ɰc������1�]�Rw�t��rAw.��߉N��@P�\��<�)ȯ�{�]8�=V��Slv�w+�k �9�Νu#���L�w���U	���}J`�d,�cc��)�8Mz@��q��(^�ήdq0��!�@��: a@����"�ŋ(`��!Ϗ��O��;�ul7ߡ��_���9w������D��-i
�*lG,�&�"�������C.����d�-x���E����OI��9y��\&�Ӷ�д�l�~�D���"�2��y0�q�Q Y�nI�-��U�Յ�=����G������>��5��MN����#zG|1�����܁R�6�%(���t��hlMx3^����u�@�������Gp:X8��h% 0�t�ZcD� X_��J�aR�(t	Yt��F�z�52vE_c�9�$tb���P�x��P�B�+���e�0F�L�&�	���k����_�9�?��4�!/��}S��b*��v�i-�F�<*mr㋗�Fj�^��#u��ٝ�MK��ro?�=�w1g��P�}�J�;�
�H
fQ�C�5N�s��247�ѣ�g�U�@^v�#���|����M�L��fd�\����ᾑ+J���v��Y��������N���B��HbF��]�,�L�zd����pS�m�l�
�~��*Gx�4�Zm�J�䕀�!�����\�\|,���Q�Xh≽���-�N��\L�F�s��1~�'^�?+��[� s�ʲK�0ƶqU�Tl+�2gR�g(�`���3g��G���a�\��K��j��{q�%��vhȣ��ƣ���)��b�������      -   V	  x��YM���]�_��,�C�Gۛ���b�z���zUo#�l4������߹`A�;��$��Е��9�*��k�;��[a�:3~�2﫮׼b<��UvK9o�U�)m���
-E��vW�fg����/�s�\�E0�0ή�w��N0}^2n�Y��c��_esybWq?U��\_���OyS෬a�,D��ū�*]�٧$��n�z{̒�vg��_��KQ��C�썿��R��.y�:�K��������z�(7������+��/%��5�l��?���N�خ�&N�x��m��l�yKQ��M�y���y'U�˴Z]4�o\3/eUh�#��H�I���w���<�.��Y谝��JiQ|h��d@42݊��57��:,�s�ƻ�6��mE�k����V�fQ�����\y�6qv��`�71YxB-�UO���x�i\Q"�'��fg�]���R�]}���u^r#p�0%����F�Prg�j[&Γ�NFU}'����Fɯ6�L���]�H�!�r�����T�+�s�	�2�+����}зi)�y�x��¶	�}E����/�(:\�J٘m�Y;���U����~ $))ղ1�R��do��S�ZM��S��1
͘y�4���P�c���4	��-E��3�9��)U;\��#�M>��E��+��w��6{�ہ�[|P�V���T��6oRo��-r-A)�%~Rs�4��܅�M��>K��NK���wE��Je:F=-	�hqC x&ľ�ʌ��*������
�PE_ ���r?]�a`�L�2t�<�\T�yg�@�8>0�В3�4/$�9�s������Rt�
�繪kU���K�sז��
�PA2��YBj��ߗƖ&�ڹ�
�@@&=RAE�Oqܫ��Ft]�&��6���!���%k�'zt��z#5�
B�r����wA���tX�BD)a5o- �]��ԣߑq����G0���m��4N��-EI���3�S�:�8�@ۊ�slzbb(U���u/���T��a�`J�|l� �O���ICu	P،6t:bdDn��oE�ۺ��M7B��j��MㅂI�8ۅ2-EI��!���HQ@�A��7qꍥD� GT�'���&���W�stt�r���BT����ɔ�sg��#���C��G`Z�_7��Ψ�#Sg��-�������ws�D�'���SU� ����Gν���ȒU�U5E'��6��W�d�E��;Qu���Д.b��|�����B��)&7���s)��YS�J�G�����s����5�5�2o)J����Jr��t���u׷�d�R)"پA㑇>�@��M�y�t�Ui���E���΂&��"�pȂ~NKQ��7'a�l���?䣮~�����,%���e@�K
� m4�Mv���}oknr��O����m���M�W-.Z"W��BQ�,�l���R�̄������Z�Ճpj�3�4�\��͙�����X�:��Ƽ�'kC�j�6BEOG΋��Y�hbİ��.�6�����٫rL��r���r���c�*!��q�ӷ�bҧ�Dd�����_=��ר�؇������Z0�_þov�vR��R�l�q��j�q�yj�af�N}�:Ü��BTDҜ5;����}���o�vo�aW��(]���!��b�>�������i�G;Byvم���X����J��י���$��h���q}�� IyKQ�,`��c�}�£�7Q���Ӧ���D2¶�G=?�_����t6M��s���[���Q���3�Q9��|�Ā�K*��-CZ �e�9Q93���g��*�!�e|e:�� ��P�a��סY���4j�X�o�:㋈Q�����ޟL��I�B#n��$��YY%�;S�r}����-.}9���ٰ�-�b[̪���-�����t3�w�N�t�������E|��;	�7��=Q���2���<ʰ\� v�����t�w%Q��#M_�(Mgo�#���@�zՈ�����Ux�h�`�r{�y{�����yƷ���|O��y%�[�����A�}�^<�K`�m��S�l����hp1$毂^K.��O%��D��̴��`��2�?�i�~��i)J�o��G�0%�4�g�a����B���Bw_�A�ؑ�78n�|1�4�<*���G�}�|�	����4����iV@*p���w������S%ҹ���h�2Cϸ��eo�/�my�}�d�>�j�-E�!T9�Q��t*UG�h����œ@x��yۍ��Iׁ��aП�q>�٣L Ƈ]�n��:�E��([/�S4W�UC�l#���ꔁ7\a��{�[�2gg`�ҥ>0;Q�`dv�8rA������؍w�uei�=��o���y>�w�@H�xK���(���)�      1     x�m�9�d9��)�� .Z�2��`�~L�Z�*/���>����f�-���n}7+u���h�
T�k�����c����"�O�l�R�S��������A�`�xt�2���3\�F�]O��&N)�Ϩ���GＵ_�oY���w?�&��ƻ�2�E�D�`�h�ݤX�} �
}F5�e>)�����O?bp����
��n�۸��׿������0��"6�%������?qs_3�*�:d�F�-�6�۷��mE�D�r���
���O�o�`y3#&I������>͛G�2�@$zR{���[���ݏ���w���F$��b��v�F��s#�٘{�nY�I�NDb�c�ϰ�xd��H�wl}zw,N~��H:�X:]���,;�@$zR:�XMeI��L����b��݉H��qlM�܊Zv��H+*Ǳ�M�����'"e�ߕ� ��a�߈�_9�̓ ��:F�� Ru?��������D��5$��h1�� R�|yGo�n�n�f�F�Wv|�����A��x�����&U.���݈t�Oη�~3���.����0�C�oDV��A�S���������Ci=���������m���Fd��K��m�E��ވ��y�X2Z:'�?�//y��&ÒР_����f1����w�Fd������e����߈l��v�7�z���-��N/��=;��w#j��w�.�2�x`���j���{�16˚��oDM�gAmKÂͲ j�{�����1���f��h,=��A��OD�"��s       /     x�}�;n!Ek���G���ZRg�K�I1'��肹p�����Y�b/�)6ݰ��A�	[O�')*Kb�,�٬h�S�B`a����T�ް{�����N�N&�ʉ}CP�Ԓ�:�cWM�A}�v���Y�A���î�l�!�����5��P�S�B����?{�P[O�s����^m���c�����;^g�m���A���ŭ�S�b
�s�;����ǟ�����F�ѹ�.(�=9���{p����z=��������      5      x�ŽYo�J�5���F���9���.�#%NII�DQD�p�q���;B�3�Lg�:՝���i�J
��Z{�CēԆa��s��{ݶ|ںmZ>sş��uaZ�O��u>�I�<�U��s=�q��C��PZ=�a�s�VA��������/꺼_���yJ�׫��~]��s_?i�<9n{u��ￇUpL���_���2_��<���ݶ�+�¿�?Ox1���9�����.x5��'{B�?4òC�|�xV������nZ��W�=�OI�7ݗ�����[7_⺎��m���_����cX�w�'�P,���M�5u?��}�O���c��ؗ���O�~��îS����6��.W*Ӫ�?}$#����O��%/{L����z������g���7J�$E3��/3�+������^���?0w�4�H�%kT�&hn�Lo����T�"��|���y'�����4���c���t$��U�L�.���lV/FaOY���6�v�4LPFVa0X����0J��%���Y��GtR��_��̸;%�̋�X�~�#Q�up`"��\�I;i�Z�G;
J�P�i��t�Iѵ��s94���:�o�6�6�Ogi��{�U=��m;Ti�ml�����4s%x������0s8�?�wx��P��/��Sr�Fl�B�l&L��6�W���F��<#=��j��?O���؟�_p����$� ��C�3B��/�B"����'�����
��'�m��K�0xZ��_�a{�X�t8�t󴊟��m�z���[�;?�R�y|��K�<UV/�+<�n��k �>���«���������4m��W�n���>Q�>����pzL����n�$�+Њ�\���Nċ'���[6E�k���N�^/{�|�2���}�����[1ҪL� ��P�������8w^�N7e�٤���)�,f�&.j�J��doc�b�ΰY������@ 
�"��7�D;�Κ�4}��s+wu=?c�C:+�d%O�!O���4��rl���fn�K{�AV:�0�L3�8�!�ς�|F�nd���c���4��m�1�!u���̛����Oә��˪(��:K��6�F����\b{>V�Za���"Y/��s Xd'*��<8w�ݦS�u�Y�d��4�$_��a�9����@���~V�����J�>V���m v�L,��}�`(
7y:�mBHlJ`M h��֧�ߘq��g߭��;N=x<��p�ް���U)8�|�\��!�1<<��?��������	�4���@�
0�;��?C2�>��?B�+��a���4�D�M���)�OӋ�:M���;a�7=D����^��UA��<[[f�	9�<?�I;��u�s����Ʀ�iϜCϝ���rKFm��EB�f5G�þMVL��>9䷑�K�V6d��S�Z���R��P��S<�7w�,I؇����8��T�F����)�+^�"vHBc��w��h���Jí�BB�|�S���!Th=Ve�7oʪ�=�@���w������]a�h=J[i�C�$�S���*ݭY�R���ڃ�/n�F�^z4SqV�|s�Tϛ��KPݸ�e`�\`���C��E��P&� �F��`����/�B,=xl��:�ų�A=����- jn��u��I �T��sE�s�
菬\]�\>FB���:y��"��K� ���	��wR�[7H�Zv�;��]�OG���*�c(��'�FQ�q���'�|LЯE1�;Q\��yi!�vE�蜏7e��2GRB�[D�m8p�&�;�=�.c�$��z�������~mv4a����fخun���K.�������_)���!C�\�٦������a����8v�r��팂��"��zZ�����-���5##�d�f�r�]���N��`<��Q�Ӵ�MU<%�7�;[����΄|���h���&b˗����(��Ң��3�׭u�xA�Ȯ;]<(���T��dMP0'�+�lle��n��%�8D;�Iuk�`Vy��k��w���G9�>G4�|����D4��~��;���A��V~~��<�n����% �k�E�9���Aѯ��>��_@�],<���_�����`꧍����eni��Û�z��{�_]��P����OB�$6#b@��Cb��A�:;/�}v~��F~'�u<+�����u��3�|No;#Owe�_i�fwNna��"�A�1(V+���kT�'Yi����bWq�7��6�.��ʤPN��V+�#�e/)�G�Ձu�L{^v^v�V��X��$nv�u�gvZuv�T���6;�S�t ��æ��O�&��8r^�:����؋#we91P����1pq��6�Z�v�0V�&G�ۉ�Fq.�oB(]����"�1�j�&8?�c�9Ӿ��1V}(�ӠZ�b�`��oU+]���R�la-N�D�5�����;	#�'���q����#%�k���@���C��T@A>��0�z��] ��g|�C
���S�~���M����r���q��o1s��.��!��i����_I[����q�7��C�+Q?`�`a �R���-������	[���-�op��$�e�)m��p��;��rD������~�ʮ6TS_�Qfdl]e�J+queܶ�K���I³ҙ�C�z��
�y"�yA{��	�By�R���#1{�z��+^"���Y��2ܫ͵����b�w'x��Y��˳��7O��wKN�Q꬇��({+�U+�5A�G0�fR��\_���3�4;:Nd���
j�a>nzhж9F#Oh��愢"<�_)k�,��4)u�o�����4��e�6�c�F�e1���9�ENy�g��{�'`����N�U���CܓX ֓�"�g1��{�^�-���s���,�<(��?�C4��I8�s���J�x��[�����D<�vow��$�}�K��Y�ϩ�����~�Z���`tpR^����Z���t,d���* aOyT�E�u������ZcK0�e����ӪS�^�H0���<��������Hw���i���h�b����H �R������F�:��(�l*P�Nfw�) ]yA���E-}��k��X`vV�v��H\q�0�P�R��P&@���J 4��ƫ��<7��t#�J�"v�v��#Ux���5`!a:�̪�/�r��b�Q��lo�ɍ��l'��5C�:2E��Z��5Bl�����[ӈ}.�3���	/9JLTO��n\*K&�FVdZ��]��E������]�AݱK�Cc�@�F4�����3���}<�-���:��!�����#L_����9�G��-��=��������@�H�a��[���z�����I���g���}B�G�}p٧��K~��_Q�wBt��J_.�Y9��K��u���?(�VY2���i��4�+�h\d��:Q��6�[Ϊȱ��uTOp�E���/�L�H-W��d+i㬽S.�c����I�ݲ�[%	��ݓ{��!����O|�3�~]���X���+ϺT�a���󴵬`\�Ȫ�u%����m����,\u�ts�a�ћ���@+���W�b�����Ɠ���6��&��qH<b�ˇT7�4%�*�k�����s���0�C��[Iq�zN`Ta3�}�b��G���:	��
�{!X�p�D�؝T�'���� i�.�ğ�e! M��ҟF��R���]������W�E�g��׺�a���4�M`��g]=Ou�wI݀��O��x_��S�?UƟP�W��F��C
3��e(�� ��i��x�~+���)�twM}X�I�o<k��'��f�Y[�.�D'k4��T���)���~>�$���\T�F���Lk}����F�񁥢����0���*rd��	V�r���L�
>,jǘ��(cKL�6����
m'J�1^Z���u/���[;д�a9G�ŝh*k�m;��[�����a�m�f�28���ܦ� l�����V�:_���k    ����a�y��L�����:�T�דnKz:�NUgI^i�Q�vݥ�h�#.��ˠ�5��\j��$��/8��IR�@��5A����Ӫa�[�+��n�>�n�>�4?����P�Q:r?-�v`ف%��g�^Y�sT�# LX��4^o��3�EZ8��D�3���j�, S�$)�;�c�/��_�N�w������X���1�����sסт�(R.Ђh͔$�s�t�ΰ�9ӎ+�+� BC���R��n�O����j�"���ULq������Q�F�Ɲ�ï4KB�^|�%�s�p�4�����*R��/$5^;6�﵃b�����>0E���({�f���k�FA��y3�1�����f�㩴���&2v̕���\�Y*�t�W�́�,��f'�Q7�!��4��rN>p7r�&(�ǻ�����Kv�A�cY�,��3o��c�B��\�D�[����%����~�j"�/8�BЏR��
�}�Z����ѓk��`) *~�������k�	,#�@ٿ_��?��L�]!���3�y(��d��;���� @m�|�a|e��������g2������_��j��4�%h�C�2�,�U����XE�q�o���)���,�i�u�$���hs�)+olvT.��γ��2B4�D�F<�r{K5{4��+5}��wo۩?EdfX��1k?�N�U��ZC��
�LǢ,Z�M:����{#���o�1vr	0ww,6l�ޢz)С��yN�ު=SV˯$eev��Ņ���Y�[��V�Aګ��0��� J���.:�n~a�����+��	��u���ʜ}+I�pF�!�r�v�C�5Ot�n�����9e@d
P�O�F����*�I�J+JPw�R�9a	`)��W��	´����@���?���U�z�މ�R.�b|���2l��u��~����w��RJ� |�r��.�)�7��I�����!�z'���N�K'�����r�N��Յ7�n¦U0UY�|_zg�wӣ�4��,�~� �O�"ua����շte�v���ۍ7K�Z$���*�yh�M)>�k�6b�l,��*u�;\��w����Er�.[H����H�	�E�m�4P"~y?�w�&{G �ޫ\/�����2dVg�ɐ��P���4�HqI�:�>�Y�3pǋ��C5�+����/���xuBQe��AHwk�J����RT|CG�����R��߯���רhkf�ѐ5�����Q�,����G_~�[�0%�8~��~���Z�?��ߝ��� }.���-�t7L�_n��$�����p(�^��w�ǁ:-^q����
�C������)�A�rR����7]LM4�9���E�*t�@��(_���4F�rP�e,BQM.Tz�.�>]eT����݁[�c��5<m��~�h�:mv��3\:{yXC2'h%�9S�A�<9�Emc�q�Ƽ�Nk��1��]&O�n�=f,���� ��J�ͧ�>?�E` k�_w[�ĭ늻a�5�jSL���Ŷ�̰W�S��X�Ա��F�&�/Nsk����,Y����3��9t׊��;B'lX�r`U�]�ί�D�z9���5����$L���n#5��y�$k�����7tPв�.�Ћ-\�VD��p,�g^��# /X�� �;z�7Ż����\�<*��>���fz�����v��8�a��\@�),�D��2l��I��hz�G@ ,}X���!�oz��w�'ꩂS�ܧ��"���]7VĔv��/��>�p�qIv�/>_O���Y����h�(�����,%>�A�$Ս� �z�c��w�p%�E��Qo;���{�d	���M�0Cn-�v<�T|v%��H!�[y���;+l�as7���k��+��lR���|�M�b�@i
���	��=��Y���O�oE�4H���"N&����%�Z���·�o����}g@T�y�['(W�
�.:���0�����o�>#<:�{y{E[)&"���L��
y�g�tQ�ؕ|��UpH��0���;f1�{��'��a|o��+�_��>���U����RRnQ���}���$����Ζ��+�~�6B0w0�^��[��0��_]�c�l�'���o�{h�OО�
K�i+��ɵ�}�F�,f��*�	�V�>�ܙN�2�0q��f~k�[|b�M��q�e������o���s��p+ď�>�*)�c�O]Y�+]	֞x����a�lc|�~`X��:�*�O�� ����f�L��N�KK.ǣg����l1���y�J�Z݊*ǻ���lBJ��3e���� 8��L:�2��yȈB%�:k�N1ݎvZ]��c���X�S��-����
�_�_q��O�k�Tr�3�ʭ��ю�5�Zq�z���!���1�:�+��O|Qw]]>[nQ�`>�aZ@�&e=Z�Q�'�78y�S>���o.	hg������?�[�LN��& x�_�;�u�}t0���<pb ~��k�Z�w�W������Lq��Cr�A/Ǣ��ve9Ǌ��Z��K�;�Zl˸�}��#�ٳ�S�qa&W�RÓV�j#u���<zu:ޯ�X?\a��r��s�L�^��V���.��c�2�D_�j�V����3�O��r(���ۖ�-�G��Q�i�l۟�B����l_wN!|�ѐ�V=ፉ�����Ә�xf������*ÛyQ�=P��U��b���YAFP���*�Җ\Ǳ��_(NaANlQE?���a7�,o������	�������Y� ��!`�o�;��f�|3&���B,P�p�[P�V[}G�nYd��Q!ľ�%�?F��$1�ïY�O ��>x1��� ܇���(���|īV~�:QO=����)l��[K?��~D���i;�ė�Ce�Cs~FMQ����˒=V�����D�b�Vw�m3�L��Bh��[���L��B)�cJ�Җ�"^�,䢬�,�p�D�D�C�{������RH� ��2���kp��cE����=w�FIZ��E2�rgcL�l���񠟸��f��E�l�[v!�q<�6	��9eΩR�K�����<��E/D��ۨ���)���x��ƻ�H�����ŏ�u.T�D�|R�.��~A
�����֔���8QrV�5�3g�7�m�i���Id��-��g*���M��R�$.��孓PnX���]s3�H?Z�ד?t|w���xv�c�k����4���ƽ{o^0���������)�}ղ�b�D� ���_�ߚ=6=g{�i�k��0r�x}����f���N�ODR�@g�U���
w�T��9�z��A�b���օ�*�`xRB���\�(�D�
SBJ]6��#J�}��Ų�� ��#B��M�&��&~�-���o�w�����M����I4����,���P���L�6�J��OL�K�����۳ct31DՊY�&.�<Q��5�)rN��7���ѕk�3ٴ�a�	t�\h����R[v*����n8c]������.����숝�:U�-0s<f�R\�N�a�7w��s���}��{��_Hz)h�1�ɨ�wo�;źo�<�rn�o�c�x�B��CxA�`4��\Be�B�}�N.S�9���u�`�u?�����(p~��;�=��e���A��ϝe��@���U's�<��Rs&��fb�EV��j�[=�"�D� ��l��F���v^mT����@��Q����?[5֣G��#�U��3;�kl�F��Қ�d���}/3V����쇉?o\S�JA�w�a\�n��T��5�p�U1����9��9��P�qȌ�Hc˂o!l�Vۨ0]}�]���Z\Z_t#�b��Q{�.O�H�>�a�%(3!����W�jD*�6��|�#�-�4���.��u.�ј4�ڨq����q+�?�"����5{�0� һ��&ڗ��֔j^m��ԞW�'FFd�q��1	�����?��y�H��-��+��� ���i�v��>o�m����cϏ]���p�V~�GY׫+�    j�����S�P�]�|^���^�yfhi$�U�ȧ����>?�Ϳ�O P�-�<�!��3����x�ⰺY�!Nk��X��=nvk�0��yJՀF'�;6N�ˆ�0�T$8�sIŦ<#�2����-�p�D;[��`ށ��4a$��Z��St#γN*G�rc&�pp�ݴ�R�@�L���T�U�({;A{�v�Q퐮D���|��@��=��[����b/El���p���`��a��+5!4��aȒR�n���z!C�$��[T��y�F���;wc�A��RB��^H&,#-$Kc���������R��ҋ�i)��,;����2v�Q}R `e`����7㣲�1��,��zS�߶�)ðlts?��a�;ڽ��Z����?�^����%ݿlr�+r�uQ�}��Z�M�S���[E�(6���D�7{Hd�|��>O^�}�.hN��An��V�p�~ث��>��	Q�Һ�]��拰��V/����4Z���曔o����:�:c�����+��d�ڎ�"�J��� �n�7�{yȯ�3�F��pQ���%q�/P̚:u�s��[�e�d[��5�x���Pnz��1v���)�2�_ɞ�z��$��J����t�U��7�nP�J�,�C�,ȴ9�a�g7����g\V��#U�~}�i��l��	k����1�V������1F+ɳQ�<��CT���&`|Lލ���0\<�	�yoǟ� -[���oC����'�?���W����?>��|����i���������&6���ػD4x�h��8"!��cC����9��]b26�Y<�b*��Fq�1��M�/���mv[/�a
M*.;����Yi�&e�F C�t�u���p���n�׉�n�=.A&mr����a��Q�Y(��=ig��\*�fm\���vq&�ȣ�!nD��H��&{J(dk­,�0GT1M�V.:�A	^�jdT[<5<�g����lvu��b���
��yE跢�`3rkc���f�����W!T/�m�S.�]�:SAB�Hh�\a������$�<JI�$�a�5��$���no��&����@�������o>�w;7�~�G��w���*H?� {��#@a�����xOɯn���?��s��ߺQ����?�#���h�33l�}���Ү[������;O��Y��G<-�B���+-�ZJ��K����m7�e��^��`{�� ��:ry���V��&���'b�p����-Ӄ����u_���%G�x����6����n*������m'Y��^j����/���#�����[Xq�E�/'c�6�Z�-�o�t�˚T�p��%ӐǦ��QH5�:m˘�	"2T�4�m�n�ɩ�Dy"�o�8[�KI�`�s/I�c�^Ά�����Bv>�2�VY���Z�a	!�KXqe&�uh�z?����0�e_⇈�N� X&�G.��}��T�v	A����)����{����_ ���*���*������{{��.�����?�Yaا %?���������}����S �������(���4�6M���b���5��YJ�Sl^�u}�O��my�d���O�idO?��ݕ��c-�Bu���}��H[�ɕp�y��2a��F�����h��5��v�t�,�P�ag�`b��Ŧ�'NE���
��j���ש��"ϱU~<hIz������D0-oN=�	�z~�vX����L�m=fV�޽m(���i[�b�=�9���Z��4�f�`�n76x�Y�iG�`���I���*W���O�YzJvn��.�Ʝ�>N5�� \�J\h��������d�������������ʑ�ŷm�C���n�$��O�w��[��]�����-m}�4>'�3�š�����~Ϻ�;3�5&�Xf
�����A���p|����z�׳Z�ܣ�+����>] $������;�i:�3�eM��o#�7ҙ4����x��q���:I�9��3�zp
�~X�̙g<g_��x�MU'/�ݑ�;y���
D}�N��T{��"ޱ9jD_p�!��٠�8��羢�Z�6+%K#:��s�8���T��.g�fTE��7MX28+=����M�|�^�uņ�1�i��r�^�����x�JI��#������Y�I�:��2˝�.��@Wsu::a�]'���V��Y��	ӥDk0Ǟct�fA"�:��"�E�k#|ξ3X�n�|�9݋���o�o�:>�҆�rX%�OLX��}���o���i}��#忒����+8��ʿL:��:�. ��a�����W#��V��t��فJv8�����ę����"w��k;��U�;���Ji�"<��M�*S[K�ґ��G"��2W/x�m[)x;�;��u3��z�`�����V�\�L�ڳ��9��E/zʟ�p�dKP�`���D\�7�N�9>�	�_[���q/J����9�uh,�����v�YΩ��jt���|�aj���7]�|�9�o�M%�+�lkaU��w�1K��^�J�M��%J�&x�f�����P�GwkUX�#L� ���`t���I�Y��.#��\�n�[l����������~qp��Y,y�mJ���VW�O/�1n\/l��i��G-��K<�MP]��}������?:��m�){u�?6�y$���G���|��z|������RZ�+	� .��/��_��ߪ��3�����
��.�|-�F�Z{�v��+��YX<X��V��^=��OGV�1��f �D���4xy��Q�!b�ʏ}#+��=��+\d&^��[��-yf���6������ũ\(�or���><�n���<�n��H�W�0��	>8""���A��b�+�.*���W�2k�x7�v�U�H��ӊ�lbV�\7��*|�0�:d�AJt����a�h�_����������� c����Z���2�R�2'��у���<�X���tb<�q�_�����k�k�Ӥ4�g_X��� ���N�w��Cv��J�ќ���=��a�����y�*|׎�.c�hV�4o5�@�_i=�ww_~�[�ת����kM�S7|+3���f\�`�Q 7�:Wǖ�2�%L$>�ϰ'g��^�ڭ�_���e�Pf�YE���D[�3O��P�?�7b�&�"�R�{���c�f+�$�ք��k�{Eu�]3/h֞# ^�.����b)���׈f�6�ɡ�3&T��i.�)���@5Q"~d�/e�dW�Z�:�h�(KE���i>`��M��+��`�UZ�|d�T�^�e�v��������åЖh���#v2�q��"�瑌���v�3)%�����d�"n�t�$�	U�b}�N���1~�B�З�/�����|�����7ڀi�8��������'������0L�63��O}X��H��5���B�_��_OD�,����0[�������gbE�vȆ�]�XS�^��B�`wmQ7{�`�,�HzJF�m��*�����/�yj�BW�g�(۫�d�+}Ҩm��[b�)g*��;��A��%�V�v��(��ߞ.�?���`Y��C�&�i�g��sP�v�W���$��UWY+��e���;z�1�[l��Q\�"g`��04���8�F؍�P�ܖͼ���{��%Ƈ�Ͼ�nm[�b������쬪�h; �oThT��m��5vT)#���w�hn���%
�*����<��dE�?�հ>�BR�㘄�����|�
����ׯ(���>��N����n?���d��������Ln}_%�����=��pua�՟`A�U|��\(�a�W9���\�����&��o����X�Z�[Z<���Δ��vkY�2�pU�9Z靌�:Y?�b����!��d}�Sy[H��Up�;,�P37X����F��P��0ձ3���e�d�C/3��n"|���嶞Qp���y��D�*H�ҩts����9Y)6��ܜ��0��u�.^�Q5�|P�jW�:2g#ڛ"��ծ�G��ݖj~�r�s3ٲb8 �  ���,�G�[d���<��x͝��h�v��>���.y����f%������j�l��`ÔP�Q`[�P%�9K��
+J���dt���0F~!����?����y(i��W ���{sA���i��7]�����l�[N�U;���;�i�|�������װ�[o��Y����o����������e�8I���_�y�[��`/W�葩�&)��,]p�b)��a�K���#���
�hMP��lfgg��Hg}�^.)Ǒ��W�G�e��>l���^���և�k(D<�z"�:�ae7���tWh׊��cz{�%��ۨS��ӹ���(q�z�ҥSU 3P�c�C�a��c#���c�cl����ʹ�c�rA���\�0��>ȍ�����Wa?�)r��?j�iֲ�$3���756@� ��2�Ψa��t[!�V�9���QJ��d��R�-���n��#-�q�׋y��9E�h��K�h�3�#WM�J��}��<���s� P}��.��!�P�V���u	sb-$�o��o�+���~��%䏻�|o��+������*�Wi���tOp%�U��[3�n�m��9��EٶZ����
lH�^xߓ
�h�C߶�Y)�&�>(-�a����Ev� \2kXt�p�ī�1d�����Z�!����p�Fq\"��Kn�ghO�kw��|��������+ȓp3$URy͡�y�'_o���ɷVu�����	�1s�d|m�[�訳�:�.��7q�ɹyHc=r���샕��۾p,7$N�i*e�0�po���~�E�nN���~G��(tt5�Ʃ������[:��q��`�4V�{�]Co��E��L2�>ƍ���(v�i�M���$R����~�� 3�!���1�M�`�£���o�� vm���u����.ߊR��'_w������M�J��e�'5��7'�U#U��݃��K�6%~���S&�ޓ���]�a��[w���k�f`�l��ai����m4P�\TDl�M��Y!Pg��+F���¨�L��@�ٙ'��TK�e�:X�)V	g�^���'bm�7�N�k�:����z+�GhB��E���6��8��qЈ^;f�GY��z�\�P	���X�}q͗����q;�F6
I���FQ�@�n��5�-�<nb���
j�}�8���T_�n��Ӥ���ڶ�:%k���Z��]�]Z�Q���EcᄄJ3�_�X1�u�{>����vU�R�	zZ�-Iko9,��*����b��/��
�a,��3p���_/����_�      )   I  x���Kk�@���S쭇6˾_�\hKCC�R(��c9Z�������X�d���
�������8��8IO.���r�g4�W��v�4�h]��P����l���u�BJ<˳u�Qh>�	�s�T�k�Ն3�B�rq��W�r/�g���T��%��.Um���D����-�S3�20� Rw��O�s��BӍ1�b-S"����I���ȟ����*=pg@з2n��a[���n��f}c�!5�^���j8�V�B�.�)~(�6���Sx0��L�QC� Z%����E�,O�ঀ��k�mxϻ:.�ؾk��t�h%�PP'V0{�E��1�(b�ZID't�3~��K��Z�S�z����q�)Nc�L��C� 'Gu��%�u7}�X�]��.��5ǙJB�<'��Ub�F�Q��5�:߇"�{</G��Y�S|�K�)1tXB��z����[d������ۘ�i=ͧ���Bp;bň��L�s�^�,���,n��f�W�q�>JˬnkXհ	a�$�9q���k8e��.�%|���l�h��� �e~Y�	��E�I�$��u�      '      x�ż�r���5z�z
����D��o2�s�F�qn�E�#���lgU�̽�.�"U���`�^c�1�s/�=��������_8?���5��,���T��_��6�k��U6U������z���8�×���alz?��ҦI��o��-l����>�ݏ��S��A�@o~�m3>#�j�m����!�[ަ���|
��0H��&Y��O��z���C(�� �??�t��9c?��~~��s\��I���$�$EA��1��������V\�Vr��ya�Q�zvKEo�q�x��j�T�a
��N�읹b���#��A<
�@��	����M�y����"tT�$��eSܷN#y�\���o��{����~w�H,���Wu��j{0�_0F
�P�c}E���>%��Ư
��'.��3�w�����a	��Z�����K�s��I�.Ȑ9o�&�����>c�k'�Z����+Y֌�DB���"k�ʹ�F���P�����*��=N��m�k�@���<�Kp,�9B�`�W���v���_(���b���*��2�^�{!I�$pE^�7�e�/����_��U[���2�$/���������_`���!��@���W���"_����~�^���#��W��Y��~_�)k�B^�I��X��G`���4��0��_����5�o|}4}��� �A�υ�+�p���8]ڗ-Ⱥ�Q�6j����y������� %�CI�P#u�����U�Ө���|���(�Nib�MF��z#[f5��ش�,S]_6Ҹ?��c測��n1g[�䦦2��Z�7�W��pS�~6�B+��~�:A�(!V4�X|�Au&N�\�h�,���CkE4���HRn4[�I��i�?" ���w�ںG�N�'�]�(eǖOs?�N���%E��(ie�~�����܍�V���A����r	��H���g���4Dc�΅�����_��ھ����C/$������������#T`_��?A~���( ��6}�j�q4��}Ӿf5��i�G�k.��O��XDHw���a|{!ް���_�����]�!B�Jl��|m���"���ϯ�����]��ӭ���"A�y�����R"��y[���%٦��ȼ�.G0�����o�h�K��a{�$$^�*�	�g�0�j���+�:JE)2(�W���e�C�|�!s�������sϔ��ƣ$�l7��K$�H5<�RF�iڐ�L�@>�ǂQ������N�[��c�G� �BZ$�s�%E:}ѕ ����:e4~8�8��y]<Nu��,�i����Y�t�h�H�CP�s8�e;8�8O�<��L �;��߫f� ���D � �����ު�~��=`o0�} ��� �qo�����������ٶ#�O��C����d�k���q}}d����Ӧ߻�~���A�׻�^`��s&�W��"������Q����}٤����|躖�i�����/���yW�ʂf�1ި��L�nZM6D��y>{��B��t�]y(t�[8
���m�]n��� YJ�zѡ��H4����^�7��H�&�9E�bO>�F9Ӕ �I��u�v�u���`n��vL�$��F���S���[�8�,�B�j}n��9V�_0^'I&̇ ��z�~ra�-����`o	Ay*�9ib�jޥ��"��S�A=���P����sQ�ZOÅ,@�������O�'LT?�Q�TY�}�	��)�$�雷
D�� �G �
H�@�/�F��W��G�I�~|5���*��P@:�Y��y��^�i���r}�)��]6`?ԯ��&K D��A	~�y����a��=n��!��I"݈��8�9f�Dl�+|��$ن{6����&q��ߢ�N�zj!#�>�a��`�>,�ǅ�ɴ9��ZD�u��q����m�sD��: �1ls��:mvS�9J#tu)�ޫ��O`�%�c��*�0�C�	A���FI��b�.
� @�ԃ�/�H�1�-�6�t5w�������37���+��Zh�@(rkz��K���� �t�vjy��r�9-߇	��al�K���EA4F�,�i��������2{�]��ӥOՀ|��}G~K@�P@|A�7!���}��%Ğ�������$�9��1fM��f )R������霉��X�����5���+�]+h��IE?2N���31fґ�������̇9W�9�p�ʻ|Ung�Ty~թy�����1�tl�9�b|�J�G�2{��)-��t��AWð:P�X������5T5?vw5����a4q��Җ��^�Cj	U�7���\<s��S�<P�zYÎ�R�B�:b�d^�����۔FIRfY�nmt�ysT7��Hn]m]>-G��}�ְu{���������FL�duƍ����=v��l��o1�Y�F���hf���J��я"��P�]��o�g�@~��7컲�����}��Ź�����J�'Ϩ?�Ж�.����������X����<�\~,�U�4��yaĎ�&�}��T�5U�XZO�$�-^�8?4ߨ�$�=��Ҋ+%���d�Mu)J@\��2��&�]{�8�����j�p�������[�V`�ڌkz0��Hr�t%^rD�X�����A*�S}M�{t�D�N��a��d��:^��`��1�L��y�/���'��$ܥ�����q��������B�ӳ�f.ޖ���L�Vݿ����>���X�H�/D`�<���[�C�nAb�j��u$�I�N~���N�?�����G�����`�C�}#1�;k~j������}��{��hq���~����E%P4�i����Q= U�OT��_�F:���Jiv����+�&[a��K߈�{~�\��ug�f�2�s%��qe���[-�mH���wV�\�P]���l��$��L�ьc�U=�d4��ͩMV͏�f�sIΗ ��;��7�6�Yn�d�3q�w%_��}e�
�|�*���.RnVoiz�D������t���SUH���rv)z�Z����R�t�� �W�mB�8M�;3���95@��5�����>�i�4U����=ƮW(�[.i3��}0��:����jx9�\��L����r�{�G{"��,QO(P�Â��L ��T�0�.0�� �-�&���$���ݯ���¹�|�_d3��5�+�Q5�a�4��j�i3w����o<�*���n!�����2����+�7�Ss��M�6P����!!���TC�Lf��0evLG�טƀ�`U�ù�����e��J�����FS$4�U�y�K�t��F<+��]-/:\t�xZY/ivַ�nĝ��=Q�~�'!g��e6V���,�	}ڎ,t�/R�k�E�0l��!*gR���vvDxB���1?PW�V'�2�n�G�)��M�.�� y�Bm�9��`�H���k���ʨb0b�����V��.>pA�OX���E�~���PA��'�' ���zL�H}���}��\�1���ݐ�:<C���i��*_Ý]��}��;�"a���~����Fj�`���A#���z�#��Y5�]�.w.پ�'�̆,a����s[@�Ӥ�E����ݹ(���pB�r���J0�
��;i��{?�[����M`�<^�ت�1:B1U�FO<��Vq���bF����{ݢ���y�ԉ�w<�Rϖ�f����^ J^@����,GKȞ�����+e�UN�d���u�3���{��v��x��U�%>��)~"\l���\\mo���KK����
���u=#�;3/g: t4x�i�_�e����/�W���!N>1�_r�}[�����*�FEP����o�^T�^�f��>.���nL����/�,|���~�Z���C?A�6S_��k�w�L��O��/5�D��9]��<�9���s�\���Q-����}�(�[����vL�a/�)Orq�L��GM��C��R��ƟW��Mx��B���[�։�v3n��    ��W��q�.#�䝈\�Ė0%�61��6�
SrcL��m3����6�Ǉh�ů�Z��m�(?�~�M�:�s�[ve]����yt���i!�����2PAiU1��Y�:�jS�Σ&�M+
J6.���Jo���"<`��Ӂ��L����f��20�� <(��\o '�;d�dJ(��0��{I��T����>���vB|ٗAC�v`{y���+���w���x�SR���_��gZ��0�����p��z<"���ہ�q���d5�����3ќ��"�Uwd�h/���ekZ1�[�Z�-鐼�;(��b�9��ν�8q��<�F���`�V=�K�v4~0���m_%�goI+�ڴ���(%	6F�8�I��+Q+��}]y:^�)����z��<L�8Sg���0�3ͥ�b��8���&2�t�~��h"�� �T�՛��;��EZ�BT���_/��&-7�#�2��5���h��*��ɡ�3�\�YO)�tL ���֑�����;=G���u�=[8��)�IV�G?;:������oL�'L`�m��O��/z����%ئj�a�B>�Q�GL��.��>��H��%�L�����ۣ����mJ{O�U(�Mͤa����m��#Xk�K�T�����D�Q�(9_3�AI�d`�a8��`��9М�9+#�-r>d)��tS����T��nM���U8>-�)%�j1賘�"p�g�켠����h�iN���6.~+\��[!�q-Kz�<Gd4.������	�3�(Ɠ���#;a����n����t,\�y<�3��5ߦ�
@O��aE9-�&�)��m3��0��ո�=��Q?��6���j�|����'�R�|o��A�K���K	.>;6�vl�_0䍀��&�z�H@�~C��/C�������?��j�f��ޟ�\��$~<��x�_��o���UQa	qm�w>u_z�UڅA�wu��X�O�
W���"�s��%��q��Ɇ����yD���Z��S��9坠�fM����\�S��(/s��� E�l-�ǣvv�GF�kn�4�5�D�Z۱Y!���Kٗ��P�"*�M#��a㑮V\'z���jHR��c���LcM��pakk*w+��m\G�`���$�WV3P��=4V����D*<	�~���'��l�4�qdai`��N�n>U��_n�g���ꅁ��U��9�~&	X22~�j_���?��Ȏ������oI<q��Y  �z�{gR��K��G��3�ߊ�O��q��W��H����dhN��s�a򎑚�z.,���Y������� �$���z7�󵧶0m�,ΚO��� <�Y&& �0�˽�.h|
<�������D�mi��U��,W�R���8����c�.�<m\l������X���w��T+*ȳ建�2����+����ڦ�y6�`���̋9X�l�tj�� F+��N�e�{�ui�"�cx �v�1�GB�'�$�w���KW�������}m�*�8�$	�K8r��
Ŕ#���ӽ��^�[<����ӿ~OϏ��Gk��q����!�M$���?k�Ŝ���������N���ٵ��������c�_����3�vIT�z�6��`���`s)2άN��R@��(�qL����2�����[t;=��;�|��1X������v���xk#�נK=�2��H��a�j�#�fƕ��H�s� ��ܐ��I{���B�A:Zf�
ӟ�P﷌p��:C)��\3�Xc��2&�+Y*=,�.)��Uq �#8`͞�s*:��V٠����lY��-�]��8�#��A8�-���G<�LB�7�"����+Y�c��m9W2D�6���ld-���î]���g��⯥�'�bWןߵ�A��s,�k��ƿ{B������r�F��[S�QnbAo��l^��5x��aS�k��)�3���/5�LW��l1�t.;�� \!��)9ҫk;p���o�w�V�8_{U��8lGSm����~��tqM�:���D�,�}ow4�y\]�h L��Ff��@��h�#��z�h.l�Vl�3zPR�_�I�KA�J�72���+�60�9�&���I���"V�[!�b��i�k��N-�vM��f%\\�x8î^�9�q�}�[��O�Q���6��
��8�� r������]������-��Ѩb1��LӰ��uD�C���gmI��5�]8�80�?���K�|�A�� ���/8�F��L@<���'�=�/�N+c�ۆ�O�<|\�s��~9��?����߻�KM��A�̢���~�.'*��ܛ����ʕ���.[��Ox���@��- fݨ �Qm�5���F�vfL��l�=�}�ms~x5gW��B����emS�m���ǩ5u=���'Z-ꀚ�Z�%?6�X�O�.�3�ۨ:��_�~�z�����@�Ao�kJG}^�=��F�Sr#��M�a�!H��p�G|�*��ֱ]�g(b-����^;*?9��I^a* \?��	eB7|l<>���Qw9|���������-���?��5<���צ��T��_��u���p ��z���/����]`���7�܅�8Na��{�ʏ�?"�W���,�>�?���\�_ZU�N��w�3�*��w�0�
/�5�#0��Z���4�e���WH�b�7@���'�p�NU�D�x4e`gO-�QK��*p��F������b�{O�6v��}����G��F����\7:< �XY�������7���c(�W����>�NW��*�Z��8,��B6F��\A���&q�;���-���A�n
�p�c����f[e�� ��Ƴ��Kw�&��[���O2��sԠCC��ɛJ���w<*�� 7�:i�FW���$m��	q\�2A�=����� ���������q���l���P�bW�P�4�dI��ܳ���ʓ}%L�>�~RNI:�ރB��G���<���` �?�ԶvѴM	JLK��-H��r$O�� @y��B�@�t왍�nL����t!����i��a�p�b�������b��M6��E�w��0����q�7`G[|uP"&�Y��B -�_/t���Ev����O{�K�[��}�7D�Mft� =��@�k���;��pd�+����(O�G��H����iH\���X?�E��,��3�WHo.U���d��i����0�Wo����E*gX�X �y�������L��$�*�+�|G>�-�'�s�Uv�Kc���.������a�i���w�M�x�Av��
��mV��F��ic��s���X�׌�󧂐_Z\�/�w|�>(���sY'D��T7,���(=Bw��'�˃�N�!S�͖����[���S��4�<��+)��d �C��`�T���K)��\^��%̩1��e>���GF��z;߸3��u�J� �q����a5�Aɦ%�i�AKv+w:E�+{�6P���y$�3<�K(�)��!�Ԙd�.>�e��tx�"�nɝny�ΣM%|ȩ���nr���I����G�m�JY�gC�P��I���)�x�x��eBù;\�sU@B�f	�XB�z�/�[>��8E�{��l�<*�ox���@�!���=�C~&{B��Cd��x�HC_�����~ƾ�"�RPb����OL�"������톟"p�6Hd1��iB|����g��Du�Km�k�����Q�����2�R�{)%aw\�k	$	^��[�rO~^]�r$RXcɮ����P*�T^�T�'�6�8x�q)���B�7�9�o�,�^�f�ˡ/T�8���qTp7-Z>�	�!Yɥ�1ϛ�6b�
g�R�3iBw�l1\�#��u!u�\�QTA]��3�{� ��1('o��Y�Y3a����{�)���/�і��>�yD�s�� 6��������Ә�v��J�΋��k�����:j������! 	  j�>�'6`�O���i?0̩L��[W}���T9|Ǵ�#d�x�_l;��g�_Z��7×�ܞp���|2��Qf���(��>� ��L�IH=!��(�͹��rU
�I�us�㥺x�N� uu�9C����N�Ѱ��-�C:��x	o�T
�V�:MP�w �3�d��x0u`��¯rT�A[քk@����<���R��i��A՜j��Q�;��Z����l�m"z	�W3��xJ�%�X�f�GzYvz?_�0^,�YY�X�y�ӥ�hg�#6������4��<fxv�F�jy��B��r�b�kl�z��Bʬ��k�м�Nr)�3����8y?����@����>����(D�(����W 8���g-B�p}־���vg	/����/�\�S�l������ؑ��>��黧������C�b���FF�q���:��ȩV����^�/��`;��˺.ӓ(��Ci��[�_�lҞ�9۸٠�Gp�%?�ei�f~nLs��T/�kXh�����P`G�FҾ1aD��T����&���H����a?��zvVYmJ3�z�a�ǽ��;����H�A�<���S<[r:�|9
�,�x0�|�Y�̽��yM'�B ��Qc��@**�����Ǒ)茒9���r·�m��_���diuN��X*�1�a-�B0��R�,"�5�aW����D�Cx���>��l���P��% �G� A9I}/�@_�]0@�}a��o��������	����� ���+~i�S�euj�c��ZӁ20�<tMB����e����A�����v��P�0.w4���P���U�%r�V�&j�do���_"���0t�g�x"�M|�͡]�PʣmqA��#z���[|���E���4��A�>�E6�AH����� �cݳs��7��,o��	�ʵ���(����D���(�Oj��[P~ ����*�����CrmO�~61y��lDD�s$C��)V"�W~M�p�ֈ����aʗ�A�R�h31��7Z�b�tծ���V|f�����#Q2���s _ �N�A�w�����Cއ��E���T#@�̽�����{�8��nG�%;6����"��T
��q��y �����o�G�uc��U���Esql*V�Z,�w_���L�%:|^�Zπ��&/�]�k�
1n��)> f�P������rJ
�O�|3Q������Hl莈�s��0W�F��xI���+*����Ie2�	(�p�uAViԾ���>��h�Ċ�@�8@��=�o� ��i(��G�~j��KkeM�A�W�b֜�ϣ��u�__vQU��s� �����r����<@��t���ժ�(1��ZG��Ua�K�B-�^�׆�:���M�������=��;�7�����a�	��m��;0��f�?bЉ�}1����{�x�CZ��&}<@i���߳[PƟ3������_���W���p�w���
�3\��q�-�6/�t�S���,7�@�E�E� ���������.�%m_c�&�.�7����Ȋm]����l���'�c�+�f��)����5<�	��s' _���Q��l��aAK8W޴����L�@p����*"�����|ITop����cnu�����g�dق�^��U�P$��~Г��*��jx��̜�w�I��X��G�=5�ژ��LZ�^�G ���F�g���Ô�����z%��k�^_}n������ߺ����;�������q�O~�oԻA�"/fS���Ϟ����T��y��)-^�=���-XwE�?�5��>]���d�0o/�?�G�_�k,F4D�qԗ�J�vt
�u���)�,���C£8Փ��ӹ�i�`�I�2�=l!��5��x� �F�b�"����K!8��G�@F���z ���.h�tV�8��*#����C�r�s
F7�EӺP�^���h�=��c��aǺb�gU�X�������]^H�-�2�[n��Ѭ�J6U�䜄k�P�9�xW�MU2�[�jRoJi��z^'/)\���S�;[�-��Be�e鹬<G4\��4���&�~&k>�D��f�K�c��9�߃T������܅Ro��/(��5��<��R���s�����'�����۱�_�]�\�=��-��N=�Fl��׬��f}�O��qIoQ�X�s��>h4Sco��[h��͓*z���� WV�.�����O;�g�p���j��:�s�V�����%����I��U��]�����T�l���.�MPն��s�v��%X�#Ш�BM�Y5`"V��Ю�lơ5WQ����	����+���������x.�������C
ȜޥL���	r�Pߔ�G=�]Z,���)�AwP�(��!,���ILqՁ�#�4���@N��F�������h\0!W��~�#լ����8hF����}���'n���R�f���j��'�~u���^�fœlo/?st闭z[��d��c�����>����|�<�ΥG52~t�G	��আ�0�̌-E��y�k{ÀA!)���>CW��y	J
�MX+v'���>'�9,�k,�tꕃ�`-�O�+	Ρ2�hՐ�t�Hd�G�O鎻LLj��m-q�#M�܉׸�r!4��<��`�*H��ɮ��f�k�DI�Ug�����ƾ�$�O}���iꅜ;D�:��~�4a��VC�����j�uV4��",�����x��J���`φV�\������W���Fa7�Cߢ&�ѹ�z��l}�o������_�*~|�9�ygSi���c �
��\�_J�<{�Cα�W;2u)/Ǡ���.v��Y\�~!�a���Yx o aM���l�d'�����C�wf>�%4<�Q�Eta�Go��}�Q�@<$���w(��ֶ�>�UT�XS�<��Z0B��2��-pZ�Q�a�N���F@�ʩs:�| ���k#-R$6`=�|��`�i��i��!+��D�g�A�˻�K9����g�@Zp�oS~T/ �+�0�[�b�j*�w��u�J�ԍ/ǹ��d�`�u+d�2�;���3ݲ�Wb��(��)�x����	"w?z}��h�σ��������ј��7��8�:P�]�=g��[�ʌ������nW�@I�S�_��aO�|E5���.@���AT�>I����#�A~i_{.��8� X=��>��)�Z��"t��K���[ח�JO�(E��c�K����@��7�Τ�2�IU�fz������ �B�[z�S�<�v��M,��uK>�L˻�Y�]A��$��@�e%2ύ�e=Nyb�΅.���pa� DWnv7�19)�d̨ ګ�-�+�0.��F8F�Ԙ��T��<�O�YNO���uM3�0�t�
�o�=�CF��yGwz�3ق�+eYđ�RF֬�I՝|�l9��#�!�v���)�, G�8��:�s�C�Ao�f~�?*�f�38���p���-yÞ�����o����� =�I      !      x��]�n�Zv}���R��<8h��y�%�HJ��I4=�����CI6eѾ7ݶ*����)�UZ�g���G�q\N�=FȦ'�kQ`���ʤm���#�1�Ж��fH#נ��3b=�3B��|9~`���3zh"ǆ�y��C�"��7�tu��vf�l�ɉ�U���_�F^ ��,=oi�ȷBF����e`�D��t�80����,�|?��(�^4�\d�'3k�o���o^7���s�B^ı�����ٵ��Md�_�B��`g�&�u/v�������W
��)�$+�ʲ�<��.����3<��+��|������m�����7��j�"=�X������;M^���/��N���ܚ��<s��G��~Q��a�\��!(�-��i{�Ys�v�~��Zi�m�ݭ:���i���݅<t���h�?Oz�*q[a ��1i�<2N�P<tj���੕��gy��K�[m8��`	��(q7�D���ՙ�ܦ�4��`+W�R-�E��.���;�uc�,T[$��ٔ^[�*�A+T��B�e4�/U�o&�}ܑ!��q<�3+�T%�Wi���î���d���f�W��E�ֱ��P��\�[���g�x�~r�O^�-R?Ь��
O����/��I���B���KwQH���I�7��ы#r��&� 8V�����#����D�年� =���+��`�b�I�O��=藟$�IVޣ�6D�9�X2�c���y= �r����4��(_���i0t/Y�*AocK���	3�YX��~�"��5//�Y��#,@��p�p�[9 =q,#gr ���H,�^*��0g3 �>i�A3���}ް3 ��%/�A�4O�&L�����.�߰�"�A�w�]x$F�L���"F��S �m�Y#˥f�p�~MzB��^�ɧ��`��T�|�K�²#�bB
ڊ��ۤ#� (B�ޥ���i����-���	�Vt�	����k�qtH�(9�Ή����[��'8�Y� �~g�1�ϵ��.�/� �+K|��x��������v�?qo����j��?��w�_}X�����B��� �H�^h^��g}e�������F���h�{ ��zࣣ�!��7x�	���� ������6!2a�Yy���I�	���>�2�
w��m�RsP�����f `T %���:�]ڞ����R�$����Y�Ȏ���f8I���џC��"z�P����B��g�bo��R��s�!��ķR�{�X��[n"Ё�#H}��e�mA>i�͞4	c���
��F�ג�ǥC
O������!�L�Ǐ��( (9�k�	iȒ@�����x�є,M �8.�	�ł텡������0��n������$
� { �����@Ͱ��u�d�ŵi��h�dMPE���!fe&Y����1�*gp!�8,���Y�"xa�xx��V$أt;�P��yg�h��r����J�Z����R��RJ|F���V�]�S��"����>Ֆ�	)����gqN	B�E�Y���w~er<jR���u/�n1�wF-G&�ew���i�h�|���4�+��b1`�M�o=r����m���4�Ng���4��]�JQX�ɝ�6�{�6P�5˭��yә[���o�۱�1����~ݎ�"����A~�FT-O��Yo6�(����+�д�ė���(�t1���3{�
V�9����^�@�{��ù�X:�Jg0Lk$j�ұ��r��7<��Jk��z���1��=i��G��: ���ϩp�gx^��:DqX���E ���B���y���T��K�Z'��]ڣV u��F�����A64���;��6DqX*������«j���e���j8�ܲ��d�g�8����8�8���(g�W�۫7n� ���Vx��4Mj�%~��Ɖ.F�UN��ϰFІ�d ,x8|�������a�L|/�e
�n��Ppc�#�!����ǈ�,2�B��3�z��)!������=#�F7��;�Y#-���oZ��Z�B�Hj❤v[5_�$v��;:,V�]BA�<�����3#.�R�ژ_k""�'��ƽ�Ī�&f���!���~��4Wc]���f�`}N�n|u�B}!�n-,�ZY���B�+��F�����^v��������x���;��m��AY���2���OzV���s��q! YR��y�2m�4TP��7�

dS �aX�Ϡ@*D�,f*��L��c��smXX���t���r��{ݨ�_8�Z..|?�'�e��R*D�x-���q���&$��gPۦ���]��F�f֛���u���oɓ�Zܻ�o�ڞy䬠��_+��6)Xe�Юt���v���n�^0j��Ka��^�@*v^JUY��z�ƣ�,��i�N$�Y�1hr�����e��ߙr��އNq_�%�^�`�����ZTxv�단"���4ҷ˚o��%�Q�ڕ��\$���|;���/#{����P-���U�Z^���4�ِ�)���E��z>h��n<]����uQ[d5o�ү�yk8\P/Ԅ�{\z�h_u{e`NA��C祋Tw89Ƕ����d��rSh�Z=A0�h�dVj��cT*:�.���y�<$6
��g��'Qd2�Do��
��NAN	a���<t.S����?��	�{�Id)�H�Q<��l���I�1M�v�j3���q���_��  � ��L�F �/�w>��;#��:D�X;�>Ў�I���ri �(�v�88wF�J�޻�Vzr�'���'A`T.�6�Q<։�,�8s���c�7�	�:i�
u<K�x�k|vH�n��q�@���b���˨b��Q<����01E�&~\��q����%���8�=3�_��$, ,��"�$
�$d���'z����򵉯�pjo�7���1�s,U;_0E����<��k����C�h�R���������a��B��b������%$2���{k�y��+ w�8}~�:.���Rh�]{Ǥ˓1D�����A�pG2<�%$��)�q����;O('�Q�f�@�y�x�����/D/����߽��$�'x0�'^a���1�%�9^�ɹ��2���n���L̽��?�yMjtn�����a���e��m�/#����7/e>�
|K��TW�6u�˳˃%�G�i�������fV������
�����b��x^���V��g�@A/NO��"��\�����T�'W�Ŧ�,��j5%�cl�$ܩ3HuBey�x�Yw_�V�=o\@b��.��B��u�x�&�P]խA�P&fuUn`d�qi3ֵ����Qgnt����Ƴ߂�1@m�$�����9�@�r�Я�\�_N=y�oWA��m�e7����jX'�_P)��v	��6�ilL�S��^#���Us�e}#�ߩ���� eǲ���/��*�����ݹnC� Q0��Ŧ�����yg�i��υ�`Q(y���&��׽���s���ko�����y���2��%�9��c74���/Vt/2-� \�nf*bS�2Q���.�j}������>�<��q�]k�6D	D�;6��昚�wr���F��n�Ζ�m-��t��l��/v1��g��Ǿ̻��6D	r���=�;��Vp]������"�?����mDP��K��� �N Aa8���s�%ǩ@�������s���\/�u܇�s'�'�τ��2����!JPs��o��F�Nwm�ĩ���T�E�q9B
��4д���_�[D\z��O��d���J�r��?{׮���Y��ޮEn��ߏu��wN��%�9N�M������u�{���s���v�����=�"֦HYxO�(��%����i�b��^���ڛ��+���|"�~�8C�L�,#�YbU*D��k�h��S*�>y{f)��5Q�f�����w�v�    �u4��D�cy"Ԥn��:)ڗ
J>�6?l�#�Y�	�� fMWΗ��*c��.���G��T�z�6q_?�w-q�wjE�!�b�.Z�����Cu�n�!���Q�o-���joN�rXQQ�E��7��E4���MhM���g�Wџu+w}�3�lܪx tA�s���z�J14���ן���r�(���t�/n�i���R�ue�5�|���a�T�c4����j�{��`T�e�Pc���-[Ҥ�T�e����O*�F�p��؝[������`pDn�mA�|F^�>LQ�hj�C�(b�Vy�bK�O���*ËwsoC�(a�Vy�h������g"�[����}݆(Qƺ��-���?���R֝>�DK��c�[r�'x �R�hR�x�Q���[�S�%�'�����prF�'�D��?�~KpOp��E���>:DI,�q�o�q	�	���+12���L�(��%�}��K0O0��C��O��QR"�*�@�%4 4x$�a��Z:DI���I����I�	>%Cj��;�ʼ�GxH���e����篛3�Uf����p<p�hW���I?l�*�t\v�f��z�?(�����j�������li��.9��^Ƹ���؜'�g��wlwp��'ʓ�x�w�/���/z�6ܒ:Q;AX�'s�&��Z�²V��u��0�4u�a�A��'���/V��^� z��p6�G�"v)peg�;�P��
�@�'=]@CA�n�f�z�9���+;���]dOq�]���BEX�9�Q��,:�?�?�v����@-��"�Y!�O���.���@�����EV˞$�3�l��m���g�z�]��s }eڹ�n"~BQN���Q:DI"Έ�̌�2F
���1i�_r+��8O[���SK�orozD���m����B��J��
!�$)��x[gXw�y���u:3 �s�o0�Ӷ�=���E$��ϼu���!!ģ!J��e��%ɸ=�f�G+wB�E�z ��a�ܳ�U-�����!8�)� ��Tqq�����A��VP(�3ڧ�%%;���f�S�7i�6z>�cA����c/2\�W4�$�(��.�������!^ǟ߷�Ȳ@��0"�s��M��4l�S3�s�	�W��VQN�:g���������dg ������ø�%�ǲF��C��bS�zo�aE�*���؀�'Q��_�i�Ó��flx!)� Ae��cNoC���-5�-5�Dn���7�TH�-z����A_��K���|����f?h���
7d ,x$�J9��%'�p��ݕ�3z�A���DX���!�^%iX�	h�V��I�wnIff<���p|63^C�Q1��jP={��zB�;�����l�����tW�[&����vϕ2
����K��\O�������/0��yޯrA�;��pő7^,��²��.�OX��ܩW^֕�&�U���ɶ0	�s8����]��?V��H�+��0��S9��npꭂ��N�<
ڽu�;"���P��e���ᕆƝ�"��°__�k3�E��a�W��ݎ��/F?�vgH��B�
Nm9X5}�;�_��YU��Rj��GL��l��u�Xe7E`Be��T����{X��y�Qohiu�v��`u�r�'&<�Y+~y�[�s(�y>h��������gk̸��F�ʰ�>s�C�𵙺�0��\�1��3�쓠1����%�9x��;����I�k��qtÑw{��x�ab���2���7 ���18�S��w㦭��,A¤���$��g���ڽ��6D�R����U�y���?c�v,pZ���6 ��qY�5N��q�q=��V���FF<�����-݆(Y�%�K^����#9n�}�w���η�͗}� �;�Q�M�P]� _l|%D D���(�]Mq�d%ǫ@��ů�v�v����ԗ�a�"��u,N�s���*y��p����[��P��p�!�!��8���w�݆(Y��0���d���E�~��{U��۱Y>�M�����N�NO#�!�c!��f�N�%k9�B\6KԼ�:A������U����-\{�<���E��m�U��9�k�.-����!<�2#rY�v*D)lN���v��!�W�߽�� �n����R����Q��Q��y5>:ܘdP�a��2,�Uc�B�����ؾ&RW�;��/\���Y��}�������7����MD8A8�'���b�!J�s����j�m_:PY�P��XQR7@��N��?���� }�Y�&m��MXAX� V�O��(�'�݆(E�	X�K���e3���p�(�H����3v����-dӎiX�:�/ĥEx6FEf��d�0m�ʝ�x�6yO�� 1p��z�7dnn<�V겲�T�RĜ�E�a��lZI��Vr�_wA�zbM������i"=��,(""�tI�Xj.�#3i����+jpXPV�re'*8�8O�&� �x3$����!J�r�rS_�����qxY3܆=��E!|�F%S����ǣY�q�� �up&�5�t�6���C8"=q#ޟYr�s�c?&�#f��N�����ݰ��h��[eE6���) ��{^ư5O\�/̟���/��f�q*��Z~l��fc>��qT
�\�Zh\����-�����A��E�4*��!�˾�,���o�ܠ�ܒ7�m����E�����R3���`�g�Ҧ��֨��	�Z�E��z3n\�hǍ�Y�vN��!T%i���G{�һ�Y	��6�viv��d��꽽��'˞U�z\or}6���^��0�<|�{]MGK���t�e��zqp;�H^�<�o{�F�Ԝ>GE����a��ݭ��Ͷ4��n�9�4m��/�{�<�/��%��ro���~F���Y���vq�'V@��������"!!��H��wH�F:D)*��1)�J��ͼ!+!����?�#��T:D)n�92���zs]5�x�!!F&18�a��;�T+}7Uƍ����o�rAX�HV<���F:D�v� +>��|�R_N<�ǰ2�ɉ����D��B��9���'����	�6e���
�}<��~�=�q�H�d9�3�Q���*�6+}��?.<��ĨbƮ�t�R%�����N�`��?�Cr�2A��8j�ɮ<-����x�P������A��Pv�<�jYIT*D�
���H��y�}����ㅄ�;�~��m�RU<\-�饧��
����NB�L�2#*Y�U*D�Zb#�>�����|�o��e{_��[Q��N���K���$5K$ի�J���/#�>);��X�n��ؒ2�8�aV	�5N�~��7���h�F�z�����P\��~�5ȯ���%8*2��uVNyn�]OH������t�]�q5[.�̣�ح"�<��ڷڶ%u���ۇ��^�A�����z53��x���yKN��M/�-�-~�6��tҫu����K^ͦQ��=u,Z��^~�Ҹ���ue1�(��Ԛ�8���=�i>~�����&�p0�L�y4;zM��r蔢��^��3�y��wvUn���y�wt,�B�E�:r0���Xt���Ki�
�ڸ�p��76�r�ق	��+��"�$	Ys�oC��&vB���M$�H�Y^a�HV�,��u	�'BB�o��U̘�Q��
�?f*L,��"WO��axΔ �J��?6��ٖAV
B��ЁWE�H��!JK��2l���!�T�Or~�IH���W�X�o*1ރ^���м��	�{���=8H���W�/kV��/xSp�Z�&N�q������x˳v��C�&&>B�w|����;�2/���}�(����yF�2|Q��I����)����كdu �x#���O��Q��8��w
f���H?/g� ���C� I��5a-��d�9���4Qx�y?_A�c�A�#<���0���nM�(MM<���~ˌA�.V<��(U>�˔
Q����;{`�o�F^���Q3 aa�w�@I�ʎR!�c������~�B	B 0   �[�K��y>cvA*�� ��� H�A���	E�Z1R!�����m`l�      +      x��}�n�J���̇s��f�8
k�gɖ�@#D�$Z��A�S�C�aI�d�JѮS�m��F�YNoJΓZ+b�V�
BA*TC�َ�l
�.:�ފB�J�8b�g�k{�f_����'����nqx`�[�Ύ׬{`�>���=�((�u�����~�V�[��
^�g����*�!k��8	�/�W��PD��O��E����!��K��o��MGQ�����~>��k{���e�/����k��*���612M?����} ��C�$E�t���cd�<D^�wt|�C�zG�<�?+��	;jo)�� �z��Yyz��C����>K}P	��r�����C,�x��ƭ�nY	��~�ZV��>��m��6K�ݼ5�zֳ��Q����8�W}�K��叽�:rg��x&>M���'U�::��P�k��.DdՑ��֏��~�(�K��a��]���ώ�t��ޖ��jI/�����ݝ����5��U��z$J��[>z�?�iX�'�֮"���z�M%t����2lGZk^���f��Y�ʹ�K�*�wR2I�#onGӚb����v����D�n����t�I����>�������^���ȋ�/A�%*�e�,�>��/s���'/}bD �TxZc�#���0^c��x�"v���g��B�Cx�bm`mb�0���Yvl�ǎ��۰?�Q�)�)Կ��)���K�� �Ra"@Xh����)����������8
�i#�9��,�`&vq�#`�{�h�`��S����iR>�/!FJ����
{l����G�!���ݘ!5����s����8�dv����1*�8 ;y��]�)�����p�(��>b��
�/�1�0�E~���B�==I �.�32~��^��)��N�LX�!�����{��a� �NWx
�o��$r|��aԂF��^&g��A+R���=�&|�9i;�ձy��5cD�uHjj!Y�_�M�)ȿ���j.��"�V��}��Lw���U8E�/"HGH�� $~-Ib9�w��kln�$&�'�#�F���k��J�����u��oĺ�q����\B�^0��~��0��I���H��+��&�隝��]�+6pX�;v�\uR�FW+?E:E��"�x�Nԅ�gB�Qx���_%a��!k9��(��O�t ��0�ͩM��  {�{��b ��q�CX���:�QB��C�� R�S�'���%-����4�]�礽��y_�!qX�C�8�>��*�dCd�I����,�����ujN�-��F���f�K:')F.�/!/@%��NǙ��<��IG�m�U�z�^!u�b ?�����Yʴ�$��u]���,G�xϵ��ç���|���	��@��u�s���|D�������A�[��zE�y��WAuz8J�ޑ�˗~2)ŽR��ۮ)M�����Zg탕�=�o��"�֛�吗6�>�豻���^�ӳ�O��l��Ja�P��u9�[�;5�e����J�'�l�U�E�)Z��q�V4�j��t�������f\���J��jInI̼1
֨iQY�̒	j�l9�x�'�(�Ak�	�A����^B���'�������,��X6�k��P��Y��i�v��fג�f��+�ȼ�A-9ra���ڃ >:��6�C�@TT�JEm@�n����[��1i(F�:��I7���t���yH������%��Y�F ��/�j�� ~w��P�.�=ɱ��� ��+ r	��8(�)��sY�$>�#QU�UIZ����j�;��fV�ſ�5�V8L�uX�!Fb���1��#6�Y71��B�k5�����x���<�gB��T ���:��άq��}�l'�Mm��b@�m��Iˎ� �5�b�ðA ށH�LY:h뇰OP�S�����i���K����Ӽ��	d.��o"�]�>3�*�V�uJm��'A �E<E��#>��� q���x��t95ZA#�74������]�"�/��Ա�%<�� �U����qj�I;�i|^�!� +t�����"/?��7n��#� ����+���4�P�S��wQ���ve&�F� x�5��>�x�/y��M�Z���$1�H͋���?wqΥ��
���FBY@Yp�"'���"���|cC@@��������K>������\slv	 
�D��#�����!m��
Z��.m���)��}E�T�ƎpbD���k;Bv�O� 
]6��M�س-���Q�Q�ڌχZ���>��Þ����@���� �!?bD� ��=	kX�Ӫ6�Q�F.vX���ɒh%vJ {�,1��|���I����$K�5敿��:�кM�α��`�u�Wg�z�r���Ů��N�+m7��u��N{�L�ן�S���J��\����4">��1ı}<.���{�aK�&ͭ*������h��]�T$g�LPz�W��&��d�X�U�ی������vR����S}Z,�P���h��Djs�T�̈��|��u	y��Q�7���ʆ�d��)��x�Nd��~���^2[�O��"�PG�u�<���U��r��Q�K{�����+@��!F��s��nt�����#7�αݗ$Kmȡ!O������%�5��z����� ��%�A��^�Iv�!F$���+�B�lOHmgg��Ir}�.0�ޛ;o��}:;�f�ȹI�]?�'B?����RP|�(m5g�φ�8��W�����/�G2�l��0�������gClL�8uP�C���\Ҡ-r}q7����c����IX�/%���� n��D~� p/��N��7���~�͘9Ru��DK^��P����/p���L��mA���@�
�!��ҳF����d+8�>�3)��'IwB�=:��(�)��{A�D5��#�V��o����m�_ΐ�U�#�����+"�Or��}JJ��i@Rz!/�τ�h�J���߭��!�4��+߱ E:�ΆLyb!�G!�4��=��|˃�@�7��'��1"�w����}������(��PR�����u9���sQ2P2܅���<�C6�H�Ϋ�輩m�l_�qַL���_�p�Vz
�����8)�)�?ƾ�p�z3@�:�H�̫�ʼ��b6�vNp��P�Թ($��b��'S�Bv�&Q��O�?�wC�dpr��3b$� ��PG���
�
�M�J�^;b�d��i�#�ڞb�^�ғ�{9�r5��+I��]� ��n,6�>�*�:��KT����G=��{"�����x6�t�}0�����n՚�h�֑�zVܑQ\�M+�,*ve֮���j����QmQ㒷^�NXv��.�ժ��TW%/���v��Y�Co� Q�H�����d��yoW~��;~p��Ck��KU~�4��>��Rmݰ��bc8��"ꆺ�$��xm�y����'k���ꩉ�/���qk�:~Y�:Q�w�q�ݯ�����`�?�չ�����uQ���q����}$���x���+c3�%��<F���h?&�����7X56rT�ڣ�x���l*��֎>�?��pB�1�T$����~_���y��V~��9d2�Ey��$�Zd��7E�����_iu�<�<��1��b..!F��<(&�\-;N�D���~rֻN�w�M2���b89��ོ����1���ߎy��yt!o�τI)��G����笿��ƻ��!Mz�强���\`��Nݡ0�0υ�$q�tso�u���Bz0���*�H��!��[����}��	��o�&�eR��N��<���Y�,�]���>%·A18=G��DI+Р��Ę���^����Nt����F���^(<ie
yrW6�HzAЁ�x���q{2�����!,�D襘����<���9�O6�HFA0H��xK��Am{J�\�=��"�R
P
�R@Q8^�1�dC��C(P��9�xn��O�g�R�J��\�wyײ�#^g]7���&�Ғ�"��/<Ե9�ز!F
�@��d���Oj�L�_�T��    ������W�������?���Y:�!FNE]�������e��J;�؝�����T_�[�⣿��������wS�LԩTWz���N�xW.j=��;⨳��'c+�ÄǞ�X����Bl�\yy:�=�7B�UL�^_zS1j˯A�^�j;��=�ۭ~0�W������w��j�����د4�UmV��^_BcQ�D�)��x��U�ɴ�h;�|k�G@��?6�G�I�6���Z��ٲ��f�,�])NFQy3��J⬰&��2�=U:x�����@�|�	Y��	���pU��f{8.J��V����QmeZ]���}���:"n�x���[���X�;3`x@^�c;��� ��7�S��c��!FNu]��]�R�R�#*H�+�T��9�v�;H��=��`//ݨ��!FN�]�{��/��"�"=�O+�yHφ9x��J����=� �;��:�ȩʫ�_�,�,�d�S�7�u��S�W�7z)�)��a/<�2'���"��*�ڿ��K9@9� B�ҟ	1J*�j�Vb/=�G���<��u�QR�W���K)@)p
(<'����%�|��$�|��E9�"��f��`K�!�����|��Ť��Ho�%���D���:pl��bRJ�_L��n��_�7urμ̣�Ћ�m�ΧGs��k�z���iK�W�/��^kϕǩ��z��q��ʫ��h/e�Z1+6k�Z��a����-C��Tdu�Y����vE2��ٌ��W֧z7�c��G�~:�ȅ�0���<w���n��\�V��d�Rm�Z�Ὃ���2�O��D\B�o�uT�4��74��iߔ�HR^_��f��]�5&�۫[d���7����Kg�_HUi�(���wٕ�9��~�m�x��[�ze���*��`��Vd&��ᅆ���v�mg:TO�F��}k�/m{o>�!@;���r��� ���IyC6�(���������x�`���n�d?!27�bi��<O�|�[x=x�8���s �o}�Ş�}�%�2�2�F���y���u�QR5X�V�!����#�ϥ�R>��$�?�0I�#%s��ld+!]�!;�.`�N�J�.�R:2���G66��uՔ���B�9QΧ�%�(�Z����>�p�{����\@�d�y����W9��\�$RF8>���7Pi'繸Q|p숔����E)	(	>%�,r�z3�:�(����ɏ��'Jd7��;$�Hhi�L:J�\ ��	pw�60&#�RdJG�2vɰE���$�"���D���dPTN��J�L�QR%Y�W��� `�����c�.@-�Q@��b�x�-4X���
с�Ҫߦ�C���ee��X���f�m	���J���$�b�כ*%S�?%�p� =Zq����Y��������b�8�)��=����P6P6ܑDLs������~#1��`�\�ػ�j&��!��ޞ��m�����o�<�t����wK]깰��@^�((����)��A�!FMEf����d����.�8�u��4�B��D�?9V��������i^��cyr_o�$�h�LipG�����R3!FMeg�3��toXx����/���l�؉v�����6a�32��I2�~�\7�%vT�)��(=~I�A�q7zH�y�C&ĨbAF�b�aO�
�O��RW�(�e��a0�lw�G1�	a�7�g��h�U7MQ������qGؕ޴�mT�_�UCk�5�����4B�~O�1C����V��Ȳ=�Mf��v���h
�cNMt$�Q��T���/6�u��L��-��4��,���(4V��\}�UwF�5꿾N�Z�J� ���HH�R�n}5\7��7��Py�2��v(	+�=���x����5~S�W^���ug��ۿ�=>:��۷��긯�p��J���^ުL���:�Jm�����u�}����/�b���Q�9z���3�s}u�B��8	����L�N�F�V�1*D%�B	��gʆ{�Д
�
w���pJ�M;bT� �@����,�x�}�c�}ηN�[������?�����)bT� �6.��F;�~��M��l�l�r�YstfC��D� UI J�l�~=�����.$�4Nȫ��!F�
�$h�8N`�/�A��Чп�ɄR1�<[6ĨzA����،1�e�w��)(���$<B^*�aT���W�A+���Q�,o��oT�)(�B����p	1_�x D?��OƑf4�o�)(�� Y�-g�W6�hBA�����ԊK]p'͙����l�x����������#�A�>��>�k?q�t_���-2H��f�cC�Oz�?�
�����9ؐ���N����%�RĚ���IW��4#���y4W�ܸ7D��ś���!F�
�I>Y��k���)�q�TL����N4ɺ3Ҥ@����
�uD���	R��#T`�؉�1b�A7J�;B�8=o2@6�h21'	��;)"��m��Ir��Pk����K�w*�6�If��i��%�:[���Td�����%I�W��_��0v튦Z�A�|������0�����w���6�E�S�X�
n.&����p<��ѫP���P��d��H�Ek�WksKB�5�K�Wk�&��kUƵ�rKIqa���k����e���l!e�n�VO�쑏ʛ"AZ��7��o��u����-X��x+��y���uS�)�+z��:Ӷ�+�˄^�k3����XՄ����=�u��y-n$��0�9z��K���!����3L�2��s�YE�j��ǉ��՗�/׬�[������n8z�M��|���k3lJ��	By�#{P�ά��y�s쭍
C��=��?f�� ��©ڍ�pb4�X���^%������M�ԈI6��S;/!K�K��IacQ�F�l�]�2ѭ��҃����a<�"�ߔ�WFS�y	��_q/�n<b��ﾛ��,�E�d��T�>���Y�ӵ�	������[�T�Tɧ�(q�v��]�M#N& ���D6��K�L?�F��o��S����~�7ql�]�%��-JJ�{PDR9A�1�^�M'�&�ȵ��T��f^J��5���s��c	�O�	F><�/��͘���"�9!�+�wiB9qWN("���)�%�hq;'����N늓��]���қjAD�u|���>��γ�1 �{��ĆP�n46���vA����yr��0r��l��y�j�١�gԻ�)u9E��W��l)�.N��M���&�J
J�{�B�9��h�U��b�J|ꋪe=Q������;�X�~^��N�~�F�ﮪ��WP�G�c[�|#�S~P~܃�ĉ���qbt����!7F�ʇ&)�q\�ѭ.�H,���[7�:��q:�A^����ɲ G�Ӕ���w�4ԛ�N�!F���
�q��^y����J��@�����9�"{����g�v������������G�((r� <�����1�LT�Y��Y�Tzj(�����B�Y��j�o��]�ӡ�sA~HEDR���8ee�!�oc_�]!��T��8U�1M�xK��Bq��2Fj�2I�6�!�\S�(�0ZaP��%,�TNn܅�!FWS3��g�������=-��2"���n>�� |!D�/�9����D�^����6޸�~^C����A��h��
��Ǒ~���z_Z��A�=|\ۓ�sx�T�>����jtD��k4�N��o��g8je���KB��"�Ѯ�ql�[���'>1%[�R
F�ȯ���JF�M���������*y%߫O%g9���ݗ����Q�gq��;v�<�V4������I����r4�ƣe�=yն�Ig�5�S�A�>�E��tf.���o���}����Jܝx+ϭ���	[o�,��kB`����������Hd�Vh��R��4�O/C���F�����C"f�v�$��H������k�qJ�sƩEh;ĳs��m�%�z<$5ǭM��ߊl�2�2�A���9J^6��z�>tK�F)y:����}�SZo#r0�cG�TZ_���̤M���*5� �  �V��D�@��L�EN�zvbt#�B	�Y�*r�Sv�I��B܇l���t��@���d�yrO��fC����'�7��(���n\��"FP5����]O?��&qy�.��m�ӕ[���w����O�K�1���$��w*}�uBoV'�v�u���b�I�d{���?���O}N���II�!��c���I��'�������
	"��w��	ܷ����go=V�)P܃���FNK5b)�5	����T(`]�nf>����|>{�b?吇���R"�QD�&�
ʊ�e��s���b͆CN�L¿be:��=�{�u����A�Ω�trs����A�i�@�p&��)yDx�0�����O}KrR��Q'��E�%JJ��%��p���]͆CM}K�-�J�?)͟��u��\{���	TЩ����KW�%�ʆ�d����ż1��z��/�,q��3���Q�n��K
Y��z:b�;�0���Ł      $     x���Ms�F����-�]Oa�gxZ��؛����Vm��E� �D���= E �AE�W��m=������θ�l���f���翖�U���P6��w�ժ�3�qs��n���M�(����=���u�{�ovMU�����=l�F����^���}VX�3V�l��B�W\�:/�\�9�(��B�I˙T�ɸ�T�v�ZT����Z-��u���˔˾��W����[�������q�b>-�Z1oE�ד�O#���բl���[����ޕ�"S�����<L��s!$�!b�s�1bGB��&��/���o�Zo3�O����2S��I g��9|_~����6�eU��3�OeLA��gV)��+�CFa򦂿�_o��� :��g/j!I���=x��j��S1��/���X.�Uy�}���ߎ���_�h3��Q�Ga9S��"䙇*���� [�2g L���s�@! ��0��|��Y?����j�&B.Lv��y������2���k�]}Z<�����W����uV�o/�
����b.�>��Z���p0w3�a���{�&��^�����1w�?��j�z�m�TǓ�~�F�}Dp���zWy�\;i9s�� 9����됷ڛM�'��l����_���j�}bk?�Ѭ1L�c47�9I�u����w]-�-�mo����Tf7��]���1\2\��p�B��'-g� 2�qs�^�6TM���V�3�"�����s����+����h��ϥa�Sh]	�8�q@{�)��r��
>{l�����M��e7_6��h���U���Aѕ� ��	��r���^��r��c̐��k�	�f���]�cL5/4S2
݁�1%D�ziC�����M��:𻒌����KS�2cW>�B�?j����0tр7���nZ�}:��JFt܆�����'�[|����s�x�	�5��E��*o��k?{	���ƌ#,ד��dز>5�_�n�[<�l7��Ŵ��=�7戆�� �<99Q4 tb��󀲵bǢ��˸#�''V��������bP<���!8/M�oO<�a����C�xc�y���4WPh]i9�FKa�Q�8�NZM����s͙tDؓ �#Z�t��W�|K��Ĥԓ�O V�x�(3N(SA�i�L	��]	@�r�M�J��s�4�����1�D"��+L0��*2�o���'��t���SЛjl��Cl��XW0��"r]ʷÕYG�IO:��N�K����g	��!�a�A�I@�g�A�� >�v�)Sz���	��X�<�nP5�=yՖ4Z;3ڂ�z���\#
�'&l�8~h��Cד�3%p����m�]'^��[���C�
M-��I�`���#T�Ú-��y���d%��tؓ
x?����z����s/���`.�����R8�|Ԣכ���\��k(s�4#�)Y�a�^&d�����9rR�^b
q�"�D1eҐ8e(�t��H@i��<�·���{�	�pr	�E�i9ә��p���k���26^I�
:��x1�hc��v�f296������~����~L��4^���e�2Ў�w��4��s3f��s�ȹ\�am-#[B	��P ����r��f��+}��v�f�%� !�p�@�H���̷ �|��H��!��.�a��(�Tݓ �q��H9�o�,��L*���$�� ����A_�����$��@@��0
G�$�K�h��P��htH��s%t2n���5�%������2/�ғ gJ�E$jd��q���e��|8w�`��亼��V���ݠҥ �4@�=Ee��������KЍ�o:�RL�3�@:\M������R����TB6,tz��I@�of�����x��i!���0Ov% �@�J�'�1<���^z�r9�aysDy�s���]��$�Q��#�x�pj�;�@�� ø+%��D�O��˗��S�
+���
����tj�IZPc_/�0�J���&��8%}�+�ՉhA9���E��.a�T���7����zj�����=��u�iH@��z�����c8	��� R�⑓�����M��롩:������S	���� �__>�|�����$�x6�����4�QD|X$�T˯H��-Mr�a�$l�7�R��2�',g���W!�'Fg9���4r�9�񋓁�����q�m���ͺ?˓�m���SRO ���(,�2%���@�4�^U���o>���<���	'�irI���z��j�r�����<.q4 �yw���4�Ƙq�H@�	]�C�X훟�Oh.�7]X�q*-u%���.M{��z���@���tȣը]�@J����z����4	c�'�{|%j�G�i9s����¤1!���%�����n�M3'�G��ė	@y =�g M�7%���jy ���h��A�
��z`�W�����s��MKMBc5/�?{��w-ߏ$j��x�>�`psҮ]	P�M��Ei�֟鰦O���g?�H@k���&��M��˂yC�v%`���=͖�~4V�:��l�>�$�t3�ُs�yrS�Y��s�똁�>�b��H�qKp��ѩ��s��]i9�@	|�3m���t#O�,���D��IP��^!>�E_��t�Y�F/T��`����d7�"�$�������\��`�9>�b�i.WzV�/,�<<2��}��$����#��{ijP�I �4J}��Mԓ�D�>���r�p5���ԓ���@Nw$is�ΨV���$`4�q�9ݘ��!g��J j(����SN6��6,�fX_J(�"م@j���fq��v�'�GR�7�$����ƴ&^Q��J���"P�z�F9^"3�?$d��W7�_0zp9�$'�eOB�P�&���(�ty����q�:�]	C��6��(;)@ޫhjOӓ0��:��p9�H��Zg`�s��#�$��0���iէ�D���M;&��UCi9�[��c���v��/'�s�k�R��F�x����v����l�Ӈ�@      3      x��Y��j���#~Ź�:7�r0!���<�`�t�f4�������Y;��2�R(�f18���޵�?�wH����N�0IѼ����5@���꠨Q[�h��(�����h��%}�Ǳ��ކ��,9dm�UI�þ�[���?���4��'�@ ���C�uC׎kLM�I|x$a������F���}C���.�!.�W��wx��"���/݋(	�����c�7;w۞��8�b8A ��E������Mu�R@�����z�0s��̿CTW�#���:7�)�{g��}=��i��3�޶��N�N��#a�>a�:uϻ#D��߶��4l@P���!u�m�E����a�4��	�#���FYN�q�)n^A�V�u;�^|��hy �/�ETўsk�m ǲ�A O�E9-A��eJ{� ,f�f��x�m����V��k���C\�l��|s'�_q^%H�5qtO[��2��І((�Q��K����	=�����b���� �yx&q9a4qj�y#���w��~6dv��B�����w|��A�/ ��� � v�Qb���X�ڼya��e#����oP�7�[��<��&#[d�q��u��X�p��쁆:�IM���-��L�ˋT��`�K��m����}��߂sm������ٟO]�je�bz�,��K:?��ӹ���]�3�&��ÞOJ�s�lgƑ�G���:߳����g1%�4�6��4z|�2"���V��p�)��d�����]_Tչ@'�0�m�MB�(C�6`�+��x�ldքմ�4��M9�2��&��t?W�T��\�	Z�>y�dZ����[7�7Qa�����H�y;R%��	�.���۱.پ���i+w���}�WbI=�M���4l�?�ɝ�������X<��f��2)L6�m�h�)�,�S��wzG����4�_ ���(p�A|g�d:h��.���j�G�[ ��u�!�1A���T����a���	sD��3�#,S��m�/\R�l��߆���Yoμ���%�/�_�$���n��-T��!k�ׄY�S�5�!o�-��)��s�[�Iӫ1����}�9J���Α������7F��a�	R�Z \��vh����(�o�<����Oo�آ_sf�;�yd(�Wk��XȬ�#d{��Y	����+y���7��j����X�%nTy��-@eQ����K�]H$90{���K�׆?+H�얽�qg5��=Y�[��˽�4��'�����=����|}�J��F7KZ��pm���%��;@p�3��;���"�n��\T����@x�?���š8+J�O萻�mp�ǃA��a��$��9��Wٙ�<�����E{�~��A�� �/]��m��E/� v1�]�]�UN��e�+OP��y'dΔG�Gi���U� lb�[<)�5�+�H�z�t�����{�)�.���"����
3��!��B19�)ԉn���w�i$���S"=�0�m�Gu�$3ﰠ��
�l���!�$��Pؖ1d|���P����z~�I��O��?��x_ITH��9���r�-��^�xn��]���v�P$d��~����h�Z/*z�L�W�,)uUxE�I���=���u�]��toM��n�� ���n��l]T�܋�n�G���V�ѱNimъm�v֓C4�0)�"@��� �V[Y�]B�D��%a���Ű<��vѸ�ga�i��yq;���*���rt.�m���/�m-��yi��Aχ:;��MR�Ń�{Q�NW��sm`��H7y�U=S�
��%��MO2Zk��"��\j{cEpow;�t��y07�x�ہ� a�Na1Ő�*��<z��ba�hY^BZO`Ҏ\�ܤ4U�;Z��T�a|�-[��2�!�CglF��z·�7����������~�fWKs E*��p��6�qdi]���C3x���<PI�u��%2p]���>{#������ A�a�@~�l���4/jQU��l�G�Q{���4{���5�N%�67<��I��
+tA�oe�����5�\��o�:2O۬hW����%M��nHD��メp}�r*d���<�w8_�	H�������"�^OK���(��LM�i�A���:M�A	S�XD
�(d���L����{�h������j���[�����m{:pɐ.����Jn�&����&��60l7�Z�]J�GP�?�`�9z�/)՚!-����8�S^�]�F�DF:�;��tt��ED�q�	8�.Eme|�b9Ld<% �XVX�z\F���y�J�H�QK�n�4ow��/Ȇ�w:` �g����q#�A?	�v�I�rʋ�[���vs,�-�9B\�K�xP�>(�%�#���q�#, �I
�/m��9��%b�b��Ռ�z�[����@ni�ɰ�zW˜q�G�A�z@�U@��)�_��c#vg����*�P �zڃ�I �+à�}��v�~�F@j�#�~lM�h��aO&�~`I�����q59jj`�9�w�nL���|��M!��j�.�d��� [;�YxU��Ɗ4�3"8�a�vK��iZ��=��������H�_�1��9�98;�{
D�N5x�O�ߥb٫0��'X���2���P:�M�Elz~$���V*�ʳPL\@oҐ��1��W�A� r�?0��0�� Cv��o�3ASl�;S�|�7�#��-X뗆7e�>��q��qn�|@���@ĩ�@�qO{��W�/�o�m�wi�Y��!��{N���e@�K��X)A�hTFk ���[�XM��W�#1��bW��Fm޽��m���Rǔ���ֈ�q�������-k(��j�����qe�%(�k�jKc�+��C�D����:������	������vsA����x��R�\�ZȬ\�MX�$�cʫM�J���첃}��љݫ��@Io,sa#�m���Y�����U`<f�����}9�0+X�wd֍s([���3�^!��6�*�u�^zBD2p�f$�Z3WY���_��"�6
�#��0� �n�*�E�b�a񯜒�����N�@����SS�&˫{&�s%�])��;�%
�6���|(,���B��^�54��KVЄ��cɃZ��&��
G7^�D
]C!{e�wd�H)	R�!�
fB9<���p0Ɨ�^n���.�52������+����N�jۢ�.���\�/٩���<P;-�@H^�*v*l���m�8wЉ��Z�].�<�ނ��K��Hg�d�[Y�tT�_=��Q4��kQ��(N����gCf�x7��������(�"�8kU6�XD[�[�#v�[�Sۇ$0��4j8��>�Qs����7���2� �\�~(L
�<�U6	��Ȧ����&�<s�� �aL@���v�_���?�I�G�݋pRt�/ ��@ݤ�,���FX)v_�94<�L҅χ�$t����R	�۠��m7\�
tY wʺ�}��c ^s��R2�]�T�3kk.J>өR��b����c�nI��Z��^�Ei�8��suCV�'KSW
��̃��V��U���ro� Jw[��
]颷�,�'o�3��I{��/<�J/�!hW������_FE�Wmv3D��lu��Z{�E<�=ܱSF������jx'���G���1X�w���_Z��ϳƌ~�f����gy��<xo�fm���3q���]rBj�5��P��-�5�(�P\��_Z�& ���&�al��8��4�Y��/tЏ�>~Dz�c�k`��%xM�Q�$�r~C�0;�j�N~���FR��`��J�h��}�ǐW��ć������.'4X��6���IHU=h��aK=�>��b� �\��>�u��RTw�Z��vik�Z���G������$��Y�N�ǌ̑������hq���׏p� z�g�v���}d�����_���"�m�p�j٧�`��Ԍ�9����ѵW�df�k1����8����>VF���$@�9�r`۞���v�\����/11"? �  ��J��j�>��� p�3�;è�c�u�}��r�Pt^����^i2�)R�;�#��R�QG-�/%}��H"?�#����Iv��JɆx�$�7ȟ�%}�c��!!����!IY� ��
�Z�ވs�d� P�?M�+�f�k���d���J	CEb�J��m����ߎi^�S'Z}��KviL�*C�꺅]	�O��V'�(��}x� ��I��ra�s���%C��i��tKx��Q}ˇ�:����
0u��E��ݕG�[l���R���7OVX��u��,+��Z%��
{�ɥ(Z�⚂�Nj$�
�ԓ/Dt�*^���|�(\WX��Ɯ�-�9<=����I>F%9�$�����9~���tO�x����@��gU^�f�t�љ��<��i6`�R�+L������F�@��������Hu��F��A�~d��c�b�s�xxI؍����f@��v�Z�V�z��p��Q8���K��$��H6��l`|��w�W�%��A��K�~��'-�a�r.�cƷ��8:ɬ�.�i���̩C�9f��J�������_z�����v����.�
~6!���7�>�A�-o��!g�k;���������N�h�x�����p�!ϕ��#ڗdI�/�l�� ��[߇^��v��f�˦��<�I?�^F�߈�c�b���;}�1ίc�>�QҪo��}����,@�,��dI�ϐlr��B<� ߅^A�J_��p��ȓ��-�m��[#f<�+�֐	�����=(Y�x�}|�'�~�ݞK_���ؿD��&;I>!���+�ك�,�YI#�I��tst���Nm�pm�'Ճ-��9�K���a:_� ��j��
ӗb)�OPl|G�<)�|z�>ێ|D��V���7��t'[���I?����\դ2�&���2�6Di��P��3)�`��W-�K��fC�x �ͭ�>�
�LD�ʽ�.LY�|B���+5C�9������S�e�4�	��SD�5U���é�G]/�#؍��%�_��3d~��`O��.�
}��(�d_ԩ�����'MH�R��-w�"?��{��"� |����9�2.&V󁔆u��/��5l4?O'��B�f�J�+��?�6Гd⋖���7�!�PЭ�qZ'9�ݫџ�ԔR*��  �f��n~���/����m��o��t���+�ك��d���Г.$���(��1C"�^L�������q�Jum_sO�]�b�Y�2���_���ٿF����0O�.�
}v!�`��F��Qӆ��!�ܯ���8@%�$=�p"?ذ�6pI��akD�y����dI�ϐl�����}���h���^ ���۷��'mH��pʧq�B�(J�x�%�E�4������+�F�!'�S�3�����_��oo�Cᧈ�+�
}�!�GҼ���=�BjaZ����7�-�Uϝ�0\�;>�z +%U2�Sx,貞���7+�K����ذ= ������A�cRU��]�u��Oڐɡv�7��������!�m�z�y1R~�s�p��ޛF׍�K����(6�B{V�.�
}�!����o���'}�I�ŒX�-w, �9�B']�p�f�f%/�X�p�#�G$Ʌ���/���M��F}և�.�
�!����E�4!#&���7�=�	�d����"�������$�d\P�[�=��W]�K��b#�;�p�I���+�rܡx�4� ����o��yK�L�Г7�ӝ�8�Cp�&W�V�S��U��*S�hoy��U
v�O�OS��6���5�i;M�zղ6�%�
�v���SAp�����TMF�[
��c����>d�-���.��@']�8��vMH�Os���s�}��9�P%�9�q��%���ӌ�M��W_Y��.b[����;�Uv�w��ׇ�B&��`�B��{�їTO��J�h��?,����t��/��9��W��,��&.�2���L��Ӣ�)>ב��mX�a`-Ab��	Th����BϚ&�j�9]�����g�#VuYD��k��#=��L�	���b�ƘR�v9:��+�:g�;����C�Q�%0���t��	H��`��OK0�/B�|�ڡ'��!����2���#�ct�&�f�o����!�L&���sbY�/k���&�(|@�z6{i��6�����������os!�'���B�Z�o-<Q���7��U�9e��W!�j�N̸;~��k.��?��\����4�}���{x}}��U�     