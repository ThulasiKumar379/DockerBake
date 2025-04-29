--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

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
-- Name: SequelizeMeta; Type: TABLE; Schema: public; Owner: crb_dev_user
--

CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);


ALTER TABLE public."SequelizeMeta" OWNER TO crb_dev_user;

--
-- Name: booking_status; Type: TABLE; Schema: public; Owner: crb_dev_user
--

CREATE TABLE public.booking_status (
    id integer NOT NULL,
    status character varying(10) NOT NULL
);


ALTER TABLE public.booking_status OWNER TO crb_dev_user;

--
-- Name: booking_status_id_seq; Type: SEQUENCE; Schema: public; Owner: crb_dev_user
--

CREATE SEQUENCE public.booking_status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.booking_status_id_seq OWNER TO crb_dev_user;

--
-- Name: booking_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crb_dev_user
--

ALTER SEQUENCE public.booking_status_id_seq OWNED BY public.booking_status.id;


--
-- Name: crbm_aminities; Type: TABLE; Schema: public; Owner: crb_dev_user
--

CREATE TABLE public.crbm_aminities (
    amenityid integer NOT NULL,
    amenityname character varying(50),
    thumbnail_key character varying(100) DEFAULT NULL::character varying,
    status boolean DEFAULT true,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    aminity_id character varying(50)
);


ALTER TABLE public.crbm_aminities OWNER TO crb_dev_user;

--
-- Name: crbm_aminities_amenityid_seq; Type: SEQUENCE; Schema: public; Owner: crb_dev_user
--

CREATE SEQUENCE public.crbm_aminities_amenityid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crbm_aminities_amenityid_seq OWNER TO crb_dev_user;

--
-- Name: crbm_aminities_amenityid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crb_dev_user
--

ALTER SEQUENCE public.crbm_aminities_amenityid_seq OWNED BY public.crbm_aminities.amenityid;


--
-- Name: crbm_notification_type; Type: TABLE; Schema: public; Owner: crb_dev_user
--

CREATE TABLE public.crbm_notification_type (
    notification_type_id integer NOT NULL,
    notification_type_name character varying(50),
    status boolean DEFAULT true,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.crbm_notification_type OWNER TO crb_dev_user;

--
-- Name: crbm_notification_type_notification_type_id_seq; Type: SEQUENCE; Schema: public; Owner: crb_dev_user
--

CREATE SEQUENCE public.crbm_notification_type_notification_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crbm_notification_type_notification_type_id_seq OWNER TO crb_dev_user;

--
-- Name: crbm_notification_type_notification_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crb_dev_user
--

ALTER SEQUENCE public.crbm_notification_type_notification_type_id_seq OWNED BY public.crbm_notification_type.notification_type_id;


--
-- Name: crbm_payment_statuses; Type: TABLE; Schema: public; Owner: crb_dev_user
--

CREATE TABLE public.crbm_payment_statuses (
    statusid integer NOT NULL,
    statusname character varying(50),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.crbm_payment_statuses OWNER TO crb_dev_user;

--
-- Name: crbm_payment_statuses_statusid_seq; Type: SEQUENCE; Schema: public; Owner: crb_dev_user
--

CREATE SEQUENCE public.crbm_payment_statuses_statusid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crbm_payment_statuses_statusid_seq OWNER TO crb_dev_user;

--
-- Name: crbm_payment_statuses_statusid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crb_dev_user
--

ALTER SEQUENCE public.crbm_payment_statuses_statusid_seq OWNED BY public.crbm_payment_statuses.statusid;


--
-- Name: crbm_roomservice; Type: TABLE; Schema: public; Owner: crb_dev_user
--

CREATE TABLE public.crbm_roomservice (
    room_service_id integer NOT NULL,
    room_service_name character varying,
    service_icon character varying,
    status boolean,
    created_by integer,
    created_at timestamp without time zone,
    updated_by integer,
    updated_at timestamp without time zone,
    serviceid character varying(50)
);


ALTER TABLE public.crbm_roomservice OWNER TO crb_dev_user;

--
-- Name: crbm_roomservice_room_service_id_seq; Type: SEQUENCE; Schema: public; Owner: crb_dev_user
--

CREATE SEQUENCE public.crbm_roomservice_room_service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crbm_roomservice_room_service_id_seq OWNER TO crb_dev_user;

--
-- Name: crbm_roomservice_room_service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crb_dev_user
--

ALTER SEQUENCE public.crbm_roomservice_room_service_id_seq OWNED BY public.crbm_roomservice.room_service_id;


--
-- Name: crbm_subscription_features; Type: TABLE; Schema: public; Owner: crb_dev_user
--

CREATE TABLE public.crbm_subscription_features (
    feature_id integer NOT NULL,
    plan_id integer,
    userlimit integer,
    location_limit integer,
    building_limit integer,
    booking_limit integer,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    status boolean
);


ALTER TABLE public.crbm_subscription_features OWNER TO crb_dev_user;

--
-- Name: crbm_subscription_features_feature_id_seq; Type: SEQUENCE; Schema: public; Owner: crb_dev_user
--

CREATE SEQUENCE public.crbm_subscription_features_feature_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crbm_subscription_features_feature_id_seq OWNER TO crb_dev_user;

--
-- Name: crbm_subscription_features_feature_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crb_dev_user
--

ALTER SEQUENCE public.crbm_subscription_features_feature_id_seq OWNED BY public.crbm_subscription_features.feature_id;


--
-- Name: crbm_subscription_plans; Type: TABLE; Schema: public; Owner: crb_dev_user
--

CREATE TABLE public.crbm_subscription_plans (
    plan_id integer NOT NULL,
    plan_name character varying(50),
    description text,
    price numeric(10,2),
    status boolean DEFAULT true,
    tenure integer,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.crbm_subscription_plans OWNER TO crb_dev_user;

--
-- Name: crbm_subscription_plans_plan_id_seq; Type: SEQUENCE; Schema: public; Owner: crb_dev_user
--

CREATE SEQUENCE public.crbm_subscription_plans_plan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crbm_subscription_plans_plan_id_seq OWNER TO crb_dev_user;

--
-- Name: crbm_subscription_plans_plan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crb_dev_user
--

ALTER SEQUENCE public.crbm_subscription_plans_plan_id_seq OWNED BY public.crbm_subscription_plans.plan_id;


--
-- Name: crbm_tax_info; Type: TABLE; Schema: public; Owner: crb_dev_user
--

CREATE TABLE public.crbm_tax_info (
    tax_id integer NOT NULL,
    tax_name character varying(255),
    description text,
    taxrate numeric,
    taxtype character varying(20) DEFAULT NULL::character varying,
    status boolean DEFAULT true,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.crbm_tax_info OWNER TO crb_dev_user;

--
-- Name: crbm_tax_info_tax_id_seq; Type: SEQUENCE; Schema: public; Owner: crb_dev_user
--

CREATE SEQUENCE public.crbm_tax_info_tax_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crbm_tax_info_tax_id_seq OWNER TO crb_dev_user;

--
-- Name: crbm_tax_info_tax_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crb_dev_user
--

ALTER SEQUENCE public.crbm_tax_info_tax_id_seq OWNED BY public.crbm_tax_info.tax_id;


--
-- Name: crbm_user_status; Type: TABLE; Schema: public; Owner: crb_dev_user
--

CREATE TABLE public.crbm_user_status (
    status_id integer NOT NULL,
    status_name character varying(50),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.crbm_user_status OWNER TO crb_dev_user;

--
-- Name: crbm_user_status_status_id_seq; Type: SEQUENCE; Schema: public; Owner: crb_dev_user
--

CREATE SEQUENCE public.crbm_user_status_status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crbm_user_status_status_id_seq OWNER TO crb_dev_user;

--
-- Name: crbm_user_status_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crb_dev_user
--

ALTER SEQUENCE public.crbm_user_status_status_id_seq OWNED BY public.crbm_user_status.status_id;


--
-- Name: crbt_bookings; Type: TABLE; Schema: public; Owner: crb_dev_user
--

CREATE TABLE public.crbt_bookings (
    booking_id integer NOT NULL,
    room_id integer,
    user_id integer,
    system_user_id integer,
    title_of_meeting character varying(255) DEFAULT NULL::character varying,
    starttime time without time zone,
    endtime time without time zone,
    repeat character varying(255) DEFAULT NULL::character varying,
    description text,
    status boolean,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    location_id integer,
    building_id integer,
    floor_id integer,
    booking_date date,
    duration character varying(100),
    room_capacity integer,
    room_service_id integer,
    booking_end_date date,
    reschedule_status boolean,
    days jsonb,
    booking_status integer
);


ALTER TABLE public.crbt_bookings OWNER TO crb_dev_user;

--
-- Name: crbt_bookings_booking_id_seq; Type: SEQUENCE; Schema: public; Owner: crb_dev_user
--

CREATE SEQUENCE public.crbt_bookings_booking_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crbt_bookings_booking_id_seq OWNER TO crb_dev_user;

--
-- Name: crbt_bookings_booking_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crb_dev_user
--

ALTER SEQUENCE public.crbt_bookings_booking_id_seq OWNED BY public.crbt_bookings.booking_id;


--
-- Name: crbt_buildings; Type: TABLE; Schema: public; Owner: crb_dev_user
--

CREATE TABLE public.crbt_buildings (
    building_id integer NOT NULL,
    building_name character varying(50),
    location_id integer,
    address text,
    system_user_id integer,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    status boolean,
    pincode integer,
    buildingid character varying(50)
);


ALTER TABLE public.crbt_buildings OWNER TO crb_dev_user;

--
-- Name: crbt_buildings_building_id_seq; Type: SEQUENCE; Schema: public; Owner: crb_dev_user
--

CREATE SEQUENCE public.crbt_buildings_building_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crbt_buildings_building_id_seq OWNER TO crb_dev_user;

--
-- Name: crbt_buildings_building_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crb_dev_user
--

ALTER SEQUENCE public.crbt_buildings_building_id_seq OWNED BY public.crbt_buildings.building_id;


--
-- Name: crbt_companytimings; Type: TABLE; Schema: public; Owner: crb_dev_user
--

CREATE TABLE public.crbt_companytimings (
    companytimings_id integer NOT NULL,
    company_name character varying(255),
    system_user_id integer NOT NULL,
    start_time time without time zone NOT NULL,
    end_time time without time zone NOT NULL,
    monday boolean DEFAULT false,
    tuesday boolean DEFAULT false,
    wednesday boolean DEFAULT false,
    thursday boolean DEFAULT false,
    friday boolean DEFAULT false,
    saturday boolean DEFAULT false,
    sunday boolean DEFAULT false,
    created_by character varying(255),
    updated_by character varying(255),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.crbt_companytimings OWNER TO crb_dev_user;

--
-- Name: crbt_companytimings_companytimings_id_seq; Type: SEQUENCE; Schema: public; Owner: crb_dev_user
--

CREATE SEQUENCE public.crbt_companytimings_companytimings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crbt_companytimings_companytimings_id_seq OWNER TO crb_dev_user;

--
-- Name: crbt_companytimings_companytimings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crb_dev_user
--

ALTER SEQUENCE public.crbt_companytimings_companytimings_id_seq OWNED BY public.crbt_companytimings.companytimings_id;


--
-- Name: crbt_departments; Type: TABLE; Schema: public; Owner: crb_dev_user
--

CREATE TABLE public.crbt_departments (
    department_id integer NOT NULL,
    department_name character varying(50),
    system_user_id integer,
    status boolean DEFAULT true,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    departmentid character varying(50)
);


ALTER TABLE public.crbt_departments OWNER TO crb_dev_user;

--
-- Name: crbt_departments_department_id_seq; Type: SEQUENCE; Schema: public; Owner: crb_dev_user
--

CREATE SEQUENCE public.crbt_departments_department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crbt_departments_department_id_seq OWNER TO crb_dev_user;

--
-- Name: crbt_departments_department_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crb_dev_user
--

ALTER SEQUENCE public.crbt_departments_department_id_seq OWNED BY public.crbt_departments.department_id;


--
-- Name: crbt_designations; Type: TABLE; Schema: public; Owner: crb_dev_user
--

CREATE TABLE public.crbt_designations (
    designation_id integer NOT NULL,
    designation_name character varying(50),
    system_user_id integer,
    active boolean DEFAULT true,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    department_id integer,
    designationid character varying(50)
);


ALTER TABLE public.crbt_designations OWNER TO crb_dev_user;

--
-- Name: crbt_designations_designation_id_seq; Type: SEQUENCE; Schema: public; Owner: crb_dev_user
--

CREATE SEQUENCE public.crbt_designations_designation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crbt_designations_designation_id_seq OWNER TO crb_dev_user;

--
-- Name: crbt_designations_designation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crb_dev_user
--

ALTER SEQUENCE public.crbt_designations_designation_id_seq OWNED BY public.crbt_designations.designation_id;


--
-- Name: crbt_floors; Type: TABLE; Schema: public; Owner: crb_dev_user
--

CREATE TABLE public.crbt_floors (
    floor_id integer NOT NULL,
    building_id integer,
    location_id integer,
    system_user_id integer,
    status boolean DEFAULT true,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    floor_name character varying(50),
    floorid character varying(50)
);


ALTER TABLE public.crbt_floors OWNER TO crb_dev_user;

--
-- Name: crbt_floors_floor_id_seq; Type: SEQUENCE; Schema: public; Owner: crb_dev_user
--

CREATE SEQUENCE public.crbt_floors_floor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crbt_floors_floor_id_seq OWNER TO crb_dev_user;

--
-- Name: crbt_floors_floor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crb_dev_user
--

ALTER SEQUENCE public.crbt_floors_floor_id_seq OWNED BY public.crbt_floors.floor_id;


--
-- Name: crbt_locations; Type: TABLE; Schema: public; Owner: crb_dev_user
--

CREATE TABLE public.crbt_locations (
    location_id integer NOT NULL,
    location_name character varying(50),
    city character varying(50) DEFAULT NULL::character varying,
    state character varying(50) DEFAULT NULL::character varying,
    country character varying(50) DEFAULT NULL::character varying,
    system_user_id integer,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    status boolean,
    locationid character varying(50)
);


ALTER TABLE public.crbt_locations OWNER TO crb_dev_user;

--
-- Name: crbt_locations_location_id_seq; Type: SEQUENCE; Schema: public; Owner: crb_dev_user
--

CREATE SEQUENCE public.crbt_locations_location_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crbt_locations_location_id_seq OWNER TO crb_dev_user;

--
-- Name: crbt_locations_location_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crb_dev_user
--

ALTER SEQUENCE public.crbt_locations_location_id_seq OWNED BY public.crbt_locations.location_id;


--
-- Name: crbt_notifications; Type: TABLE; Schema: public; Owner: crb_dev_user
--

CREATE TABLE public.crbt_notifications (
    notificationid integer NOT NULL,
    user_id integer,
    notification_type character varying,
    message text,
    read boolean DEFAULT false,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    redirect_ref integer,
    email_notify_info text
);


ALTER TABLE public.crbt_notifications OWNER TO crb_dev_user;

--
-- Name: crbt_notifications_notificationid_seq; Type: SEQUENCE; Schema: public; Owner: crb_dev_user
--

CREATE SEQUENCE public.crbt_notifications_notificationid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crbt_notifications_notificationid_seq OWNER TO crb_dev_user;

--
-- Name: crbt_notifications_notificationid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crb_dev_user
--

ALTER SEQUENCE public.crbt_notifications_notificationid_seq OWNED BY public.crbt_notifications.notificationid;


--
-- Name: crbt_participants; Type: TABLE; Schema: public; Owner: crb_dev_user
--

CREATE TABLE public.crbt_participants (
    user_id integer,
    booking_id integer,
    participants_status character varying
);


ALTER TABLE public.crbt_participants OWNER TO crb_dev_user;

--
-- Name: crbt_payment; Type: TABLE; Schema: public; Owner: crb_dev_user
--

CREATE TABLE public.crbt_payment (
    payment_id integer NOT NULL,
    system_user_id integer,
    plan_id integer,
    subscription_plan_details text,
    order_id text,
    payment_ref_id text,
    status boolean,
    payment_status text,
    payment_response text,
    payment_request text,
    purchase_type text,
    amount numeric(10,2) DEFAULT NULL::numeric,
    total_amount numeric(10,2) DEFAULT NULL::numeric,
    payment_method text,
    transaction_message text,
    transaction_time timestamp without time zone,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    tax_breakup text,
    tax numeric(10,2) DEFAULT NULL::numeric
);


ALTER TABLE public.crbt_payment OWNER TO crb_dev_user;

--
-- Name: crbt_payment_payment_id_seq; Type: SEQUENCE; Schema: public; Owner: crb_dev_user
--

CREATE SEQUENCE public.crbt_payment_payment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crbt_payment_payment_id_seq OWNER TO crb_dev_user;

--
-- Name: crbt_payment_payment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crb_dev_user
--

ALTER SEQUENCE public.crbt_payment_payment_id_seq OWNED BY public.crbt_payment.payment_id;


--
-- Name: crbt_queue; Type: TABLE; Schema: public; Owner: crb_dev_user
--

CREATE TABLE public.crbt_queue (
    queueid integer NOT NULL,
    que_type character varying(50) DEFAULT NULL::character varying,
    user_id integer,
    email_data text,
    email_template text,
    email_to text,
    email_attachments text,
    sms text,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.crbt_queue OWNER TO crb_dev_user;

--
-- Name: crbt_queue_queueid_seq; Type: SEQUENCE; Schema: public; Owner: crb_dev_user
--

CREATE SEQUENCE public.crbt_queue_queueid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crbt_queue_queueid_seq OWNER TO crb_dev_user;

--
-- Name: crbt_queue_queueid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crb_dev_user
--

ALTER SEQUENCE public.crbt_queue_queueid_seq OWNED BY public.crbt_queue.queueid;


--
-- Name: crbt_roles; Type: TABLE; Schema: public; Owner: crb_dev_user
--

CREATE TABLE public.crbt_roles (
    role_id integer NOT NULL,
    role_name character varying(50),
    system_user_id integer,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    status boolean DEFAULT true
);


ALTER TABLE public.crbt_roles OWNER TO crb_dev_user;

--
-- Name: crbt_roles_role_id_seq; Type: SEQUENCE; Schema: public; Owner: crb_dev_user
--

CREATE SEQUENCE public.crbt_roles_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crbt_roles_role_id_seq OWNER TO crb_dev_user;

--
-- Name: crbt_roles_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crb_dev_user
--

ALTER SEQUENCE public.crbt_roles_role_id_seq OWNED BY public.crbt_roles.role_id;


--
-- Name: crbt_room_amenities; Type: TABLE; Schema: public; Owner: crb_dev_user
--

CREATE TABLE public.crbt_room_amenities (
    room_id integer,
    amenity_id integer,
    created_by integer,
    updated_by integer
);


ALTER TABLE public.crbt_room_amenities OWNER TO crb_dev_user;

--
-- Name: crbt_rooms; Type: TABLE; Schema: public; Owner: crb_dev_user
--

CREATE TABLE public.crbt_rooms (
    room_id integer NOT NULL,
    room_name character varying(50),
    floor_id integer,
    capacity integer,
    status boolean DEFAULT true,
    system_user_id integer,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    building_id integer,
    location_id integer,
    roomid character varying(50)
);


ALTER TABLE public.crbt_rooms OWNER TO crb_dev_user;

--
-- Name: crbt_rooms_room_id_seq; Type: SEQUENCE; Schema: public; Owner: crb_dev_user
--

CREATE SEQUENCE public.crbt_rooms_room_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crbt_rooms_room_id_seq OWNER TO crb_dev_user;

--
-- Name: crbt_rooms_room_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crb_dev_user
--

ALTER SEQUENCE public.crbt_rooms_room_id_seq OWNED BY public.crbt_rooms.room_id;


--
-- Name: crbt_setting; Type: TABLE; Schema: public; Owner: crb_dev_user
--

CREATE TABLE public.crbt_setting (
    system_user_id integer NOT NULL,
    booked_room_color text,
    unbooked_room_color text,
    check_in_remain_minutes time without time zone,
    reservation_duration time without time zone,
    reservation_remainder boolean,
    email_notification boolean,
    public_access boolean,
    email_notification_message text,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    reservation_message text
);


ALTER TABLE public.crbt_setting OWNER TO crb_dev_user;

--
-- Name: crbt_smtp_settings; Type: TABLE; Schema: public; Owner: crb_dev_user
--

CREATE TABLE public.crbt_smtp_settings (
    setting_id integer NOT NULL,
    host character varying(255) DEFAULT NULL::character varying,
    port integer,
    username character varying(255) DEFAULT NULL::character varying,
    password character varying(255) DEFAULT NULL::character varying,
    system_user_id integer,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.crbt_smtp_settings OWNER TO crb_dev_user;

--
-- Name: crbt_smtp_settings_setting_id_seq; Type: SEQUENCE; Schema: public; Owner: crb_dev_user
--

CREATE SEQUENCE public.crbt_smtp_settings_setting_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crbt_smtp_settings_setting_id_seq OWNER TO crb_dev_user;

--
-- Name: crbt_smtp_settings_setting_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crb_dev_user
--

ALTER SEQUENCE public.crbt_smtp_settings_setting_id_seq OWNED BY public.crbt_smtp_settings.setting_id;


--
-- Name: crbt_settings; Type: TABLE; Schema: public; Owner: crb_dev_user
--

CREATE TABLE public.crbt_settings (
    setting_id integer DEFAULT nextval('public.crbt_smtp_settings_setting_id_seq'::regclass) NOT NULL,
    booking_id integer,
    system_user_id integer,
    booked_room_color text,
    unbooked_room_color text,
    check_in_remain_minutes time without time zone,
    reservation_duration time without time zone,
    reservation_remainder boolean,
    email_notification boolean,
    public_access boolean,
    email_notification_message text,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.crbt_settings OWNER TO crb_dev_user;

--
-- Name: crbt_sms_credits; Type: TABLE; Schema: public; Owner: crb_dev_user
--

CREATE TABLE public.crbt_sms_credits (
    id integer NOT NULL,
    system_user_id integer,
    available_credits integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.crbt_sms_credits OWNER TO crb_dev_user;

--
-- Name: crbt_sms_credits_id_seq; Type: SEQUENCE; Schema: public; Owner: crb_dev_user
--

CREATE SEQUENCE public.crbt_sms_credits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crbt_sms_credits_id_seq OWNER TO crb_dev_user;

--
-- Name: crbt_sms_credits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crb_dev_user
--

ALTER SEQUENCE public.crbt_sms_credits_id_seq OWNED BY public.crbt_sms_credits.id;


--
-- Name: crbt_sms_credits_usage; Type: TABLE; Schema: public; Owner: crb_dev_user
--

CREATE TABLE public.crbt_sms_credits_usage (
    id integer NOT NULL,
    system_user_id integer,
    usage_date date,
    credit_count integer,
    message text,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.crbt_sms_credits_usage OWNER TO crb_dev_user;

--
-- Name: crbt_sms_credits_usage_id_seq; Type: SEQUENCE; Schema: public; Owner: crb_dev_user
--

CREATE SEQUENCE public.crbt_sms_credits_usage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crbt_sms_credits_usage_id_seq OWNER TO crb_dev_user;

--
-- Name: crbt_sms_credits_usage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crb_dev_user
--

ALTER SEQUENCE public.crbt_sms_credits_usage_id_seq OWNED BY public.crbt_sms_credits_usage.id;


--
-- Name: crbt_system_users; Type: TABLE; Schema: public; Owner: crb_dev_user
--

CREATE TABLE public.crbt_system_users (
    system_user_id integer NOT NULL,
    company_gst_number character varying(50),
    company_name character varying(100),
    company_officialwebsite character varying(100),
    company_address text,
    username character varying(50),
    password text,
    email character varying(100),
    email_verify boolean DEFAULT false,
    mobile_verify boolean DEFAULT false,
    last_login timestamp with time zone,
    phone_number character varying(20),
    status boolean,
    termsandconditions_accepted boolean DEFAULT false,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    key character varying(100)
);


ALTER TABLE public.crbt_system_users OWNER TO crb_dev_user;

--
-- Name: crbt_system_users_system_user_id_seq; Type: SEQUENCE; Schema: public; Owner: crb_dev_user
--

CREATE SEQUENCE public.crbt_system_users_system_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crbt_system_users_system_user_id_seq OWNER TO crb_dev_user;

--
-- Name: crbt_system_users_system_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crb_dev_user
--

ALTER SEQUENCE public.crbt_system_users_system_user_id_seq OWNED BY public.crbt_system_users.system_user_id;


--
-- Name: crbt_user_subscription; Type: TABLE; Schema: public; Owner: crb_dev_user
--

CREATE TABLE public.crbt_user_subscription (
    subscriptionid integer NOT NULL,
    system_user_id integer,
    plan_id integer,
    startdate date,
    enddate date,
    status boolean DEFAULT true,
    paymentid integer,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.crbt_user_subscription OWNER TO crb_dev_user;

--
-- Name: crbt_user_subsricption_subscriptionid_seq; Type: SEQUENCE; Schema: public; Owner: crb_dev_user
--

CREATE SEQUENCE public.crbt_user_subsricption_subscriptionid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crbt_user_subsricption_subscriptionid_seq OWNER TO crb_dev_user;

--
-- Name: crbt_user_subsricption_subscriptionid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crb_dev_user
--

ALTER SEQUENCE public.crbt_user_subsricption_subscriptionid_seq OWNED BY public.crbt_user_subscription.subscriptionid;


--
-- Name: crbt_users; Type: TABLE; Schema: public; Owner: crb_dev_user
--

CREATE TABLE public.crbt_users (
    user_id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    email character varying(100),
    password text,
    designation_id integer,
    role_id integer,
    department_id integer,
    creation_date timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    employee_code character varying(20) DEFAULT NULL::character varying,
    location_id integer,
    mobile_number character varying(20),
    isactive boolean DEFAULT true,
    system_user_id integer,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    profilepic_key character varying(100) DEFAULT NULL::character varying,
    building_id integer,
    user_type boolean,
    otp character varying(10),
    ismanager boolean
);


ALTER TABLE public.crbt_users OWNER TO crb_dev_user;

--
-- Name: crbt_users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: crb_dev_user
--

CREATE SEQUENCE public.crbt_users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crbt_users_user_id_seq OWNER TO crb_dev_user;

--
-- Name: crbt_users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crb_dev_user
--

ALTER SEQUENCE public.crbt_users_user_id_seq OWNED BY public.crbt_users.user_id;


--
-- Name: payment_statuses; Type: TABLE; Schema: public; Owner: crb_dev_user
--

CREATE TABLE public.payment_statuses (
    id integer NOT NULL,
    name character varying
);


ALTER TABLE public.payment_statuses OWNER TO crb_dev_user;

--
-- Name: payment_statuses_id_seq; Type: SEQUENCE; Schema: public; Owner: crb_dev_user
--

CREATE SEQUENCE public.payment_statuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_statuses_id_seq OWNER TO crb_dev_user;

--
-- Name: payment_statuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crb_dev_user
--

ALTER SEQUENCE public.payment_statuses_id_seq OWNED BY public.payment_statuses.id;


--
-- Name: permissions; Type: TABLE; Schema: public; Owner: crb_dev_user
--

CREATE TABLE public.permissions (
    id integer NOT NULL,
    name character varying(255),
    key character varying(255),
    status boolean
);


ALTER TABLE public.permissions OWNER TO crb_dev_user;

--
-- Name: permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: crb_dev_user
--

CREATE SEQUENCE public.permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.permissions_id_seq OWNER TO crb_dev_user;

--
-- Name: permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crb_dev_user
--

ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;


--
-- Name: tax; Type: TABLE; Schema: public; Owner: crb_dev_user
--

CREATE TABLE public.tax (
    id integer NOT NULL,
    tax_name character varying(255),
    type character varying(255),
    value double precision,
    active boolean NOT NULL,
    createdby integer,
    updatedby integer,
    createdat timestamp with time zone,
    updatedat timestamp with time zone
);


ALTER TABLE public.tax OWNER TO crb_dev_user;

--
-- Name: tax_id_seq; Type: SEQUENCE; Schema: public; Owner: crb_dev_user
--

CREATE SEQUENCE public.tax_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tax_id_seq OWNER TO crb_dev_user;

--
-- Name: tax_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crb_dev_user
--

ALTER SEQUENCE public.tax_id_seq OWNED BY public.tax.id;


--
-- Name: testtax; Type: TABLE; Schema: public; Owner: crb_dev_user
--

CREATE TABLE public.testtax (
    id integer NOT NULL,
    tax_name character varying(255),
    type character varying(255),
    value double precision,
    active boolean NOT NULL,
    createdby integer,
    updatedby integer,
    createdat timestamp with time zone,
    updatedat timestamp with time zone
);


ALTER TABLE public.testtax OWNER TO crb_dev_user;

--
-- Name: testtax_id_seq; Type: SEQUENCE; Schema: public; Owner: crb_dev_user
--

CREATE SEQUENCE public.testtax_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.testtax_id_seq OWNER TO crb_dev_user;

--
-- Name: testtax_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crb_dev_user
--

ALTER SEQUENCE public.testtax_id_seq OWNED BY public.testtax.id;


--
-- Name: userpermissions; Type: TABLE; Schema: public; Owner: crb_dev_user
--

CREATE TABLE public.userpermissions (
    id integer NOT NULL,
    permission_id integer,
    role_id integer
);


ALTER TABLE public.userpermissions OWNER TO crb_dev_user;

--
-- Name: userpermissions_id_seq; Type: SEQUENCE; Schema: public; Owner: crb_dev_user
--

CREATE SEQUENCE public.userpermissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.userpermissions_id_seq OWNER TO crb_dev_user;

--
-- Name: userpermissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: crb_dev_user
--

ALTER SEQUENCE public.userpermissions_id_seq OWNED BY public.userpermissions.id;


--
-- Name: booking_status id; Type: DEFAULT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.booking_status ALTER COLUMN id SET DEFAULT nextval('public.booking_status_id_seq'::regclass);


--
-- Name: crbm_aminities amenityid; Type: DEFAULT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbm_aminities ALTER COLUMN amenityid SET DEFAULT nextval('public.crbm_aminities_amenityid_seq'::regclass);


--
-- Name: crbm_notification_type notification_type_id; Type: DEFAULT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbm_notification_type ALTER COLUMN notification_type_id SET DEFAULT nextval('public.crbm_notification_type_notification_type_id_seq'::regclass);


--
-- Name: crbm_payment_statuses statusid; Type: DEFAULT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbm_payment_statuses ALTER COLUMN statusid SET DEFAULT nextval('public.crbm_payment_statuses_statusid_seq'::regclass);


--
-- Name: crbm_roomservice room_service_id; Type: DEFAULT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbm_roomservice ALTER COLUMN room_service_id SET DEFAULT nextval('public.crbm_roomservice_room_service_id_seq'::regclass);


--
-- Name: crbm_subscription_features feature_id; Type: DEFAULT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbm_subscription_features ALTER COLUMN feature_id SET DEFAULT nextval('public.crbm_subscription_features_feature_id_seq'::regclass);


--
-- Name: crbm_subscription_plans plan_id; Type: DEFAULT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbm_subscription_plans ALTER COLUMN plan_id SET DEFAULT nextval('public.crbm_subscription_plans_plan_id_seq'::regclass);


--
-- Name: crbm_tax_info tax_id; Type: DEFAULT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbm_tax_info ALTER COLUMN tax_id SET DEFAULT nextval('public.crbm_tax_info_tax_id_seq'::regclass);


--
-- Name: crbm_user_status status_id; Type: DEFAULT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbm_user_status ALTER COLUMN status_id SET DEFAULT nextval('public.crbm_user_status_status_id_seq'::regclass);


--
-- Name: crbt_bookings booking_id; Type: DEFAULT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbt_bookings ALTER COLUMN booking_id SET DEFAULT nextval('public.crbt_bookings_booking_id_seq'::regclass);


--
-- Name: crbt_buildings building_id; Type: DEFAULT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbt_buildings ALTER COLUMN building_id SET DEFAULT nextval('public.crbt_buildings_building_id_seq'::regclass);


--
-- Name: crbt_companytimings companytimings_id; Type: DEFAULT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbt_companytimings ALTER COLUMN companytimings_id SET DEFAULT nextval('public.crbt_companytimings_companytimings_id_seq'::regclass);


--
-- Name: crbt_departments department_id; Type: DEFAULT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbt_departments ALTER COLUMN department_id SET DEFAULT nextval('public.crbt_departments_department_id_seq'::regclass);


--
-- Name: crbt_designations designation_id; Type: DEFAULT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbt_designations ALTER COLUMN designation_id SET DEFAULT nextval('public.crbt_designations_designation_id_seq'::regclass);


--
-- Name: crbt_floors floor_id; Type: DEFAULT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbt_floors ALTER COLUMN floor_id SET DEFAULT nextval('public.crbt_floors_floor_id_seq'::regclass);


--
-- Name: crbt_locations location_id; Type: DEFAULT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbt_locations ALTER COLUMN location_id SET DEFAULT nextval('public.crbt_locations_location_id_seq'::regclass);


--
-- Name: crbt_notifications notificationid; Type: DEFAULT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbt_notifications ALTER COLUMN notificationid SET DEFAULT nextval('public.crbt_notifications_notificationid_seq'::regclass);


--
-- Name: crbt_payment payment_id; Type: DEFAULT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbt_payment ALTER COLUMN payment_id SET DEFAULT nextval('public.crbt_payment_payment_id_seq'::regclass);


--
-- Name: crbt_queue queueid; Type: DEFAULT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbt_queue ALTER COLUMN queueid SET DEFAULT nextval('public.crbt_queue_queueid_seq'::regclass);


--
-- Name: crbt_roles role_id; Type: DEFAULT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbt_roles ALTER COLUMN role_id SET DEFAULT nextval('public.crbt_roles_role_id_seq'::regclass);


--
-- Name: crbt_rooms room_id; Type: DEFAULT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbt_rooms ALTER COLUMN room_id SET DEFAULT nextval('public.crbt_rooms_room_id_seq'::regclass);


--
-- Name: crbt_sms_credits id; Type: DEFAULT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbt_sms_credits ALTER COLUMN id SET DEFAULT nextval('public.crbt_sms_credits_id_seq'::regclass);


--
-- Name: crbt_sms_credits_usage id; Type: DEFAULT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbt_sms_credits_usage ALTER COLUMN id SET DEFAULT nextval('public.crbt_sms_credits_usage_id_seq'::regclass);


--
-- Name: crbt_smtp_settings setting_id; Type: DEFAULT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbt_smtp_settings ALTER COLUMN setting_id SET DEFAULT nextval('public.crbt_smtp_settings_setting_id_seq'::regclass);


--
-- Name: crbt_system_users system_user_id; Type: DEFAULT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbt_system_users ALTER COLUMN system_user_id SET DEFAULT nextval('public.crbt_system_users_system_user_id_seq'::regclass);


--
-- Name: crbt_user_subscription subscriptionid; Type: DEFAULT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbt_user_subscription ALTER COLUMN subscriptionid SET DEFAULT nextval('public.crbt_user_subsricption_subscriptionid_seq'::regclass);


--
-- Name: crbt_users user_id; Type: DEFAULT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbt_users ALTER COLUMN user_id SET DEFAULT nextval('public.crbt_users_user_id_seq'::regclass);


--
-- Name: payment_statuses id; Type: DEFAULT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.payment_statuses ALTER COLUMN id SET DEFAULT nextval('public.payment_statuses_id_seq'::regclass);


--
-- Name: permissions id; Type: DEFAULT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);


--
-- Name: tax id; Type: DEFAULT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.tax ALTER COLUMN id SET DEFAULT nextval('public.tax_id_seq'::regclass);


--
-- Name: testtax id; Type: DEFAULT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.testtax ALTER COLUMN id SET DEFAULT nextval('public.testtax_id_seq'::regclass);


--
-- Name: userpermissions id; Type: DEFAULT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.userpermissions ALTER COLUMN id SET DEFAULT nextval('public.userpermissions_id_seq'::regclass);


--
-- Data for Name: SequelizeMeta; Type: TABLE DATA; Schema: public; Owner: crb_dev_user
--

COPY public."SequelizeMeta" (name) FROM stdin;
alterscript_sample.js
crbm_aminities.js
crbm_notification_type.js
crbm_payment_status.js
crbm_roomservice.js
crbm_subscription_features.js
crbm_subscription_plans.js
crbm_tax_info.js
crbm_user_status.js
crbt_bookings.js
crbt_buildings.js
crbt_companytimings.js
crbt_departments.js
crbt_designations.js
crbt_floors.js
crbt_locations.js
crbt_notifications.js
crbt_participants.js
crbt_payment.js
crbt_queue.js
crbt_roles.js
crbt_room_aminities.js
crbt_rooms.js
crbt_setting.js
crbt_sms_credits.js
crbt_sms_credits_usage.js
crbt_smtp_settings.js
crbt_system_users.js
crbt_user_subscription.js
crbt_users.js
permissions.js
userpermissions.js
tax.js
20230825070210-testtax.js
20230829064138-crbm_aminities.js
20230829064228-crbm_notification_type.js
20230829064501-crbm_payment_statuses.js
20230829064550-crbm_roomservice.js
20230829064621-crbm_subscription_features.js
20230829064648-crbm_subscription_plans.js
20230829065902-crbm_tax_info.js
20230829070606-crbm_user_status.js
20230829070923-crbt_bookings.js
20230829070956-crbt_buildings.js
20230829072316-crbt_companytimings.js
20230829072355-crbt_departments.js
20230829072913-crbt_designations.js
20230829073008-crbt_floors.js
20230829073056-crbt_locations.js
20230829073150-crbt_notifications.js
20230829073226-crbt_participants.js
20230829073449-crbt_payment.js
20230829073519-crbt_queue.js
20230829073639-crbt_roles.js
20230829073716-crbt_room_amenities.js
20230829073809-crbt_rooms.js
20230829073856-crbt_setting.js
20230829073931-crbt_sms_credits_usage.js
20230829074011-crbt_sms_credits.js
20230829074045-crbt_smtp_settings.js
20230829074114-crbt_system_users.js
20230829074145-crbt_user_subscription.js
20230829074258-crbt_users.js
20230829074320-permissions.js
20230829074344-tax.js
20230829074407-userpermissions.js
20230829085942-alter_crbt_buildings.js
20230829091136-alter_crbt_departments.js
20230829091231-alter_crbt_designations.js
20230829091334-alter_crbm_aminities.js
20230829091425-alter_crbt_locations.js
20230829091523-alter_crbm_roomservice.js
20230829091609-alter_crbt_roles.js
20230829091705-alter_crbt_rooms.js
20230829115528-alter_crbt_floors.js
20230829122318-drop_constraint.js
20240123050535-crbt_users.js
20240202102438-permissions_active.js
20240130094728-crbt_users_isManager.js
20240207084524-booking_status.js
20240208101251-booing_status_type_change.js
\.


--
-- Data for Name: booking_status; Type: TABLE DATA; Schema: public; Owner: crb_dev_user
--

COPY public.booking_status (id, status) FROM stdin;
1	Requested
2	Approved
3	Rejected
4	Cancel
\.


--
-- Data for Name: crbm_aminities; Type: TABLE DATA; Schema: public; Owner: crb_dev_user
--

COPY public.crbm_aminities (amenityid, amenityname, thumbnail_key, status, created_by, updated_by, created_at, updated_at, aminity_id) FROM stdin;
127	Demo amenity	1692884192442.jpg	t	35	35	2023-08-24 12:00:27.02611+05:30	2023-08-24 19:06:32.516+05:30	127
113	Keypad	1692943706910.jpg	f	35	35	2023-08-04 16:04:14.154647+05:30	2023-08-25 11:38:26.987+05:30	113
101	WaterBottle	1691044381118.jpg	f	35	35	2023-08-03 11:52:21.346222+05:30	2023-08-03 12:03:01.256+05:30	101
102	Desktop	1691043777378.jpg	f	35	\N	2023-08-03 11:52:57.453491+05:30	2023-08-03 11:52:57.453491+05:30	102
103	Mouse	1691043796820.jpg	f	35	\N	2023-08-03 11:53:16.893979+05:30	2023-08-03 11:53:16.893979+05:30	103
114	Table	1692338736594.jpg	f	35	35	2023-08-04 16:47:32.110514+05:30	2023-08-18 11:35:36.684+05:30	114
108	Pen	1691127664099.jpg	f	35	35	2023-08-04 10:41:23.09481+05:30	2023-08-04 11:11:04.137+05:30	108
104	WhiteBoard	1691129522871.jpg	f	35	35	2023-08-03 11:54:04.287456+05:30	2023-08-04 11:42:02.898+05:30	104
99	Tea	1691130526095.jpg	f	35	35	2023-08-03 11:51:19.599283+05:30	2023-08-04 11:58:46.132+05:30	99
110	Notebook	1691127880496.jpg	f	35	35	2023-08-04 10:57:55.318281+05:30	2023-08-04 11:14:40.557+05:30	110
98	Coffee	1691139246369.jpg	f	35	35	2023-08-03 11:50:56.894198+05:30	2023-08-04 14:24:06.429+05:30	98
100	Projector	1691140594223.jpg	t	35	35	2023-08-03 11:51:41.475552+05:30	2023-08-04 14:46:34.466+05:30	100
107	AC Remote	1691732427126.jpg	f	35	35	2023-08-03 11:56:41.612098+05:30	2023-08-11 11:10:27.168+05:30	107
115	Tablet	1691732730991.jpg	t	35	35	2023-08-08 11:30:05.464909+05:30	2023-08-11 11:15:31.131+05:30	115
112	Projector test	1691147010067.jpg	f	35	35	2023-08-04 15:59:20.329301+05:30	2023-08-04 16:33:30.225+05:30	112
109	wifi	1691147649879.jpg	f	35	35	2023-08-04 10:56:40.599619+05:30	2023-08-04 16:44:09.926+05:30	109
105	Marker	1691382589921.jpg	t	35	35	2023-08-03 11:56:07.643006+05:30	2023-08-07 09:59:49.961+05:30	105
106	AC	1691382606088.jpg	t	35	35	2023-08-03 11:56:21.444118+05:30	2023-08-07 10:00:06.132+05:30	106
111	Small table	1691731896397.jpg	t	35	35	2023-08-04 11:00:50.141838+05:30	2023-08-25 16:59:22.627+05:30	111
128	Demo	1692963209383.jpg	t	35	35	2023-08-24 12:00:49.645408+05:30	2023-08-25 17:03:29.365+05:30	128
129	Projectorr	1692963319989.jpg	t	35	\N	2023-08-25 17:05:20.044805+05:30	2023-08-25 17:05:20.044805+05:30	129
124	demo	1692945670942.jpg	t	35	35	2023-08-22 14:30:50.331874+05:30	2023-08-25 18:07:30.57+05:30	124
117	Milk	1692253469606.jpg	f	35	35	2023-08-09 12:42:28.354129+05:30	2023-08-17 11:54:29.673+05:30	117
126	All Amenitie	1692878745618.jpg	t	35	35	2023-08-24 11:42:20.777672+05:30	2023-08-29 18:05:49.665+05:30	126
116	speakers	1692253483868.jpg	t	35	35	2023-08-08 11:32:01.705769+05:30	2023-08-17 11:54:43.935+05:30	116
125	Tables	1692944662117.jpg	t	35	35	2023-08-24 10:05:16.009681+05:30	2023-08-29 18:05:58.841+05:30	125
123	Milk shake	1692616063558.jpg	t	35	35	2023-08-21 16:37:14.542865+05:30	2023-08-21 16:37:43.624+05:30	123
121	Fan	1692620751664.jpg	t	35	35	2023-08-21 12:44:51.61022+05:30	2023-08-21 17:55:51.696+05:30	121
122	Camera	1692677374961.jpg	t	35	35	2023-08-21 13:30:26.868297+05:30	2023-08-22 09:39:35.004+05:30	122
118	Laptop Charger	1692677411368.jpg	t	35	35	2023-08-10 16:05:33.575059+05:30	2023-08-22 09:40:11.418+05:30	118
119	Bluetooth	1692677430879.jpg	t	35	35	2023-08-11 10:49:44.422235+05:30	2023-08-22 09:40:30.936+05:30	119
120	Chairs	1692677466388.jpg	t	35	35	2023-08-11 11:23:40.021948+05:30	2023-08-22 09:41:06.418+05:30	120
130	Demovc	1702617694595.jpg	t	70	\N	2023-12-15 10:51:35.781538+05:30	2023-12-15 10:51:35.781538+05:30	1
131	dvd	1703067628162.jpg	t	70	\N	2023-12-20 15:50:28.675307+05:30	2023-12-20 15:50:28.675307+05:30	2
132	tv	1703068322238.jpg	t	70	70	2023-12-20 16:02:02.84913+05:30	2024-02-19 15:16:22.344+05:30	3
\.


--
-- Data for Name: crbm_notification_type; Type: TABLE DATA; Schema: public; Owner: crb_dev_user
--

COPY public.crbm_notification_type (notification_type_id, notification_type_name, status, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: crbm_payment_statuses; Type: TABLE DATA; Schema: public; Owner: crb_dev_user
--

COPY public.crbm_payment_statuses (statusid, statusname, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: crbm_roomservice; Type: TABLE DATA; Schema: public; Owner: crb_dev_user
--

COPY public.crbm_roomservice (room_service_id, room_service_name, service_icon, status, created_by, created_at, updated_by, updated_at, serviceid) FROM stdin;
35	projector	1692945859793.jpg	t	35	2023-08-08 11:45:22.021	35	2023-08-25 06:44:19.839	35
43	cool water	1692945755675.jpg	f	35	2023-08-24 06:14:18.401	35	2023-08-25 11:38:26.581	43
4	Teaa	1690892912353.jpg	f	35	2023-08-01 12:28:32.417	\N	\N	4
17	efg	1690965979050.jpg	t	35	2023-08-02 08:46:19.169	35	2023-08-25 11:39:03.514	17
9	ghvh	1690955912999.jpg	f	35	2023-08-02 05:58:33.098	\N	\N	9
11	Black Water	1690960120294.jpg	t	38	2023-08-02 07:08:40.411	\N	\N	11
12	gfghhhh	1690965287727.jpg	f	35	2023-08-02 08:34:47.875	\N	\N	12
16	def	1690965926017.jpg	t	35	2023-08-02 08:45:26.108	35	2023-08-25 11:39:08.137	16
15	pqr	1690965893846.jpg	t	35	2023-08-02 08:44:53.877	35	2023-08-25 11:39:12.539	15
14	xyz	1690965737853.jpg	t	35	2023-08-02 08:42:17.91	35	2023-08-25 11:39:19.079	14
8	Cold coffee	1690954905465.jpg	f	35	2023-08-02 05:41:45.589	\N	\N	8
10	ghvhhg	1690955935449.jpg	f	35	2023-08-02 05:58:55.585	\N	\N	10
13	abc	1690965681145.jpg	f	35	2023-08-02 08:41:21.222	\N	\N	13
3	Milk	1690970229605.jpg	f	35	2023-08-01 07:08:21.142	35	2023-08-02 09:57:09.576	3
5	water	1690892919952.jpg	f	35	2023-08-01 12:28:40.051	\N	\N	5
6	green tea	1690893227394.jpg	f	35	2023-08-01 12:33:47.448	\N	\N	6
7	black coffee	1690950484946.jpg	f	35	2023-08-02 04:28:05.011	\N	\N	7
23	coffee	1692963600882.jpg	t	35	2023-08-02 10:16:57.06	35	2023-08-25 11:40:00.851	23
24	water bottles	1690972566179.jpg	f	35	2023-08-02 10:35:44.417	35	2023-08-02 10:36:06.148	24
27	edit check	1691065215572.jpg	f	35	2023-08-03 12:19:55.329	35	2023-08-03 12:20:15.542	27
34	wifi	1691647791417.jpg	t	35	2023-08-08 11:44:36.85	35	2023-08-10 06:09:51.398	34
25	Water Botle	1691067065428.jpg	f	35	2023-08-03 12:13:21.712	35	2023-08-03 12:51:05.396	25
21	No Service	1692963621287.jpg	t	35	2023-08-02 10:14:29.501	35	2023-08-25 11:40:25.852	21
26	demo	1691065173764.jpg	f	35	2023-08-03 12:19:33.839	\N	\N	26
22	Water	1690971298635.jpg	t	35	2023-08-02 10:14:58.677	35	2023-08-25 11:40:29.926	22
32	AC	1691488589832.jpg	f	35	2023-08-08 09:56:29.901	\N	\N	32
33	Ac	1691488629548.jpg	f	35	2023-08-08 09:57:09.614	\N	\N	33
20	badam milk	1692963641507.jpg	t	35	2023-08-02 10:08:04.592	35	2023-08-25 11:40:41.486	20
19	no service	1692963660440.jpg	t	35	2023-08-02 09:58:35.082	35	2023-08-25 11:41:00.41	19
40	Chairs	1692963688939.jpg	t	35	2023-08-10 06:46:24.6	35	2023-08-25 11:41:28.917	40
30	projectorss	1691665908533.jpg	t	35	2023-08-04 05:00:52.534	35	2023-08-10 11:11:48.579	30
38	Laptop	1691665978457.jpg	f	35	2023-08-09 10:27:27.086	35	2023-08-10 11:12:58.549	38
37	Tissues	1691665992340.jpg	t	35	2023-08-09 09:31:22.195	35	2023-08-10 11:13:12.397	37
36	Waterrrrrr	1691666004840.jpg	t	35	2023-08-09 09:30:01.181	35	2023-08-10 11:13:24.969	36
29	projectors	1691641489137.jpg	f	35	2023-08-04 05:00:41.43	35	2023-08-10 04:24:49.111	29
39	Remote	1691665965212.jpg	f	35	2023-08-10 05:38:15.904	35	2023-08-10 11:12:45.238	39
2	gjrbgug	1692154760007.jpg	t	35	2023-08-01 07:07:40.002	35	2023-08-16 02:59:20.063	2
1	Coffee	1692154780072.jpg	t	35	2023-08-01 07:06:29.559	35	2023-08-16 02:59:40.157	1
31	Projector	1691488569117.jpg	f	35	2023-08-08 09:56:09.169	\N	\N	31
42	Test	1692857793620.jpg	t	35	2023-08-10 11:20:14.792	35	2023-08-24 06:16:33.648	42
28	add new	1692857827671.jpg	t	35	2023-08-03 12:29:25.745	35	2023-08-24 06:17:07.88	28
18	dgsdgdf	1692857928544.jpg	t	35	2023-08-02 09:42:25.405	35	2023-08-24 06:18:48.567	18
41	Demoo	1692861538551.jpg	t	35	2023-08-10 11:14:32.575	35	2023-08-24 07:18:58.676	41
44	waters	1705489938637.jpg	t	70	2024-01-17 11:12:19.136	70	2024-02-20 04:41:42.132	77
45	Groot	1708405767471.jpg	t	70	2024-02-20 05:09:28.614	70	2024-02-20 05:44:34.289	78
46	Iron man	1708408306960.jpg	t	70	2024-02-20 05:51:47.616	70	2024-02-20 05:52:13.272	79
\.


--
-- Data for Name: crbm_subscription_features; Type: TABLE DATA; Schema: public; Owner: crb_dev_user
--

COPY public.crbm_subscription_features (feature_id, plan_id, userlimit, location_limit, building_limit, booking_limit, created_by, updated_by, created_at, updated_at, status) FROM stdin;
1	1	500	900	100	5	44	44	2023-06-14 16:17:27.254+05:30	2023-06-15 14:24:49.218+05:30	t
3	2	10	50	20	50	44	\N	2023-06-16 11:44:44.084+05:30	2023-06-16 11:44:44.963923+05:30	t
2	2	5000	900	1000	50	44	44	2023-06-16 11:42:10.523+05:30	2023-06-16 12:01:36.917+05:30	f
5	5	5000	900	1000	50	35	35	2023-06-16 15:32:21.7+05:30	2023-06-16 15:35:57.639+05:30	f
12	14	5	5	5	5	57	\N	2023-06-19 15:32:49.929+05:30	2023-06-19 15:32:49.930757+05:30	f
18	19	7	9	8	5	57	\N	2023-06-19 15:41:01.151+05:30	2023-06-19 15:41:01.152574+05:30	f
20	23	7	9	8	5	57	\N	2023-06-19 16:16:08.029+05:30	2023-06-19 16:16:08.030343+05:30	t
6	6	100	500	200	500	35	\N	2023-06-20 16:20:48.166+05:30	2023-06-20 16:20:48.167334+05:30	t
\.


--
-- Data for Name: crbm_subscription_plans; Type: TABLE DATA; Schema: public; Owner: crb_dev_user
--

COPY public.crbm_subscription_plans (plan_id, plan_name, description, price, status, tenure, created_by, updated_by, created_at, updated_at) FROM stdin;
1	silverr	Example Description silver	699.99	t	2	1111	111	2023-06-06 17:20:29.311719+05:30	2023-06-06 17:24:27.11+05:30
27	gold	Example Description gold	999.99	t	4	57	\N	2023-06-20 12:47:06.685697+05:30	2023-06-20 12:47:06.685697+05:30
29	Basic	Trail-Plan	0.00	f	10	35	\N	2023-07-17 12:47:28.989014+05:30	2023-07-17 12:47:28.989014+05:30
30	Free	Trail-Plan	0.00	t	10	35	\N	2023-07-17 12:57:34.760147+05:30	2023-07-17 12:57:34.760147+05:30
31	Basic Plan	Basic Plan	599.99	t	3	35	\N	2023-07-17 12:58:44.456006+05:30	2023-07-17 12:58:44.456006+05:30
4	silver plan	Example Description silver	699.99	t	2	38	\N	2023-06-13 12:24:09.046571+05:30	2023-06-13 12:24:09.046571+05:30
32	Super	Super Plan	999.99	t	6	35	\N	2023-07-17 12:59:13.472658+05:30	2023-07-17 12:59:13.472658+05:30
33	Premier	Premier Plan	9999.99	t	1	35	\N	2023-07-17 12:59:50.433673+05:30	2023-07-17 12:59:50.433673+05:30
2	daimond plan	example descriptio	799.00	f	2	38	38	2023-06-12 10:45:46.121791+05:30	2023-06-13 15:30:00.32+05:30
3	daimond plannn	examples description of daimond	799.00	t	3	38	38	2023-06-12 18:15:24.56111+05:30	2023-06-12 18:15:24.56111+05:30
5	platinum	examples description of platinum	989.00	f	4	38	38	2023-06-16 10:49:44.306865+05:30	2023-06-16 10:49:44.306865+05:30
6	silver	Example Description silver	699.99	t	2	57	\N	2023-06-19 14:28:33.273492+05:30	2023-06-19 14:28:33.273492+05:30
7	sislver	Example Description silver	699.99	t	2	57	\N	2023-06-19 14:29:16.977686+05:30	2023-06-19 14:29:16.977686+05:30
8	slver		699.99	t	2	57	\N	2023-06-19 14:30:42.989376+05:30	2023-06-19 14:30:42.989376+05:30
9	silveri	Example Description silver	699.99	f	2	57	\N	2023-06-19 14:36:43.752337+05:30	2023-06-19 14:36:43.752337+05:30
19	platinumm	Example Description platinumm	999.99	t	4	57	\N	2023-06-20 12:36:01.075808+05:30	2023-06-20 12:36:01.075808+05:30
20	platinummm	Example Description platinumm	999.99	t	4	38	\N	2023-06-20 12:37:40.671216+05:30	2023-06-20 12:37:40.671216+05:30
\.


--
-- Data for Name: crbm_tax_info; Type: TABLE DATA; Schema: public; Owner: crb_dev_user
--

COPY public.crbm_tax_info (tax_id, tax_name, description, taxrate, taxtype, status, created_by, updated_by, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: crbm_user_status; Type: TABLE DATA; Schema: public; Owner: crb_dev_user
--

COPY public.crbm_user_status (status_id, status_name, created_by, updated_by, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: crbt_bookings; Type: TABLE DATA; Schema: public; Owner: crb_dev_user
--

COPY public.crbt_bookings (booking_id, room_id, user_id, system_user_id, title_of_meeting, starttime, endtime, repeat, description, status, created_by, updated_by, created_at, updated_at, location_id, building_id, floor_id, booking_date, duration, room_capacity, room_service_id, booking_end_date, reschedule_status, days, booking_status) FROM stdin;
13	43	52	70	vacation-meet	14:50:12	14:50:12	Mon-Fri	vac	t	52	\N	2024-02-13 14:51:08.865114+05:30	2024-02-13 14:51:08.865114+05:30	3	6	20	2024-02-13	30 mins	10	\N	2024-02-13	\N	{"friday": 5, "monday": 1, "tuesday": 2, "thursday": 4, "wednesday": 3}	1
9	66	52	70	React-meeting	13:01:22	13:01:22	Does Not Repeat	react	f	52	\N	2024-02-13 13:02:06.109485+05:30	2024-02-13 13:05:19.015+05:30	4	10	38	2024-02-13	30M	10	\N	2024-02-13	\N	[]	1
14	66	52	70	daily standup call for daily demo testing	12:00:00	13:30:00	Mon-Fri	Nothing	t	52	52	2024-02-13 14:58:58.748066+05:30	2024-02-13 16:37:32.093+05:30	4	10	38	2023-08-17	45 mins	30	1	2023-08-31	t	{"friday": 5, "monday": 1, "tuesday": 2, "thursday": 4, "wednesday": 3}	3
12	66	52	70	team out	14:48:17	14:48:17	Mon-Fri	team out	t	52	\N	2024-02-13 14:48:56.602683+05:30	2024-02-13 14:48:56.602683+05:30	4	10	38	2024-02-13	30M	10	\N	2024-02-13	\N	{"friday": 5, "monday": 1, "tuesday": 2, "thursday": 4, "wednesday": 3}	1
16	66	52	70	daily standup call for daily demo testing	12:00:00	13:30:00	Mon-Fri	Nothing	t	52	52	2024-02-15 11:18:03.592477+05:30	2024-02-15 11:18:03.592477+05:30	4	10	38	2023-08-17	45 mins	30	1	2023-08-31	t	{"friday": 5, "monday": 1, "tuesday": 2, "thursday": 4, "wednesday": 3}	1
4	32	52	70	CRB-Meeting	16:08:59	16:08:59	Weekly	Regarding CRB	f	52	52	2024-02-08 16:09:47.58147+05:30	2024-02-13 12:45:54.971+05:30	2	4	14	2024-02-08		10	\N	2024-02-08	\N	[]	1
10	66	52	70	fss-meeting	14:32:56	14:32:56	Does Not Repeat	fss	t	52	52	2024-02-13 14:33:41.522631+05:30	2024-02-13 16:37:30.674+05:30	4	10	38	2024-02-13		10	\N	2024-02-13	\N	[]	2
6	66	52	70	MM-Meeting	16:13:23	16:13:23	Weekly	MM meeting	t	52	52	2024-02-08 16:14:22.904318+05:30	2024-02-13 16:52:44.251+05:30	4	10	38	2024-02-08		10	\N	2024-02-08	\N	[]	3
15	66	52	70	daily standup call for daily demo testing	14:00:00	15:30:00	Mon-Fri	Nothing	t	52	52	2024-02-13 15:02:07.126792+05:30	2024-02-15 12:09:02.686+05:30	4	10	38	2023-08-17	45 mins	30	1	2023-08-31	t	{"friday": 5, "monday": 1, "tuesday": 2, "thursday": 4, "wednesday": 3}	4
5	20	52	70	ROS-Meeting	16:10:07	16:10:07	Weekly	Regarding ros	t	52	52	2024-02-08 16:10:55.787074+05:30	2024-02-23 13:08:48.464+05:30	2	3	9	2024-02-10		10	\N	2024-02-08	\N	[]	2
8	24	52	70	AWS_Session	16:59:43	17:00:43	Mon-Fri	aws	t	52	52	2024-02-13 12:57:26.035199+05:30	2024-02-23 13:08:50.816+05:30	2	3	10	2024-02-13	30M	10	\N	2024-02-29	\N	{"friday": 5, "monday": 1, "tuesday": 2, "thursday": 4, "wednesday": 3}	3
7	31	52	70	Skill-Up Meeting	17:00:44	18:00:44	Mon-Fri	Skill up	f	52	52	2024-02-13 12:54:24.515059+05:30	2024-02-23 13:08:54.74+05:30	2	4	14	2024-02-13		10	\N	2024-02-29	\N	{"friday": 5, "monday": 1, "tuesday": 2, "thursday": 4, "wednesday": 3}	4
11	9	52	70	sales-meeting	14:44:37	14:44:37	Weekly	sales	t	52	52	2024-02-13 14:46:30.493755+05:30	2024-02-26 09:44:43.619+05:30	1	1	3	2024-02-13	30M	10	\N	2024-02-13	\N	[]	3
\.


--
-- Data for Name: crbt_buildings; Type: TABLE DATA; Schema: public; Owner: crb_dev_user
--

COPY public.crbt_buildings (building_id, building_name, location_id, address, system_user_id, created_by, updated_by, created_at, updated_at, status, pincode, buildingid) FROM stdin;
1	fss	1	panjagutta metro station	70	70	\N	2024-01-18 12:01:34.762559+05:30	2024-01-18 12:01:34.762559+05:30	t	587698	1
2	pristage	1	KPHB	70	70	\N	2024-01-18 12:19:52.231946+05:30	2024-01-18 12:19:52.231946+05:30	t	587697	2
3	talking tree	2	Koramangala	70	70	\N	2024-01-18 12:25:37.079688+05:30	2024-01-18 12:25:37.079688+05:30	t	560029	3
4	magikmat	2	Electronic city	70	70	\N	2024-01-18 12:29:32.386896+05:30	2024-01-18 12:29:32.386896+05:30	t	560069	4
6	One Hour developer	3	leela mahal	70	70	\N	2024-01-18 12:46:04.212247+05:30	2024-01-18 12:46:04.212247+05:30	t	517196	7
12	gfdf	5	add	70	70	\N	2024-01-22 16:20:25.290804+05:30	2024-01-22 16:20:25.290804+05:30	t	587692	10
14	lili	4	241	70	70	\N	2024-02-19 09:49:33.566976+05:30	2024-02-19 09:49:33.566976+05:30	t	606111	52
15	jp	4	241	70	70	\N	2024-02-19 09:51:49.739654+05:30	2024-02-19 09:51:49.739654+05:30	t	606111	53
16	liyashree	4	241	70	70	\N	2024-02-19 09:54:47.793449+05:30	2024-02-19 09:54:47.793449+05:30	t	606111	54
10	marketing	1	beside railwaystation	70	70	70	2024-01-18 12:59:21.764998+05:30	2024-01-18 12:59:21.764998+05:30	t	587698	8
11	development	4	bustand opposite	70	70	70	2024-01-18 13:00:12.918057+05:30	2024-01-18 13:00:12.918057+05:30	f	587699	9
13	Sai	5	241	70	70	70	2024-02-08 20:07:00.818341+05:30	2024-02-08 20:07:00.818341+05:30	t	606111	bb
18	liya	5	254	70	70	\N	2024-02-20 15:04:28.520871+05:30	2024-02-20 15:04:28.520871+05:30	t	606106	59
19	zeus	5	145	70	70	\N	2024-02-20 15:21:16.451416+05:30	2024-02-20 15:21:16.451416+05:30	t	14	61
5	ROS	1	Beside Bustand	70	70	70	2024-01-18 12:41:51.794669+05:30	2024-01-18 12:41:51.794669+05:30	t	517194	6
20	zuess	5	524	70	70	\N	2024-02-20 15:23:40.706128+05:30	2024-02-20 15:23:40.706128+05:30	t	57	62
21	los	5	526	70	70	70	2024-02-20 15:28:24.666241+05:30	2024-02-20 15:28:24.666241+05:30	t	546545	66
22	reddy	7	241	70	70	\N	2024-02-21 11:19:06.203385+05:30	2024-02-21 11:19:06.203385+05:30	t	24	12
23	reddypg	7	241	70	70	\N	2024-02-21 11:23:54.528769+05:30	2024-02-21 11:23:54.528769+05:30	t	25	13
24	JpPg	7	adad	70	70	\N	2024-02-21 11:25:08.540254+05:30	2024-02-21 11:25:08.540254+05:30	t	102321	14
17	xap	4	241	70	70	70	2024-02-19 17:27:56.330535+05:30	2024-02-19 17:27:56.330535+05:30	t	606106	li
\.


--
-- Data for Name: crbt_companytimings; Type: TABLE DATA; Schema: public; Owner: crb_dev_user
--

COPY public.crbt_companytimings (companytimings_id, company_name, system_user_id, start_time, end_time, monday, tuesday, wednesday, thursday, friday, saturday, sunday, created_by, updated_by, created_at, updated_at) FROM stdin;
5	federalsoftsystems	35	00:00:00	06:00:00	f	f	t	t	f	f	f	35	\N	2023-08-18 11:48:22.652312+05:30	2023-08-18 11:48:22.652312+05:30
6	fss	70	09:00:00	06:00:00	t	t	t	t	t	f	f	\N	\N	2023-12-11 12:25:31.251458+05:30	2023-12-11 12:25:31.251458+05:30
5	federalsoftsystems	35	00:00:00	06:00:00	f	f	t	t	f	f	f	35	\N	2023-08-18 11:48:22.652312+05:30	2023-08-18 11:48:22.652312+05:30
6	fss	70	09:00:00	06:00:00	t	t	t	t	t	f	f	\N	\N	2023-12-11 12:25:31.251458+05:30	2023-12-11 12:25:31.251458+05:30
5	federalsoftsystems	35	00:00:00	06:00:00	f	f	t	t	f	f	f	35	\N	2023-08-18 11:48:22.652312+05:30	2023-08-18 11:48:22.652312+05:30
6	fss	70	09:00:00	06:00:00	t	t	t	t	t	f	f	\N	\N	2023-12-11 12:25:31.251458+05:30	2023-12-11 12:25:31.251458+05:30
\.


--
-- Data for Name: crbt_departments; Type: TABLE DATA; Schema: public; Owner: crb_dev_user
--

COPY public.crbt_departments (department_id, department_name, system_user_id, status, created_by, updated_by, created_at, updated_at, departmentid) FROM stdin;
195	new departments	35	t	35	35	2023-08-28 12:44:23.852029+05:30	2023-08-29 10:00:58.845+05:30	\N
152	IT	35	t	35	\N	2023-08-03 14:16:29.408493+05:30	2023-08-03 14:16:29.408493+05:30	\N
153	Logistics	35	t	35	\N	2023-08-03 14:16:55.497069+05:30	2023-08-03 14:16:55.497069+05:30	\N
188	Research and Dev	35	t	35	35	2023-08-18 13:43:32.690562+05:30	2023-08-29 10:19:03.383+05:30	\N
190	Managements	35	t	35	35	2023-08-24 12:16:30.274453+05:30	2023-08-29 10:40:40.415+05:30	\N
194	Testing Edit1	35	t	35	35	2023-08-25 10:31:29.828383+05:30	2023-08-29 11:04:40.738+05:30	\N
175	service noww	35	t	35	35	2023-08-17 12:48:03.943878+05:30	2023-08-17 16:43:27.724+05:30	\N
177	deactivate test	35	t	35	\N	2023-08-17 17:11:13.827337+05:30	2023-08-17 17:11:13.827337+05:30	\N
156	Devops	35	t	35	\N	2023-08-04 16:41:29.162725+05:30	2023-08-04 16:41:29.162725+05:30	\N
154	Marketing	35	t	35	35	2023-08-03 14:54:56.908198+05:30	2023-08-08 15:01:56.021+05:30	\N
179	QA	35	t	35	35	2023-08-17 17:17:26.493652+05:30	2023-08-17 17:28:59.112+05:30	\N
191	Admintration	35	t	35	35	2023-08-24 23:39:04.23793+05:30	2023-08-24 23:39:30.075+05:30	\N
155	Administration	35	t	35	35	2023-08-04 15:15:20.195687+05:30	2023-08-10 13:34:14.056+05:30	\N
150	Accounts	35	t	35	35	2023-08-03 13:43:22.002345+05:30	2023-08-10 13:34:22.177+05:30	\N
159	gateway test	61	t	61	\N	2023-08-10 16:55:55.833647+05:30	2023-08-10 16:55:55.833647+05:30	\N
160	gateway testt	61	t	61	\N	2023-08-10 16:56:37.557872+05:30	2023-08-10 16:56:37.557872+05:30	\N
161	gateway new test	61	t	61	\N	2023-08-10 17:03:12.21654+05:30	2023-08-10 17:03:12.21654+05:30	\N
162	gateway new testt	61	t	61	\N	2023-08-10 17:30:37.865382+05:30	2023-08-10 17:30:37.865382+05:30	\N
163	zzz	46	t	46	\N	2023-08-10 17:57:44.249243+05:30	2023-08-10 17:57:44.249243+05:30	\N
180	Quality check	35	t	35	35	2023-08-17 17:18:19.170462+05:30	2023-08-18 09:24:17.622+05:30	\N
149	Human Resource	35	f	35	35	2023-08-03 11:51:02.999824+05:30	2023-08-16 09:46:28.878+05:30	\N
164	augu	46	t	46	\N	2023-08-16 10:53:24.620237+05:30	2023-08-16 10:53:24.620237+05:30	\N
178	new toast check	35	t	35	35	2023-08-17 17:14:37.027577+05:30	2023-08-18 10:39:18.029+05:30	\N
165	aug	35	t	35	\N	2023-08-16 12:09:01.919638+05:30	2023-08-16 12:09:01.919638+05:30	\N
157	Ux team	35	t	35	35	2023-08-04 16:42:39.745835+05:30	2023-08-17 10:35:47.055+05:30	\N
166	gateway new testtt	35	t	35	35	2023-08-16 12:20:44.450064+05:30	2023-08-17 12:27:37.411+05:30	\N
158	saless	35	t	35	35	2023-08-10 11:28:20.095353+05:30	2023-08-17 12:28:03.658+05:30	\N
167	service	35	t	35	\N	2023-08-17 12:28:29.812713+05:30	2023-08-17 12:28:29.812713+05:30	\N
168	services	35	t	35	\N	2023-08-17 12:29:11.017618+05:30	2023-08-17 12:29:11.017618+05:30	\N
151	Sales	35	f	35	35	2023-08-03 13:43:38.299425+05:30	2023-08-10 13:34:19.593+05:30	\N
169	new test	35	t	35	\N	2023-08-17 12:32:57.524514+05:30	2023-08-17 12:32:57.524514+05:30	\N
170	departments	35	t	35	\N	2023-08-17 12:40:22.205298+05:30	2023-08-17 12:40:22.205298+05:30	\N
171	testing	35	t	35	\N	2023-08-17 12:41:14.510817+05:30	2023-08-17 12:41:14.510817+05:30	\N
173	depss	35	t	35	\N	2023-08-17 12:44:56.378619+05:30	2023-08-17 12:44:56.378619+05:30	\N
174	new error	35	t	35	\N	2023-08-17 12:46:41.340034+05:30	2023-08-17 12:46:41.340034+05:30	\N
172	testingss	35	f	35	\N	2023-08-17 12:42:48.609252+05:30	2023-08-17 12:42:48.609252+05:30	\N
183	consulting manager	35	t	35	\N	2023-08-18 11:10:56.785872+05:30	2023-08-18 11:10:56.785872+05:30	\N
184	consultant	35	t	35	\N	2023-08-18 11:12:54.852406+05:30	2023-08-18 11:12:54.852406+05:30	\N
185	service now	35	t	35	\N	2023-08-18 11:14:23.08965+05:30	2023-08-18 11:14:23.08965+05:30	\N
182	Testing Edits	35	f	35	35	2023-08-18 10:33:40.231575+05:30	2023-08-18 11:18:10.959+05:30	\N
181	Demand Managers	35	t	35	35	2023-08-18 09:23:43.852047+05:30	2023-08-18 11:23:03.866+05:30	\N
186	TA	35	t	35	\N	2023-08-18 11:24:35.467014+05:30	2023-08-18 11:24:35.467014+05:30	\N
187	Production team	35	t	35	35	2023-08-18 11:27:27.09986+05:30	2023-08-18 12:29:24.963+05:30	\N
176	toast check	35	f	35	35	2023-08-17 12:55:33.723525+05:30	2023-08-17 16:43:23.029+05:30	\N
189	Medical	35	t	35	35	2023-08-21 13:57:05.652188+05:30	2023-08-21 13:57:18.612+05:30	\N
193	physiotheraphy	35	t	35	35	2023-08-25 10:29:35.142658+05:30	2023-08-29 09:21:28.543+05:30	\N
192	ag	35	t	35	35	2023-08-25 10:29:02.686032+05:30	2023-08-29 09:22:49.653+05:30	\N
196	software	70	t	70	70	2023-12-27 11:50:17.482773+05:30	2023-12-27 12:12:53.209+05:30	1
197	development	70	t	70	70	2023-12-27 12:13:53.936043+05:30	2023-12-27 12:14:07.311+05:30	2
198	test	70	t	70	\N	2024-02-22 11:50:33.456249+05:30	2024-02-22 11:50:33.456249+05:30	3
\.


--
-- Data for Name: crbt_designations; Type: TABLE DATA; Schema: public; Owner: crb_dev_user
--

COPY public.crbt_designations (designation_id, designation_name, system_user_id, active, created_by, updated_by, created_at, updated_at, department_id, designationid) FROM stdin;
154	software	70	t	70	\N	2024-01-17 15:06:00.732634+05:30	\N	1	153
75	FEdeveloper	46	t	46	46	2023-07-26 16:28:59.426614+05:30	2023-08-07 15:00:55.398+05:30	110	75
74	Full StackDeveloper	46	t	46	46	2023-07-26 15:08:51.788212+05:30	2023-08-14 10:27:48.935+05:30	107	74
52	Developere	38	t	38	\N	2023-07-12 17:07:41.606278+05:30	\N	61	52
53	Full Stack Develope	35	t	35	35	2023-07-26 09:19:05.992477+05:30	2023-08-02 14:22:35.873+05:30	62	53
48	Full Stack Developer	35	f	35	\N	2023-06-21 10:29:34.656186+05:30	\N	\N	48
51	Mern Stack	35	f	35	\N	2023-07-11 12:45:35.053189+05:30	\N	\N	51
50	UI Developer	35	f	35	\N	2023-07-11 12:44:33.499374+05:30	\N	\N	50
57	koimkl	35	t	35	35	2023-07-26 10:19:25.933778+05:30	2023-08-02 14:22:50.008+05:30	63	57
98	BA	35	t	35	35	2023-07-28 17:44:18.050508+05:30	2023-08-02 14:23:04.167+05:30	137	98
16	ux6 developer	47	f	47	47	2023-06-16 10:38:19.668042+05:30	2023-06-16 10:43:09.53+05:30	\N	16
17	developer	47	t	47	\N	2023-06-16 13:13:08.23165+05:30	\N	\N	17
18	js developer	47	t	47	\N	2023-06-16 13:13:24.920552+05:30	\N	\N	18
19	java developer	47	t	47	\N	2023-06-16 13:13:42.735988+05:30	\N	\N	19
20	Full stack developer	47	t	47	\N	2023-06-16 13:14:08.950634+05:30	\N	\N	20
21	programmer	47	t	47	\N	2023-06-16 13:14:39.879087+05:30	\N	\N	21
22	analyst programmer	47	t	47	\N	2023-06-16 13:15:00.563416+05:30	\N	\N	22
23	programmer analyst	47	t	47	\N	2023-06-16 13:15:52.993815+05:30	\N	\N	23
24	system analyst	47	t	47	\N	2023-06-16 13:16:22.279059+05:30	\N	\N	24
25	senior system analyst	47	t	47	\N	2023-06-16 13:16:46.557709+05:30	\N	\N	25
26	senior system developer	47	t	47	\N	2023-06-16 13:16:59.452428+05:30	\N	\N	26
27	ux2 developer	57	t	57	\N	2023-06-19 11:41:31.417678+05:30	\N	\N	27
28	ux2 devdeloper	57	t	57	\N	2023-06-19 11:42:28.105275+05:30	\N	\N	28
101	designation	35	f	35	35	2023-07-28 19:17:04.640573+05:30	2023-08-01 15:40:08.052+05:30	92	101
114	Manager	35	f	35	35	2023-08-01 17:34:33.119564+05:30	2023-08-03 11:40:35.708+05:30	91	114
33	testing	57	t	57	\N	2023-06-19 12:00:53.386046+05:30	\N	\N	33
34	marketing	57	t	57	\N	2023-06-19 12:07:49.23183+05:30	\N	\N	34
35	marketing1	57	t	57	\N	2023-06-19 12:08:31.761633+05:30	\N	\N	35
62	car	35	f	35	\N	2023-07-26 11:36:38.136639+05:30	\N	70	62
36	marketinddg1	57	t	57	57	2023-06-19 12:08:52.592569+05:30	2023-06-19 12:31:07.337+05:30	\N	36
37	sdfsdf	57	t	57	\N	2023-06-20 10:35:25.654254+05:30	\N	\N	37
38	marketsssing	57	t	57	\N	2023-06-20 10:36:17.668551+05:30	\N	\N	38
39	sdfsdfsdf	57	t	57	57	2023-06-20 10:36:44.170283+05:30	2023-06-20 10:40:44.069+05:30	\N	39
40	aa	47	t	47	\N	2023-06-20 11:20:06.118269+05:30	\N	\N	40
95	hr	35	t	35	35	2023-07-28 15:09:45.354117+05:30	2023-08-02 14:23:39.484+05:30	96	95
41	phpdeveloper	47	f	47	47	2023-06-20 11:58:21.991843+05:30	2023-06-20 11:58:54.949+05:30	\N	41
42	phpdeveloper2	47	t	47	\N	2023-06-20 12:34:57.668501+05:30	\N	\N	42
43	phpdeveloper3	47	t	47	\N	2023-06-20 12:35:36.364633+05:30	\N	\N	43
61	done	35	t	35	35	2023-07-26 11:06:35.703302+05:30	2023-08-02 14:23:48.392+05:30	103	61
44	phpdeveloper4	47	f	47	47	2023-06-20 12:37:23.993241+05:30	2023-06-20 12:37:40.085+05:30	\N	44
46	jsdeveloper	46	f	46	46	2023-06-20 13:13:41.303668+05:30	2023-06-20 13:13:54.718+05:30	\N	46
47	phpdeveloper5	47	t	47	47	2023-06-20 14:14:36.940251+05:30	2023-06-20 14:14:57.109+05:30	\N	47
63	industryyy	35	f	35	35	2023-07-26 11:36:57.861382+05:30	2023-07-26 13:27:26.419+05:30	83	63
67	meghana	35	f	35	\N	2023-07-26 13:26:34.192343+05:30	\N	102	67
64	front end	35	f	35	35	2023-07-26 12:15:23.030073+05:30	2023-07-26 12:20:43.356+05:30	73	64
65	back end	35	f	35	\N	2023-07-26 12:20:06.50374+05:30	\N	82	65
93	finance manager	35	t	35	35	2023-07-28 14:42:49.39067+05:30	2023-08-02 09:56:18.736+05:30	92	93
70	workingggg	35	f	35	35	2023-07-26 14:48:39.704497+05:30	2023-07-26 14:59:16.261+05:30	65	70
71	backenddd	35	f	35	35	2023-07-26 14:48:52.074772+05:30	2023-07-26 15:08:37.703+05:30	67	71
49	Full Developer	35	f	35	35	2023-06-21 12:11:50.839239+05:30	2023-06-21 12:48:49.184+05:30	\N	49
116	associate	35	t	35	35	2023-08-01 17:50:34.752722+05:30	2023-08-01 18:45:10.508+05:30	136	116
45	sql developer	46	f	46	46	2023-06-20 12:56:56.685628+05:30	2023-07-26 10:34:00.54+05:30	\N	45
54	sdfsdfsa	35	f	35	\N	2023-07-26 10:00:23.923624+05:30	\N	65	54
92	front end manager	35	t	35	35	2023-07-28 13:26:31.858364+05:30	2023-08-02 09:57:11.641+05:30	138	92
100	Software enginee	35	f	35	35	2023-07-28 17:46:06.179698+05:30	2023-08-02 12:57:49.221+05:30	95	100
60	conference room booking	35	f	35	\N	2023-07-26 11:05:59.82676+05:30	\N	96	60
59	desig	35	f	35	35	2023-07-26 10:29:37.25894+05:30	2023-07-26 11:28:47.408+05:30	65	59
103	Ceo	35	f	35	35	2023-07-30 11:27:11.83714+05:30	2023-08-02 13:43:26.277+05:30	138	103
69	development	35	f	35	\N	2023-07-26 14:48:18.232891+05:30	\N	63	69
58	business adddnhhhalyst	35	t	35	35	2023-07-26 10:20:32.035933+05:30	2023-08-02 14:12:58.251+05:30	67	58
55	ghghghgffh	35	t	35	35	2023-07-26 10:11:14.948909+05:30	2023-08-02 14:13:26.202+05:30	67	55
99	Sales	35	t	35	35	2023-07-28 17:44:37.437929+05:30	2023-08-02 14:13:57.943+05:30	95	99
80	function	35	f	35	\N	2023-07-26 17:19:36.177401+05:30	\N	74	80
56	asrithaaaa	35	t	35	35	2023-07-26 10:11:59.728378+05:30	2023-08-03 10:35:46.746+05:30	67	56
82	juuiiss	35	f	35	35	2023-07-26 18:23:56.93944+05:30	2023-07-27 14:51:04.902+05:30	63	82
72	mokko	35	f	35	35	2023-07-26 14:49:04.274064+05:30	2023-07-26 23:42:24.437+05:30	74	72
91	klklkl	35	f	35	\N	2023-07-27 19:00:38.159525+05:30	\N	63	91
79	fgh	35	f	35	\N	2023-07-26 16:46:47.575926+05:30	\N	65	79
68	frontendd	35	f	35	35	2023-07-26 14:48:06.707474+05:30	2023-07-26 18:32:03.168+05:30	62	68
83	gh	35	f	35	\N	2023-07-26 18:34:15.730596+05:30	\N	65	83
76	hhhh	35	f	35	35	2023-07-26 16:38:21.125916+05:30	2023-07-27 00:03:15.892+05:30	65	76
77	forntendddd	35	f	35	35	2023-07-26 16:38:58.096973+05:30	2023-07-27 00:15:01.327+05:30	63	77
73	business analystttt	35	f	35	35	2023-07-26 14:49:23.161267+05:30	2023-07-27 00:21:56.312+05:30	75	73
78	gddddddddd	35	f	35	35	2023-07-26 16:45:59.947122+05:30	2023-07-27 00:10:39.418+05:30	74	78
81	assdfgh	35	f	35	35	2023-07-26 17:37:27.550137+05:30	2023-07-27 09:52:14.333+05:30	67	81
84	pakistan	35	f	35	\N	2023-07-27 10:40:23.822737+05:30	\N	65	84
85	russia	35	f	35	\N	2023-07-27 11:14:56.875332+05:30	\N	90	85
87	aaaa	35	f	35	\N	2023-07-27 14:25:26.023254+05:30	\N	85	87
66	test engineer	35	f	35	35	2023-07-26 12:20:32.373412+05:30	2023-07-28 17:40:33.281+05:30	103	66
89	senior manager	35	f	35	35	2023-07-27 16:09:33.162341+05:30	2023-07-28 17:39:35.38+05:30	75	89
86	associate director	35	f	35	35	2023-07-27 11:38:15.579693+05:30	2023-07-28 17:38:33.558+05:30	65	86
90	Associate	35	f	35	35	2023-07-27 17:45:34.505217+05:30	2023-07-28 17:40:54.659+05:30	89	90
88	project manager	35	f	35	35	2023-07-27 16:07:57.63927+05:30	2023-07-28 17:41:24.787+05:30	62	88
102	talent 	35	f	35	\N	2023-07-30 11:08:11.208978+05:30	\N	62	102
104	hr senior lead	35	f	35	35	2023-07-30 11:51:54.446393+05:30	2023-07-30 11:52:32.419+05:30	93	104
105	bnbb	35	f	35	\N	2023-07-30 12:46:24.83472+05:30	\N	99	105
112	adde designationnn	35	f	35	35	2023-08-01 11:26:03.426301+05:30	2023-08-01 11:27:02.903+05:30	97	112
108	dem	35	f	35	35	2023-07-31 14:23:04.702793+05:30	2023-08-01 15:40:51.402+05:30	94	108
107	active	35	f	35	35	2023-07-31 12:11:31.067544+05:30	2023-08-01 16:41:08.998+05:30	94	107
94	front end developerr	35	f	35	35	2023-07-28 15:09:23.448571+05:30	2023-08-01 16:41:32.441+05:30	94	94
111	madiii	35	f	35	35	2023-07-31 15:11:15.049943+05:30	2023-08-01 16:59:33.107+05:30	96	111
110	gooo	35	f	35	35	2023-07-31 15:10:20.853293+05:30	2023-08-01 16:59:48.112+05:30	137	110
115	software engineer	35	t	35	\N	2023-08-01 17:49:59.976653+05:30	\N	136	115
117	IT	35	t	35	\N	2023-08-01 17:51:14.522906+05:30	\N	63	117
118	Human Resource	35	t	35	\N	2023-08-01 17:51:48.631482+05:30	\N	132	118
119	COO	35	t	35	\N	2023-08-01 17:55:10.869843+05:30	\N	98	119
106	hello	35	t	35	35	2023-07-31 12:10:55.718514+05:30	2023-08-01 18:03:52.427+05:30	94	106
113	hr manager	35	t	35	35	2023-08-01 11:27:39.469633+05:30	2023-08-01 18:30:34.429+05:30	96	113
109	fk	35	t	35	35	2023-07-31 15:09:43.693548+05:30	2023-08-01 18:45:47.411+05:30	92	109
97	human resdfdfdfourc	35	t	35	35	2023-07-28 17:43:01.665425+05:30	2023-08-02 13:03:50.077+05:30	137	97
96	back end dsssevhheloper	35	f	35	35	2023-07-28 15:10:28.262003+05:30	2023-08-02 14:11:24.015+05:30	93	96
120	full stack developer	35	t	35	\N	2023-08-02 14:16:49.468084+05:30	\N	15	120
121	federal soft s	35	f	35	35	2023-08-02 14:18:01.142873+05:30	2023-08-02 14:18:32.26+05:30	137	121
122	tester	35	t	35	\N	2023-08-02 17:27:30.198458+05:30	\N	15	122
123	network engineer	35	t	35	\N	2023-08-03 10:31:38.129806+05:30	\N	16	123
150	Talent Acquisition	35	t	35	\N	2023-08-18 16:37:01.742686+05:30	\N	186	150
149	pas	35	t	35	35	2023-08-17 16:55:30.972468+05:30	2023-08-18 16:37:50.259+05:30	175	149
124	New de	35	f	35	35	2023-08-03 10:41:12.081345+05:30	2023-08-03 10:44:17.452+05:30	21	124
146	august	46	t	46	\N	2023-08-16 11:23:26.111788+05:30	\N	164	146
147	sep	35	t	35	35	2023-08-16 12:09:21.885043+05:30	2023-08-18 16:38:05.48+05:30	165	147
145	marketings	35	t	35	35	2023-08-14 09:31:50.693038+05:30	2023-08-18 16:38:13.791+05:30	153	145
140	Full StackDeve55lopekkr	35	t	35	35	2023-08-07 10:31:00.096497+05:30	2023-08-18 16:38:27.325+05:30	157	140
143	Full Stacks development	35	t	35	35	2023-08-07 14:52:31.979491+05:30	2023-08-18 16:38:37.369+05:30	154	143
127	sales executive	35	f	35	35	2023-08-03 14:35:13.446934+05:30	2023-08-07 17:05:02.667+05:30	151	127
144	Full StackDeve55lopekkr	46	t	46	\N	2023-08-10 17:57:56.576453+05:30	\N	163	144
131	jr Accountant	35	t	35	35	2023-08-03 15:29:47.415594+05:30	2023-08-14 08:34:40.647+05:30	157	131
129	IT Coordinator	35	t	35	35	2023-08-03 14:36:33.7774+05:30	2023-08-18 16:40:00.172+05:30	152	129
126	Accounting directo	35	f	35	35	2023-08-03 14:34:28.694044+05:30	2023-08-14 08:52:45.515+05:30	152	126
139	Full StackDevelopekkr	35	t	35	35	2023-08-07 10:26:44.587683+05:30	2023-08-07 12:27:21.657+05:30	157	139
133	devel	35	t	35	35	2023-08-04 10:32:12.829097+05:30	2023-08-18 16:41:24.682+05:30	183	133
148	personal assistant	35	f	35	35	2023-08-16 16:00:19.465211+05:30	2023-08-18 16:38:01.28+05:30	155	148
142	Software Developer	35	t	35	35	2023-08-07 14:52:18.874839+05:30	2023-08-21 11:31:21.36+05:30	156	142
151	augustttd	35	t	35	\N	2023-08-22 09:55:37.832157+05:30	\N	165	151
136	Full StackDeveloper	35	f	35	35	2023-08-04 16:53:13.124501+05:30	2023-08-07 16:17:51.561+05:30	157	136
141	checking	35	t	35	35	2023-08-07 12:36:45.800343+05:30	2023-08-16 15:45:14.223+05:30	156	141
125	Executive	35	f	35	35	2023-08-03 11:56:16.071743+05:30	2023-08-14 09:47:24.834+05:30	157	125
130	procurtment	35	t	35	35	2023-08-03 14:38:08.659177+05:30	2023-08-24 18:52:01.714+05:30	153	130
134	manager	35	t	35	35	2023-08-04 10:33:30.701891+05:30	2023-08-16 16:02:29.217+05:30	151	134
152	Director	35	f	35	35	2023-08-24 12:38:26.938974+05:30	2023-08-24 18:51:21.145+05:30	190	152
155	soft	70	t	70	\N	2024-01-22 16:56:06.42429+05:30	\N	196	1
156	fsaf	70	t	70	\N	2024-01-23 16:12:17.564636+05:30	\N	197	3
\.


--
-- Data for Name: crbt_floors; Type: TABLE DATA; Schema: public; Owner: crb_dev_user
--

COPY public.crbt_floors (floor_id, building_id, location_id, system_user_id, status, created_by, updated_by, created_at, updated_at, floor_name, floorid) FROM stdin;
1	1	1	70	t	70	\N	2024-01-18 13:01:48.690643+05:30	2024-01-18 13:01:48.690643+05:30	first	1
2	1	1	70	t	70	\N	2024-01-18 13:03:16.367349+05:30	2024-01-18 13:03:16.367349+05:30	second	2
3	1	1	70	t	70	\N	2024-01-18 13:03:38.569907+05:30	2024-01-18 13:03:38.569907+05:30	third	3
4	1	1	70	t	70	\N	2024-01-18 13:07:35.559411+05:30	2024-01-18 13:07:35.559411+05:30	4th	4
5	2	1	70	t	70	\N	2024-01-18 14:34:28.462212+05:30	2024-01-18 14:34:28.462212+05:30	first	5
6	2	1	70	t	70	\N	2024-01-18 14:34:57.341469+05:30	2024-01-18 14:34:57.341469+05:30	second	6
7	2	1	70	t	70	\N	2024-01-18 14:35:13.459634+05:30	2024-01-18 14:35:13.459634+05:30	third	7
8	2	1	70	t	70	\N	2024-01-18 14:35:31.426929+05:30	2024-01-18 14:35:31.426929+05:30	4th	8
10	3	2	70	t	70	\N	2024-01-18 14:36:25.318088+05:30	2024-01-18 14:36:25.318088+05:30	second	10
11	3	2	70	t	70	\N	2024-01-18 14:36:47.982867+05:30	2024-01-18 14:36:47.982867+05:30	third	11
12	3	2	70	t	70	\N	2024-01-18 14:37:30.285681+05:30	2024-01-18 14:37:30.285681+05:30	4th	12
13	4	2	70	t	70	\N	2024-01-18 14:37:52.573357+05:30	2024-01-18 14:37:52.573357+05:30	first	13
14	4	2	70	t	70	\N	2024-01-18 14:38:19.338382+05:30	2024-01-18 14:38:19.338382+05:30	second	14
15	4	2	70	t	70	\N	2024-01-18 14:38:54.190232+05:30	2024-01-18 14:38:54.190232+05:30	third	15
16	4	2	70	t	70	\N	2024-01-18 14:39:11.175954+05:30	2024-01-18 14:39:11.175954+05:30	4th	16
17	6	3	70	t	70	\N	2024-01-18 14:42:16.488087+05:30	2024-01-18 14:42:16.488087+05:30	first	17
18	6	3	70	t	70	\N	2024-01-18 14:42:42.607632+05:30	2024-01-18 14:42:42.607632+05:30	second	18
19	6	3	70	t	70	\N	2024-01-18 14:43:16.520066+05:30	2024-01-18 14:43:16.520066+05:30	third	19
20	6	3	70	t	70	\N	2024-01-18 14:43:36.193913+05:30	2024-01-18 14:43:36.193913+05:30	4th	20
21	7	3	70	t	70	\N	2024-01-18 14:56:04.171853+05:30	2024-01-18 14:56:04.171853+05:30	first	21
22	7	3	70	t	70	\N	2024-01-18 14:56:24.984097+05:30	2024-01-18 14:56:24.984097+05:30	2nd	22
23	7	3	70	t	70	\N	2024-01-18 14:56:45.821965+05:30	2024-01-18 14:56:45.821965+05:30	third	23
24	7	3	70	t	70	\N	2024-01-18 14:57:04.002873+05:30	2024-01-18 14:57:04.002873+05:30	4th	24
25	8	4	70	t	70	\N	2024-01-18 14:57:18.150508+05:30	2024-01-18 14:57:18.150508+05:30	first	25
26	8	4	70	t	70	\N	2024-01-18 14:57:34.954001+05:30	2024-01-18 14:57:34.954001+05:30	2nd	26
27	8	4	70	t	70	\N	2024-01-18 14:57:48.790499+05:30	2024-01-18 14:57:48.790499+05:30	third	27
28	8	4	70	t	70	\N	2024-01-18 14:58:02.407777+05:30	2024-01-18 14:58:02.407777+05:30	4th	28
29	9	4	70	t	70	\N	2024-01-18 14:58:20.724761+05:30	2024-01-18 14:58:20.724761+05:30	first	29
30	9	4	70	t	70	\N	2024-01-18 14:58:42.373143+05:30	2024-01-18 14:58:42.373143+05:30	2nd	30
31	9	4	70	t	70	\N	2024-01-18 14:58:59.279255+05:30	2024-01-18 14:58:59.279255+05:30	third	31
32	9	4	70	t	70	\N	2024-01-18 14:59:13.847082+05:30	2024-01-18 14:59:13.847082+05:30	4th	32
34	10	4	70	t	70	\N	2024-01-23 10:49:42.63759+05:30	2024-01-23 10:49:42.63759+05:30	4th	2-12
35	10	4	70	t	70	\N	2024-01-23 10:52:35.388318+05:30	2024-01-23 10:52:35.388318+05:30	4th	2-13
36	10	4	70	t	70	\N	2024-01-23 10:53:03.627321+05:30	2024-01-23 10:53:03.627321+05:30	4th	2-14
37	10	4	70	t	70	\N	2024-01-23 10:53:45.592127+05:30	2024-01-23 10:53:45.592127+05:30	4th	2-15
38	10	4	70	t	70	70	2024-01-23 11:08:00.976173+05:30	2024-01-24 11:51:13.376+05:30	managerrrrrrrrrr	38
9	3	2	70	f	70	\N	2024-01-18 14:35:49.534084+05:30	2024-01-18 14:35:49.534084+05:30	first	9
39	6	3	70	t	70	70	2024-02-22 10:45:22.8175+05:30	2024-02-22 10:46:12.046+05:30	wt	jy
40	3	2	70	t	70	\N	2024-02-23 12:35:16.495346+05:30	2024-02-23 12:35:16.495346+05:30	#$%	$
33	10	4	70	t	70	70	2024-01-22 16:30:00.42899+05:30	2024-02-23 12:36:35.973+05:30	first	1-r1
\.


--
-- Data for Name: crbt_locations; Type: TABLE DATA; Schema: public; Owner: crb_dev_user
--

COPY public.crbt_locations (location_id, location_name, city, state, country, system_user_id, created_by, updated_by, created_at, updated_at, status, locationid) FROM stdin;
1	Hyderabad	Hyderabad	Telengana	India	70	70	\N	2024-01-18 11:41:47.078577+05:30	2024-01-18 11:41:47.078577+05:30	t	1
2	Bangalore	Bangalore	KA	IND	70	70	\N	2024-01-18 11:56:08.602634+05:30	2024-01-18 11:56:08.602634+05:30	t	2
3	Tirupati	Tirupati	AP	IND	70	70	\N	2024-01-18 11:56:55.005121+05:30	2024-01-18 11:56:55.005121+05:30	t	3
4	chennai	chennai	TN	IND	70	70	70	2024-01-18 11:58:28.78796+05:30	2024-01-30 15:57:58.174+05:30	t	4
\.


--
-- Data for Name: crbt_notifications; Type: TABLE DATA; Schema: public; Owner: crb_dev_user
--

COPY public.crbt_notifications (notificationid, user_id, notification_type, message, read, created_at, updated_at, redirect_ref, email_notify_info) FROM stdin;
\.


--
-- Data for Name: crbt_participants; Type: TABLE DATA; Schema: public; Owner: crb_dev_user
--

COPY public.crbt_participants (user_id, booking_id, participants_status) FROM stdin;
2	3	\N
53	10	\N
54	10	\N
53	13	\N
54	13	\N
52	13	\N
15	7	\N
10	14	\N
11	14	\N
10	16	\N
11	16	\N
10	15	\N
11	15	\N
2	3	\N
15	7	\N
2	3	\N
15	7	\N
47	1	\N
52	2	\N
53	2	\N
54	2	\N
54	4	\N
52	4	\N
52	5	\N
54	5	\N
53	5	\N
53	7	\N
52	7	\N
54	7	\N
53	8	\N
54	8	\N
\.


--
-- Data for Name: crbt_payment; Type: TABLE DATA; Schema: public; Owner: crb_dev_user
--

COPY public.crbt_payment (payment_id, system_user_id, plan_id, subscription_plan_details, order_id, payment_ref_id, status, payment_status, payment_response, payment_request, purchase_type, amount, total_amount, payment_method, transaction_message, transaction_time, created_at, updated_at, tax_breakup, tax) FROM stdin;
\.


--
-- Data for Name: crbt_queue; Type: TABLE DATA; Schema: public; Owner: crb_dev_user
--

COPY public.crbt_queue (queueid, que_type, user_id, email_data, email_template, email_to, email_attachments, sms, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: crbt_roles; Type: TABLE DATA; Schema: public; Owner: crb_dev_user
--

COPY public.crbt_roles (role_id, role_name, system_user_id, created_by, updated_by, created_at, updated_at, status) FROM stdin;
144	room 8	35	35	\N	2023-08-21 15:09:25.39571+05:30	2023-08-21 15:09:25.39571+05:30	f
143	research	35	35	35	2023-08-18 14:22:56.816905+05:30	2023-08-18 14:22:56.816905+05:30	f
142	QAs	35	35	35	2023-08-18 14:03:16.016789+05:30	2023-08-18 14:03:16.016789+05:30	f
129	Software Developer	35	35	35	2023-08-03 14:33:04.03886+05:30	2023-08-03 14:33:04.03886+05:30	t
131	Manager	35	35	\N	2023-08-03 14:34:37.862212+05:30	2023-08-03 14:34:37.862212+05:30	t
132	Associate Director	35	35	\N	2023-08-03 14:54:25.780908+05:30	2023-08-03 14:54:25.780908+05:30	t
141	Room 5	35	35	35	2023-08-17 17:35:53.865575+05:30	2023-08-17 17:35:53.865575+05:30	f
140	roles tests	35	35	35	2023-08-17 14:32:04.512101+05:30	2023-08-17 14:32:04.512101+05:30	f
133	Sales Executive	35	35	35	2023-08-04 15:17:01.583985+05:30	2023-08-04 15:17:01.583985+05:30	t
135	developere	35	35	\N	2023-08-07 15:40:03.715156+05:30	2023-08-07 15:40:03.715156+05:30	t
139	senior Developers	35	35	35	2023-08-17 14:17:53.199537+05:30	2023-08-17 14:17:53.199537+05:30	f
138	service now Developer	35	35	35	2023-08-17 09:38:37.708001+05:30	2023-08-17 09:38:37.708001+05:30	f
134	fulllstackdev	35	35	35	2023-08-07 15:39:29.556931+05:30	2023-08-07 15:39:29.556931+05:30	t
150	Traine	35	35	35	2023-08-24 23:53:34.662247+05:30	2023-08-24 23:53:34.662247+05:30	t
145	TESTER	35	35	35	2023-08-21 15:13:34.868728+05:30	2023-08-21 15:13:34.868728+05:30	t
130	Software Tester	35	35	35	2023-08-03 14:33:25.563176+05:30	2023-08-03 14:33:25.563176+05:30	t
146	alieeennnnn	35	35	\N	2023-08-24 10:19:00.379206+05:30	2023-08-24 10:19:00.379206+05:30	f
128	HR	35	35	35	2023-08-03 11:52:08.866757+05:30	2023-08-03 11:52:08.866757+05:30	t
148	DM0	35	35	\N	2023-08-24 10:21:03.378075+05:30	2023-08-24 10:21:03.378075+05:30	t
137	DEV	35	35	35	2023-08-10 12:26:49.887673+05:30	2023-08-10 12:26:49.887673+05:30	t
136	Dev	35	35	35	2023-08-08 10:57:42.700035+05:30	2023-08-08 10:57:42.700035+05:30	t
151	Financer	35	35	35	2023-08-28 10:25:02.254786+05:30	2023-08-28 10:25:02.254786+05:30	t
149	cashier1	35	35	35	2023-08-24 12:48:21.322197+05:30	2023-08-24 12:48:21.322197+05:30	t
147	DM	35	35	\N	2023-08-24 10:20:43.241693+05:30	2023-08-24 10:20:43.241693+05:30	t
160	Developer	70	70	70	2024-02-05 14:13:05.337379+05:30	2024-02-05 14:13:05.337379+05:30	t
155	ADMIN	70	70	70	2023-11-30 12:47:56.771378+05:30	2023-11-30 12:47:56.771378+05:30	t
161	END USER	70	70	70	2024-02-07 10:45:44.607567+05:30	2024-02-07 10:45:44.607567+05:30	t
162	tester	70	70	\N	2024-02-16 16:59:56.258233+05:30	2024-02-16 16:59:56.258233+05:30	t
163	marketing	70	70	\N	2024-02-16 17:00:06.523659+05:30	2024-02-16 17:00:06.523659+05:30	t
164	client	70	70	\N	2024-02-16 17:00:20.083557+05:30	2024-02-16 17:00:20.083557+05:30	t
\.


--
-- Data for Name: crbt_room_amenities; Type: TABLE DATA; Schema: public; Owner: crb_dev_user
--

COPY public.crbt_room_amenities (room_id, amenity_id, created_by, updated_by) FROM stdin;
14	8	55	\N
14	9	55	\N
14	10	55	\N
2	12	55	\N
2	32	55	\N
2	14	55	\N
2	21	55	\N
2	12	55	\N
2	32	55	\N
2	14	55	\N
2	21	55	\N
12	12	55	\N
12	32	55	\N
12	14	55	\N
12	21	55	\N
12	12	55	\N
12	32	55	\N
12	14	55	\N
12	21	55	\N
12	12	55	\N
12	32	55	\N
12	14	55	\N
12	21	55	\N
15	8	57	\N
15	9	57	\N
15	10	57	\N
16	8	57	\N
16	9	57	\N
16	10	57	\N
17	8	57	\N
17	9	57	\N
17	10	57	\N
18	8	57	\N
18	9	57	\N
18	10	57	\N
24	8	57	\N
24	9	57	\N
24	10	57	\N
25	6	57	\N
25	7	57	\N
25	10	57	\N
26	6	55	\N
26	7	55	\N
26	10	55	\N
27	6	55	\N
27	67	55	\N
27	10	55	\N
28	65	55	\N
28	67	55	\N
28	10	55	\N
29	67	55	\N
29	67	55	\N
29	10	55	\N
13	12	35	\N
13	32	35	\N
13	14	35	\N
13	21	35	\N
13	12	35	\N
13	32	35	\N
13	14	35	\N
13	21	35	\N
13	12	35	\N
13	32	35	\N
13	14	35	\N
13	21	35	\N
13	12	35	\N
13	32	35	\N
13	14	35	\N
13	21	35	\N
13	12	35	\N
13	32	35	\N
13	14	35	\N
13	21	35	\N
30	4	35	\N
30	5	35	\N
30	5	35	\N
32	10	35	\N
32	12	35	\N
32	32	35	\N
32	14	35	\N
32	21	35	\N
33	8	35	\N
33	9	35	\N
33	10	35	\N
40	8	35	\N
40	9	35	\N
40	10	35	\N
41	8	35	\N
41	9	35	\N
41	10	35	\N
52	8	35	\N
52	9	35	\N
52	10	35	\N
53	48	35	\N
53	44	35	\N
54	48	35	\N
54	44	35	\N
55	48	35	\N
55	44	35	\N
56	44	35	\N
56	48	35	\N
57	44	35	\N
57	48	35	\N
58	48	35	\N
58	44	35	\N
59	44	35	\N
59	48	35	\N
60	48	35	\N
60	44	35	\N
61	48	35	\N
61	44	35	\N
62	48	35	\N
62	44	35	\N
63	48	35	\N
63	44	35	\N
64	8	35	\N
64	9	35	\N
64	10	35	\N
65	8	35	\N
65	9	35	\N
65	10	35	\N
67	8	35	\N
67	9	35	\N
67	10	35	\N
68	50	35	\N
68	49	35	\N
68	48	35	\N
72	48	35	\N
72	44	35	\N
72	49	35	\N
72	50	35	\N
73	48	35	\N
73	49	35	\N
74	49	35	\N
74	48	35	\N
75	44	35	\N
75	48	35	\N
76	44	35	\N
76	48	35	\N
76	49	35	\N
77	44	35	\N
77	48	35	\N
78	44	35	\N
78	48	35	\N
79	44	35	\N
79	48	35	\N
80	48	35	\N
80	49	35	\N
81	49	35	\N
81	48	35	\N
82	48	35	\N
82	49	35	\N
83	50	35	\N
83	49	35	\N
84	50	35	\N
84	49	35	\N
85	50	35	\N
85	49	35	\N
86	50	35	\N
86	48	35	\N
86	44	35	\N
87	50	35	\N
87	49	35	\N
88	50	35	\N
88	48	35	\N
89	50	35	\N
89	48	35	\N
90	48	35	\N
90	49	35	\N
91	48	35	\N
91	49	35	\N
92	44	35	\N
92	49	35	\N
93	50	35	\N
93	48	35	\N
94	50	35	\N
94	49	35	\N
95	50	35	\N
95	49	35	\N
96	50	35	\N
96	48	35	\N
97	50	35	\N
97	49	35	\N
97	48	35	\N
98	49	35	\N
98	50	35	\N
99	48	35	\N
99	49	35	\N
100	44	35	\N
100	48	35	\N
101	44	35	\N
101	49	35	\N
101	48	35	\N
102	4	35	\N
102	5	35	\N
102	5	35	\N
199	98	35	\N
103	12	35	\N
103	32	35	\N
103	14	35	\N
103	21	35	\N
103	12	35	\N
103	32	35	\N
103	14	35	\N
103	21	35	\N
104	8	35	\N
103	12	35	\N
103	32	35	\N
103	14	35	\N
103	21	35	\N
199	99	35	\N
107	12	35	\N
107	32	35	\N
107	14	35	\N
107	21	35	\N
109	4	35	\N
110	4	35	\N
111	4	35	\N
112	48	35	\N
112	49	35	\N
113	48	35	\N
114	53	35	\N
114	51	35	\N
115	48	35	\N
116	49	35	\N
117	48	35	\N
117	12	35	\N
117	32	35	\N
117	14	35	\N
117	21	35	\N
118	8	35	\N
118	8	35	\N
118	9	35	\N
119	49	35	\N
117	12	35	\N
117	32	35	\N
117	14	35	\N
117	21	35	\N
117	12	35	\N
117	32	35	\N
117	14	35	\N
117	21	35	\N
117	12	35	\N
117	32	35	\N
117	14	35	\N
117	21	35	\N
117	12	35	\N
117	32	35	\N
117	14	35	\N
117	21	35	\N
119	12	35	\N
119	32	35	\N
119	14	35	\N
119	21	35	\N
107	12	35	\N
107	32	35	\N
107	14	35	\N
107	21	35	\N
107	12	35	\N
107	32	35	\N
107	14	35	\N
107	21	35	\N
107	12	35	\N
107	32	35	\N
107	14	35	\N
107	21	35	\N
120	12	35	\N
120	32	35	\N
120	14	35	\N
120	21	35	\N
121	6	35	\N
121	12	35	\N
121	32	35	\N
121	14	35	\N
121	21	35	\N
122	58	35	\N
123	58	35	\N
124	55	35	\N
125	57	35	\N
126	8	35	\N
126	9	35	\N
126	10	35	\N
127	69	35	\N
128	67	35	\N
128	59	35	\N
128	69	35	\N
129	71	35	\N
129	70	35	\N
130	71	35	\N
131	71	35	\N
132	70	35	\N
133	71	35	\N
134	55	35	\N
134	71	35	\N
135	71	35	\N
136	71	35	\N
137	59	35	\N
138	71	35	\N
139	72	35	\N
139	71	35	\N
140	72	35	\N
141	72	35	\N
142	70	35	\N
143	70	35	\N
144	71	35	\N
145	74	35	\N
145	72	35	\N
146	70	35	\N
147	72	35	\N
147	71	35	\N
148	72	35	\N
148	71	35	\N
149	8	35	\N
149	6	35	\N
150	8	35	\N
150	6	35	\N
151	8	35	\N
151	6	35	\N
152	8	35	\N
152	6	35	\N
153	8	35	\N
153	6	35	\N
154	8	35	\N
154	6	35	\N
155	8	35	\N
155	6	35	\N
156	8	55	\N
156	6	55	\N
157	8	55	\N
157	6	55	\N
158	8	35	\N
158	9	35	\N
158	10	35	\N
159	8	35	\N
159	9	35	\N
159	10	35	\N
160	8	35	\N
160	9	35	\N
160	10	35	\N
161	8	35	\N
161	9	35	\N
161	10	35	\N
163	1	35	\N
163	2	35	\N
164	78	35	\N
164	76	35	\N
165	77	35	\N
165	78	35	\N
166	77	35	\N
166	76	35	\N
167	77	35	\N
168	78	35	\N
168	72	35	\N
169	77	35	\N
170	78	35	\N
168	4	35	\N
168	5	35	\N
168	6	35	\N
168	4	35	\N
168	6	35	\N
168	4	35	\N
168	5	35	\N
168	6	35	\N
171	1	35	\N
171	2	35	\N
172	1	35	\N
172	2	35	\N
173	1	35	\N
173	2	35	\N
174	78	35	\N
174	76	35	\N
162	65	55	\N
162	65	55	\N
175	76	35	\N
176	76	35	\N
177	76	35	\N
178	8	35	\N
178	9	35	\N
178	10	35	\N
179	64	35	\N
180	8	35	\N
180	9	35	\N
180	10	35	\N
181	66	35	\N
182	64	35	\N
182	63	35	\N
183	65	35	\N
183	64	35	\N
184	63	35	\N
185	71	38	\N
185	91	38	\N
186	64	35	\N
186	65	35	\N
187	64	35	\N
188	63	35	\N
189	78	35	\N
189	69	35	\N
189	67	35	\N
190	69	35	\N
191	67	35	\N
192	78	35	\N
192	81	35	\N
192	67	35	\N
193	81	35	\N
200	118	35	\N
200	119	35	\N
200	103	35	\N
233	128	35	\N
213	112	35	\N
213	105	35	\N
235	128	35	\N
236	107	35	\N
236	103	35	\N
205	113	35	\N
205	107	35	\N
205	106	35	\N
218	117	35	\N
218	119	35	\N
198	118	35	\N
198	119	35	\N
197	117	35	\N
197	119	35	\N
196	119	35	\N
196	120	35	\N
195	120	35	\N
195	115	35	\N
212	115	35	\N
212	113	35	\N
212	112	35	\N
194	118	35	\N
194	119	35	\N
219	118	35	\N
219	119	35	\N
211	118	35	\N
211	119	35	\N
210	117	35	\N
210	116	35	\N
208	112	35	\N
208	116	35	\N
203	120	35	\N
203	119	35	\N
203	118	35	\N
203	117	35	\N
203	116	35	\N
203	115	35	\N
203	114	35	\N
203	113	35	\N
203	112	35	\N
203	111	35	\N
203	110	35	\N
203	109	35	\N
203	108	35	\N
203	107	35	\N
203	106	35	\N
203	105	35	\N
203	104	35	\N
203	103	35	\N
203	102	35	\N
203	101	35	\N
203	100	35	\N
216	116	35	\N
216	117	35	\N
214	116	35	\N
214	117	35	\N
214	114	35	\N
207	115	35	\N
207	116	35	\N
206	108	35	\N
206	109	35	\N
202	113	35	\N
202	115	35	\N
215	108	35	\N
215	109	35	\N
201	109	35	\N
201	114	35	\N
222	110	35	\N
222	111	35	\N
222	109	35	\N
222	105	35	\N
221	98	35	\N
221	105	35	\N
221	101	35	\N
221	111	35	\N
220	100	35	\N
220	98	35	\N
220	103	35	\N
217	122	35	\N
217	113	35	\N
217	112	35	\N
217	111	35	\N
217	114	35	\N
217	105	35	\N
217	103	35	\N
217	99	35	\N
224	121	35	\N
225	122	35	\N
209	121	35	\N
209	111	35	\N
209	112	35	\N
209	110	35	\N
209	123	35	\N
209	122	35	\N
209	115	35	\N
209	113	35	\N
227	121	35	\N
226	103	35	\N
226	107	35	\N
230	107	35	\N
230	103	35	\N
229	125	35	\N
234	127	35	\N
204	125	35	\N
231	125	35	\N
223	117	35	\N
228	124	35	\N
232	125	35	\N
237	107	70	\N
237	103	70	\N
1	130	70	\N
1	130	70	\N
67	1	70	\N
2	1	70	\N
23	3	70	\N
14	8	55	\N
14	9	55	\N
14	10	55	\N
2	12	55	\N
2	32	55	\N
2	14	55	\N
2	21	55	\N
2	12	55	\N
2	32	55	\N
2	14	55	\N
2	21	55	\N
12	12	55	\N
12	32	55	\N
12	14	55	\N
12	21	55	\N
12	12	55	\N
12	32	55	\N
12	14	55	\N
12	21	55	\N
12	12	55	\N
12	32	55	\N
12	14	55	\N
12	21	55	\N
15	8	57	\N
15	9	57	\N
15	10	57	\N
16	8	57	\N
16	9	57	\N
16	10	57	\N
17	8	57	\N
17	9	57	\N
17	10	57	\N
18	8	57	\N
18	9	57	\N
18	10	57	\N
24	8	57	\N
24	9	57	\N
24	10	57	\N
25	6	57	\N
25	7	57	\N
25	10	57	\N
26	6	55	\N
26	7	55	\N
26	10	55	\N
27	6	55	\N
27	67	55	\N
27	10	55	\N
28	65	55	\N
28	67	55	\N
28	10	55	\N
29	67	55	\N
29	67	55	\N
29	10	55	\N
13	12	35	\N
13	32	35	\N
13	14	35	\N
13	21	35	\N
13	12	35	\N
13	32	35	\N
13	14	35	\N
13	21	35	\N
13	12	35	\N
13	32	35	\N
13	14	35	\N
13	21	35	\N
13	12	35	\N
13	32	35	\N
13	14	35	\N
13	21	35	\N
13	12	35	\N
13	32	35	\N
13	14	35	\N
13	21	35	\N
30	4	35	\N
30	5	35	\N
30	5	35	\N
32	10	35	\N
32	12	35	\N
32	32	35	\N
32	14	35	\N
32	21	35	\N
33	8	35	\N
33	9	35	\N
33	10	35	\N
40	8	35	\N
40	9	35	\N
40	10	35	\N
41	8	35	\N
41	9	35	\N
41	10	35	\N
52	8	35	\N
52	9	35	\N
52	10	35	\N
53	48	35	\N
53	44	35	\N
54	48	35	\N
54	44	35	\N
55	48	35	\N
55	44	35	\N
56	44	35	\N
56	48	35	\N
57	44	35	\N
57	48	35	\N
58	48	35	\N
58	44	35	\N
59	44	35	\N
59	48	35	\N
60	48	35	\N
60	44	35	\N
61	48	35	\N
61	44	35	\N
62	48	35	\N
62	44	35	\N
63	48	35	\N
63	44	35	\N
64	8	35	\N
64	9	35	\N
64	10	35	\N
65	8	35	\N
65	9	35	\N
65	10	35	\N
67	8	35	\N
67	9	35	\N
67	10	35	\N
68	50	35	\N
68	49	35	\N
68	48	35	\N
72	48	35	\N
72	44	35	\N
72	49	35	\N
72	50	35	\N
73	48	35	\N
73	49	35	\N
74	49	35	\N
74	48	35	\N
75	44	35	\N
75	48	35	\N
76	44	35	\N
76	48	35	\N
76	49	35	\N
77	44	35	\N
77	48	35	\N
78	44	35	\N
78	48	35	\N
79	44	35	\N
79	48	35	\N
80	48	35	\N
80	49	35	\N
81	49	35	\N
81	48	35	\N
82	48	35	\N
82	49	35	\N
83	50	35	\N
83	49	35	\N
84	50	35	\N
84	49	35	\N
85	50	35	\N
85	49	35	\N
86	50	35	\N
86	48	35	\N
86	44	35	\N
87	50	35	\N
87	49	35	\N
88	50	35	\N
88	48	35	\N
89	50	35	\N
89	48	35	\N
90	48	35	\N
90	49	35	\N
91	48	35	\N
91	49	35	\N
92	44	35	\N
92	49	35	\N
93	50	35	\N
93	48	35	\N
94	50	35	\N
94	49	35	\N
95	50	35	\N
95	49	35	\N
96	50	35	\N
96	48	35	\N
97	50	35	\N
97	49	35	\N
97	48	35	\N
98	49	35	\N
98	50	35	\N
99	48	35	\N
99	49	35	\N
100	44	35	\N
100	48	35	\N
101	44	35	\N
101	49	35	\N
101	48	35	\N
102	4	35	\N
102	5	35	\N
102	5	35	\N
199	98	35	\N
103	12	35	\N
103	32	35	\N
103	14	35	\N
103	21	35	\N
103	12	35	\N
103	32	35	\N
103	14	35	\N
103	21	35	\N
104	8	35	\N
103	12	35	\N
103	32	35	\N
103	14	35	\N
103	21	35	\N
199	99	35	\N
107	12	35	\N
107	32	35	\N
107	14	35	\N
107	21	35	\N
109	4	35	\N
110	4	35	\N
111	4	35	\N
112	48	35	\N
112	49	35	\N
113	48	35	\N
114	53	35	\N
114	51	35	\N
115	48	35	\N
116	49	35	\N
117	48	35	\N
117	12	35	\N
117	32	35	\N
117	14	35	\N
117	21	35	\N
118	8	35	\N
118	8	35	\N
118	9	35	\N
119	49	35	\N
117	12	35	\N
117	32	35	\N
117	14	35	\N
117	21	35	\N
117	12	35	\N
117	32	35	\N
117	14	35	\N
117	21	35	\N
117	12	35	\N
117	32	35	\N
117	14	35	\N
117	21	35	\N
117	12	35	\N
117	32	35	\N
117	14	35	\N
117	21	35	\N
119	12	35	\N
119	32	35	\N
119	14	35	\N
119	21	35	\N
107	12	35	\N
107	32	35	\N
107	14	35	\N
107	21	35	\N
107	12	35	\N
107	32	35	\N
107	14	35	\N
107	21	35	\N
107	12	35	\N
107	32	35	\N
107	14	35	\N
107	21	35	\N
120	12	35	\N
120	32	35	\N
120	14	35	\N
120	21	35	\N
121	6	35	\N
121	12	35	\N
121	32	35	\N
121	14	35	\N
121	21	35	\N
122	58	35	\N
123	58	35	\N
124	55	35	\N
125	57	35	\N
126	8	35	\N
126	9	35	\N
126	10	35	\N
127	69	35	\N
128	67	35	\N
128	59	35	\N
128	69	35	\N
129	71	35	\N
129	70	35	\N
130	71	35	\N
131	71	35	\N
132	70	35	\N
133	71	35	\N
134	55	35	\N
134	71	35	\N
135	71	35	\N
136	71	35	\N
137	59	35	\N
138	71	35	\N
139	72	35	\N
139	71	35	\N
140	72	35	\N
141	72	35	\N
142	70	35	\N
143	70	35	\N
144	71	35	\N
145	74	35	\N
145	72	35	\N
146	70	35	\N
147	72	35	\N
147	71	35	\N
148	72	35	\N
148	71	35	\N
149	8	35	\N
149	6	35	\N
150	8	35	\N
150	6	35	\N
151	8	35	\N
151	6	35	\N
152	8	35	\N
152	6	35	\N
153	8	35	\N
153	6	35	\N
154	8	35	\N
154	6	35	\N
155	8	35	\N
155	6	35	\N
156	8	55	\N
156	6	55	\N
157	8	55	\N
157	6	55	\N
158	8	35	\N
158	9	35	\N
158	10	35	\N
159	8	35	\N
159	9	35	\N
159	10	35	\N
160	8	35	\N
160	9	35	\N
160	10	35	\N
161	8	35	\N
161	9	35	\N
161	10	35	\N
163	1	35	\N
163	2	35	\N
164	78	35	\N
164	76	35	\N
165	77	35	\N
165	78	35	\N
166	77	35	\N
166	76	35	\N
167	77	35	\N
168	78	35	\N
168	72	35	\N
169	77	35	\N
170	78	35	\N
168	4	35	\N
168	5	35	\N
168	6	35	\N
168	4	35	\N
168	6	35	\N
168	4	35	\N
168	5	35	\N
168	6	35	\N
171	1	35	\N
171	2	35	\N
172	1	35	\N
172	2	35	\N
173	1	35	\N
173	2	35	\N
174	78	35	\N
174	76	35	\N
162	65	55	\N
162	65	55	\N
175	76	35	\N
176	76	35	\N
177	76	35	\N
178	8	35	\N
178	9	35	\N
178	10	35	\N
179	64	35	\N
180	8	35	\N
180	9	35	\N
180	10	35	\N
181	66	35	\N
182	64	35	\N
182	63	35	\N
183	65	35	\N
183	64	35	\N
184	63	35	\N
185	71	38	\N
185	91	38	\N
186	64	35	\N
186	65	35	\N
187	64	35	\N
188	63	35	\N
189	78	35	\N
189	69	35	\N
189	67	35	\N
190	69	35	\N
191	67	35	\N
192	78	35	\N
192	81	35	\N
192	67	35	\N
193	81	35	\N
200	118	35	\N
200	119	35	\N
200	103	35	\N
233	128	35	\N
213	112	35	\N
213	105	35	\N
235	128	35	\N
236	107	35	\N
236	103	35	\N
205	113	35	\N
205	107	35	\N
205	106	35	\N
218	117	35	\N
218	119	35	\N
198	118	35	\N
198	119	35	\N
197	117	35	\N
197	119	35	\N
196	119	35	\N
196	120	35	\N
195	120	35	\N
195	115	35	\N
212	115	35	\N
212	113	35	\N
212	112	35	\N
194	118	35	\N
194	119	35	\N
219	118	35	\N
219	119	35	\N
211	118	35	\N
211	119	35	\N
210	117	35	\N
210	116	35	\N
208	112	35	\N
208	116	35	\N
203	120	35	\N
203	119	35	\N
203	118	35	\N
203	117	35	\N
203	116	35	\N
203	115	35	\N
203	114	35	\N
203	113	35	\N
203	112	35	\N
203	111	35	\N
203	110	35	\N
203	109	35	\N
203	108	35	\N
203	107	35	\N
203	106	35	\N
203	105	35	\N
203	104	35	\N
203	103	35	\N
203	102	35	\N
203	101	35	\N
203	100	35	\N
216	116	35	\N
216	117	35	\N
214	116	35	\N
214	117	35	\N
214	114	35	\N
207	115	35	\N
207	116	35	\N
206	108	35	\N
206	109	35	\N
202	113	35	\N
202	115	35	\N
215	108	35	\N
215	109	35	\N
201	109	35	\N
201	114	35	\N
222	110	35	\N
222	111	35	\N
222	109	35	\N
222	105	35	\N
221	98	35	\N
221	105	35	\N
221	101	35	\N
221	111	35	\N
220	100	35	\N
220	98	35	\N
220	103	35	\N
217	122	35	\N
217	113	35	\N
217	112	35	\N
217	111	35	\N
217	114	35	\N
217	105	35	\N
217	103	35	\N
217	99	35	\N
224	121	35	\N
225	122	35	\N
209	121	35	\N
209	111	35	\N
209	112	35	\N
209	110	35	\N
209	123	35	\N
209	122	35	\N
209	115	35	\N
209	113	35	\N
227	121	35	\N
226	103	35	\N
226	107	35	\N
230	107	35	\N
230	103	35	\N
229	125	35	\N
234	127	35	\N
204	125	35	\N
231	125	35	\N
223	117	35	\N
228	124	35	\N
232	125	35	\N
237	107	70	\N
237	103	70	\N
1	130	70	\N
1	130	70	\N
67	1	70	\N
2	1	70	\N
23	3	70	\N
14	8	55	\N
14	9	55	\N
14	10	55	\N
2	12	55	\N
2	32	55	\N
2	14	55	\N
2	21	55	\N
2	12	55	\N
2	32	55	\N
2	14	55	\N
2	21	55	\N
12	12	55	\N
12	32	55	\N
12	14	55	\N
12	21	55	\N
12	12	55	\N
12	32	55	\N
12	14	55	\N
12	21	55	\N
12	12	55	\N
12	32	55	\N
12	14	55	\N
12	21	55	\N
15	8	57	\N
15	9	57	\N
15	10	57	\N
16	8	57	\N
16	9	57	\N
16	10	57	\N
17	8	57	\N
17	9	57	\N
17	10	57	\N
18	8	57	\N
18	9	57	\N
18	10	57	\N
24	8	57	\N
24	9	57	\N
24	10	57	\N
25	6	57	\N
25	7	57	\N
25	10	57	\N
26	6	55	\N
26	7	55	\N
26	10	55	\N
27	6	55	\N
27	67	55	\N
27	10	55	\N
28	65	55	\N
28	67	55	\N
28	10	55	\N
29	67	55	\N
29	67	55	\N
29	10	55	\N
13	12	35	\N
13	32	35	\N
13	14	35	\N
13	21	35	\N
13	12	35	\N
13	32	35	\N
13	14	35	\N
13	21	35	\N
13	12	35	\N
13	32	35	\N
13	14	35	\N
13	21	35	\N
13	12	35	\N
13	32	35	\N
13	14	35	\N
13	21	35	\N
13	12	35	\N
13	32	35	\N
13	14	35	\N
13	21	35	\N
30	4	35	\N
30	5	35	\N
30	5	35	\N
32	10	35	\N
32	12	35	\N
32	32	35	\N
32	14	35	\N
32	21	35	\N
33	8	35	\N
33	9	35	\N
33	10	35	\N
40	8	35	\N
40	9	35	\N
40	10	35	\N
41	8	35	\N
41	9	35	\N
41	10	35	\N
52	8	35	\N
52	9	35	\N
52	10	35	\N
53	48	35	\N
53	44	35	\N
54	48	35	\N
54	44	35	\N
55	48	35	\N
55	44	35	\N
56	44	35	\N
56	48	35	\N
57	44	35	\N
57	48	35	\N
58	48	35	\N
58	44	35	\N
59	44	35	\N
59	48	35	\N
60	48	35	\N
60	44	35	\N
61	48	35	\N
61	44	35	\N
62	48	35	\N
62	44	35	\N
63	48	35	\N
63	44	35	\N
64	8	35	\N
64	9	35	\N
64	10	35	\N
65	8	35	\N
65	9	35	\N
65	10	35	\N
67	8	35	\N
67	9	35	\N
67	10	35	\N
68	50	35	\N
68	49	35	\N
68	48	35	\N
72	48	35	\N
72	44	35	\N
72	49	35	\N
72	50	35	\N
73	48	35	\N
73	49	35	\N
74	49	35	\N
74	48	35	\N
75	44	35	\N
75	48	35	\N
76	44	35	\N
76	48	35	\N
76	49	35	\N
77	44	35	\N
77	48	35	\N
78	44	35	\N
78	48	35	\N
79	44	35	\N
79	48	35	\N
80	48	35	\N
80	49	35	\N
81	49	35	\N
81	48	35	\N
82	48	35	\N
82	49	35	\N
83	50	35	\N
83	49	35	\N
84	50	35	\N
84	49	35	\N
85	50	35	\N
85	49	35	\N
86	50	35	\N
86	48	35	\N
86	44	35	\N
87	50	35	\N
87	49	35	\N
88	50	35	\N
88	48	35	\N
89	50	35	\N
89	48	35	\N
90	48	35	\N
90	49	35	\N
91	48	35	\N
91	49	35	\N
92	44	35	\N
92	49	35	\N
93	50	35	\N
93	48	35	\N
94	50	35	\N
94	49	35	\N
95	50	35	\N
95	49	35	\N
96	50	35	\N
96	48	35	\N
97	50	35	\N
97	49	35	\N
97	48	35	\N
98	49	35	\N
98	50	35	\N
99	48	35	\N
99	49	35	\N
100	44	35	\N
100	48	35	\N
101	44	35	\N
101	49	35	\N
101	48	35	\N
102	4	35	\N
102	5	35	\N
102	5	35	\N
199	98	35	\N
103	12	35	\N
103	32	35	\N
103	14	35	\N
103	21	35	\N
103	12	35	\N
103	32	35	\N
103	14	35	\N
103	21	35	\N
104	8	35	\N
103	12	35	\N
103	32	35	\N
103	14	35	\N
103	21	35	\N
199	99	35	\N
107	12	35	\N
107	32	35	\N
107	14	35	\N
107	21	35	\N
109	4	35	\N
110	4	35	\N
111	4	35	\N
112	48	35	\N
112	49	35	\N
113	48	35	\N
114	53	35	\N
114	51	35	\N
115	48	35	\N
116	49	35	\N
117	48	35	\N
117	12	35	\N
117	32	35	\N
117	14	35	\N
117	21	35	\N
118	8	35	\N
118	8	35	\N
118	9	35	\N
119	49	35	\N
117	12	35	\N
117	32	35	\N
117	14	35	\N
117	21	35	\N
117	12	35	\N
117	32	35	\N
117	14	35	\N
117	21	35	\N
117	12	35	\N
117	32	35	\N
117	14	35	\N
117	21	35	\N
117	12	35	\N
117	32	35	\N
117	14	35	\N
117	21	35	\N
119	12	35	\N
119	32	35	\N
119	14	35	\N
119	21	35	\N
107	12	35	\N
107	32	35	\N
107	14	35	\N
107	21	35	\N
107	12	35	\N
107	32	35	\N
107	14	35	\N
107	21	35	\N
107	12	35	\N
107	32	35	\N
107	14	35	\N
107	21	35	\N
120	12	35	\N
120	32	35	\N
120	14	35	\N
120	21	35	\N
121	6	35	\N
121	12	35	\N
121	32	35	\N
121	14	35	\N
121	21	35	\N
122	58	35	\N
123	58	35	\N
124	55	35	\N
125	57	35	\N
126	8	35	\N
126	9	35	\N
126	10	35	\N
127	69	35	\N
128	67	35	\N
128	59	35	\N
128	69	35	\N
129	71	35	\N
129	70	35	\N
130	71	35	\N
131	71	35	\N
132	70	35	\N
133	71	35	\N
134	55	35	\N
134	71	35	\N
135	71	35	\N
136	71	35	\N
137	59	35	\N
138	71	35	\N
139	72	35	\N
139	71	35	\N
140	72	35	\N
141	72	35	\N
142	70	35	\N
143	70	35	\N
144	71	35	\N
145	74	35	\N
145	72	35	\N
146	70	35	\N
147	72	35	\N
147	71	35	\N
148	72	35	\N
148	71	35	\N
149	8	35	\N
149	6	35	\N
150	8	35	\N
150	6	35	\N
151	8	35	\N
151	6	35	\N
152	8	35	\N
152	6	35	\N
153	8	35	\N
153	6	35	\N
154	8	35	\N
154	6	35	\N
155	8	35	\N
155	6	35	\N
156	8	55	\N
156	6	55	\N
157	8	55	\N
157	6	55	\N
158	8	35	\N
158	9	35	\N
158	10	35	\N
159	8	35	\N
159	9	35	\N
159	10	35	\N
160	8	35	\N
160	9	35	\N
160	10	35	\N
161	8	35	\N
161	9	35	\N
161	10	35	\N
163	1	35	\N
163	2	35	\N
164	78	35	\N
164	76	35	\N
165	77	35	\N
165	78	35	\N
166	77	35	\N
166	76	35	\N
167	77	35	\N
168	78	35	\N
168	72	35	\N
169	77	35	\N
170	78	35	\N
168	4	35	\N
168	5	35	\N
168	6	35	\N
168	4	35	\N
168	6	35	\N
168	4	35	\N
168	5	35	\N
168	6	35	\N
171	1	35	\N
171	2	35	\N
172	1	35	\N
172	2	35	\N
173	1	35	\N
173	2	35	\N
174	78	35	\N
174	76	35	\N
162	65	55	\N
162	65	55	\N
175	76	35	\N
176	76	35	\N
177	76	35	\N
178	8	35	\N
178	9	35	\N
178	10	35	\N
179	64	35	\N
180	8	35	\N
180	9	35	\N
180	10	35	\N
181	66	35	\N
182	64	35	\N
182	63	35	\N
183	65	35	\N
183	64	35	\N
184	63	35	\N
185	71	38	\N
185	91	38	\N
186	64	35	\N
186	65	35	\N
187	64	35	\N
188	63	35	\N
189	78	35	\N
189	69	35	\N
189	67	35	\N
190	69	35	\N
191	67	35	\N
192	78	35	\N
192	81	35	\N
192	67	35	\N
193	81	35	\N
200	118	35	\N
200	119	35	\N
200	103	35	\N
233	128	35	\N
213	112	35	\N
213	105	35	\N
235	128	35	\N
236	107	35	\N
236	103	35	\N
205	113	35	\N
205	107	35	\N
205	106	35	\N
218	117	35	\N
218	119	35	\N
198	118	35	\N
198	119	35	\N
197	117	35	\N
197	119	35	\N
196	119	35	\N
196	120	35	\N
195	120	35	\N
195	115	35	\N
212	115	35	\N
212	113	35	\N
212	112	35	\N
194	118	35	\N
194	119	35	\N
219	118	35	\N
219	119	35	\N
211	118	35	\N
211	119	35	\N
210	117	35	\N
210	116	35	\N
208	112	35	\N
208	116	35	\N
203	120	35	\N
203	119	35	\N
203	118	35	\N
203	117	35	\N
203	116	35	\N
203	115	35	\N
203	114	35	\N
203	113	35	\N
203	112	35	\N
203	111	35	\N
203	110	35	\N
203	109	35	\N
203	108	35	\N
203	107	35	\N
203	106	35	\N
203	105	35	\N
203	104	35	\N
203	103	35	\N
203	102	35	\N
203	101	35	\N
203	100	35	\N
216	116	35	\N
216	117	35	\N
214	116	35	\N
214	117	35	\N
214	114	35	\N
207	115	35	\N
207	116	35	\N
206	108	35	\N
206	109	35	\N
202	113	35	\N
202	115	35	\N
215	108	35	\N
215	109	35	\N
201	109	35	\N
201	114	35	\N
222	110	35	\N
222	111	35	\N
222	109	35	\N
222	105	35	\N
221	98	35	\N
221	105	35	\N
221	101	35	\N
221	111	35	\N
220	100	35	\N
220	98	35	\N
220	103	35	\N
217	122	35	\N
217	113	35	\N
217	112	35	\N
217	111	35	\N
217	114	35	\N
217	105	35	\N
217	103	35	\N
217	99	35	\N
224	121	35	\N
225	122	35	\N
209	121	35	\N
209	111	35	\N
209	112	35	\N
209	110	35	\N
209	123	35	\N
209	122	35	\N
209	115	35	\N
209	113	35	\N
227	121	35	\N
226	103	35	\N
226	107	35	\N
230	107	35	\N
230	103	35	\N
229	125	35	\N
234	127	35	\N
204	125	35	\N
231	125	35	\N
223	117	35	\N
228	124	35	\N
232	125	35	\N
237	107	70	\N
237	103	70	\N
1	130	70	\N
1	130	70	\N
67	1	70	\N
2	1	70	\N
23	3	70	\N
1	132	70	\N
2	131	70	\N
3	130	70	\N
4	131	70	\N
5	132	70	\N
6	131	70	\N
7	130	70	\N
8	131	70	\N
8	132	70	\N
9	132	70	\N
10	131	70	\N
11	130	70	\N
12	132	70	\N
12	131	70	\N
13	132	70	\N
14	131	70	\N
15	130	70	\N
16	132	70	\N
16	130	70	\N
17	132	70	\N
18	131	70	\N
19	130	70	\N
20	132	70	\N
20	131	70	\N
21	132	70	\N
22	131	70	\N
23	130	70	\N
24	132	70	\N
24	131	70	\N
25	132	70	\N
26	130	70	\N
27	132	70	\N
28	131	70	\N
29	132	70	\N
30	130	70	\N
31	132	70	\N
32	131	70	\N
33	131	70	\N
34	130	70	\N
35	132	70	\N
36	131	70	\N
37	132	70	\N
38	131	70	\N
39	132	70	\N
40	132	70	\N
41	131	70	\N
42	132	70	\N
43	132	70	\N
44	131	70	\N
45	132	70	\N
46	131	70	\N
47	132	70	\N
48	131	70	\N
49	132	70	\N
50	131	70	\N
51	131	70	\N
52	132	70	\N
53	130	70	\N
54	131	70	\N
55	130	70	\N
56	131	70	\N
57	130	70	\N
58	132	70	\N
59	131	70	\N
60	131	70	\N
61	130	70	\N
62	131	70	\N
63	131	70	\N
64	130	70	\N
65	130	70	\N
66	131	70	\N
66	132	70	\N
68	132	70	\N
69	130	70	\N
70	130	70	\N
72	130	70	\N
71	130	70	\N
78	131	70	\N
80	132	70	\N
81	132	70	\N
107	132	70	\N
108	132	70	\N
109	132	70	\N
\.


--
-- Data for Name: crbt_rooms; Type: TABLE DATA; Schema: public; Owner: crb_dev_user
--

COPY public.crbt_rooms (room_id, room_name, floor_id, capacity, status, system_user_id, created_by, updated_by, created_at, updated_at, building_id, location_id, roomid) FROM stdin;
1	room 1	1	10	t	70	70	\N	2024-01-18 14:50:36.996136+05:30	2024-01-18 14:50:36.996136+05:30	1	1	1
2	room 2	1	10	t	70	70	\N	2024-01-18 15:00:12.048755+05:30	2024-01-18 15:00:12.048755+05:30	1	1	2
3	Room 3	1	10	t	70	70	\N	2024-01-18 15:00:51.448553+05:30	2024-01-18 15:00:51.448553+05:30	1	1	3
4	room 4	1	10	t	70	70	\N	2024-01-18 15:01:33.127048+05:30	2024-01-18 15:01:33.127048+05:30	1	1	4
5	room 5	2	10	t	70	70	\N	2024-01-18 15:03:22.53628+05:30	2024-01-18 15:03:22.53628+05:30	1	1	5
6	Room 6	2	10	t	70	70	\N	2024-01-18 15:03:57.23483+05:30	2024-01-18 15:03:57.23483+05:30	1	1	6
7	Room 7	2	10	t	70	70	\N	2024-01-18 15:04:36.876803+05:30	2024-01-18 15:04:36.876803+05:30	1	1	7
8	Room 8	2	10	t	70	70	\N	2024-01-18 15:05:40.973587+05:30	2024-01-18 15:05:40.973587+05:30	1	1	8
9	Room 9	3	10	t	70	70	\N	2024-01-18 15:06:21.181592+05:30	2024-01-18 15:06:21.181592+05:30	1	1	9
10	Room 10	3	10	t	70	70	\N	2024-01-18 15:08:34.535313+05:30	2024-01-18 15:08:34.535313+05:30	1	1	10
11	Room 11	3	10	t	70	70	\N	2024-01-18 15:09:03.572655+05:30	2024-01-18 15:09:03.572655+05:30	1	1	11
12	Room 12	3	10	t	70	70	\N	2024-01-18 15:09:43.203343+05:30	2024-01-18 15:09:43.203343+05:30	1	1	12
13	Room 13	4	10	t	70	70	\N	2024-01-18 15:10:32.668588+05:30	2024-01-18 15:10:32.668588+05:30	1	1	13
14	Room 14	4	10	t	70	70	\N	2024-01-18 15:11:17.054589+05:30	2024-01-18 15:11:17.054589+05:30	1	1	14
15	Room 15	4	10	t	70	70	\N	2024-01-18 15:12:06.451227+05:30	2024-01-18 15:12:06.451227+05:30	1	1	15
16	Room 16	4	10	t	70	70	\N	2024-01-18 15:12:37.558817+05:30	2024-01-18 15:12:37.558817+05:30	1	1	16
17	Room 17	9	10	t	70	70	\N	2024-01-18 15:13:11.137746+05:30	2024-01-18 15:13:11.137746+05:30	3	2	17
18	Room 18	9	10	t	70	70	\N	2024-01-18 15:13:47.960917+05:30	2024-01-18 15:13:47.960917+05:30	3	2	18
19	Room 19	9	10	t	70	70	\N	2024-01-18 15:14:32.585424+05:30	2024-01-18 15:14:32.585424+05:30	3	2	19
20	Room 20	9	10	t	70	70	\N	2024-01-18 15:15:33.786969+05:30	2024-01-18 15:15:33.786969+05:30	3	2	20
21	Room 21	10	10	t	70	70	\N	2024-01-18 15:17:01.242161+05:30	2024-01-18 15:17:01.242161+05:30	3	2	21
22	Room 22	10	10	t	70	70	\N	2024-01-18 15:17:43.037037+05:30	2024-01-18 15:17:43.037037+05:30	3	2	22
23	Room 23	10	10	t	70	70	\N	2024-01-18 15:18:18.333633+05:30	2024-01-18 15:18:18.333633+05:30	3	2	23
24	Room 24	10	10	t	70	70	\N	2024-01-18 15:18:53.936604+05:30	2024-01-18 15:18:53.936604+05:30	3	2	24
25	Room 25	11	10	t	70	70	\N	2024-01-18 15:19:32.457827+05:30	2024-01-18 15:19:32.457827+05:30	3	2	25
26	Room 26	11	10	t	70	70	\N	2024-01-18 15:20:14.371976+05:30	2024-01-18 15:20:14.371976+05:30	3	2	26
27	Room 27	12	10	t	70	70	\N	2024-01-18 15:20:47.24206+05:30	2024-01-18 15:20:47.24206+05:30	3	2	27
28	Room 28	12	10	t	70	70	\N	2024-01-18 15:21:33.315776+05:30	2024-01-18 15:21:33.315776+05:30	3	2	28
29	Room 29	13	10	t	70	70	\N	2024-01-18 15:22:08.985579+05:30	2024-01-18 15:22:08.985579+05:30	4	2	29
30	Room 30	13	10	t	70	70	\N	2024-01-18 15:22:34.699205+05:30	2024-01-18 15:22:34.699205+05:30	4	2	30
31	Room 31	14	10	t	70	70	\N	2024-01-18 15:25:11.079623+05:30	2024-01-18 15:25:11.079623+05:30	4	2	31
32	Room 32	14	10	t	70	70	\N	2024-01-18 15:25:44.128312+05:30	2024-01-18 15:25:44.128312+05:30	4	2	32
33	Room 33	15	10	t	70	70	\N	2024-01-18 15:26:15.485831+05:30	2024-01-18 15:26:15.485831+05:30	4	2	33
34	Room 34	15	10	t	70	70	\N	2024-01-18 15:26:49.421861+05:30	2024-01-18 15:26:49.421861+05:30	4	2	34
35	Room 35	16	10	t	70	70	\N	2024-01-18 15:27:24.507809+05:30	2024-01-18 15:27:24.507809+05:30	4	2	35
36	Room 36	16	10	t	70	70	\N	2024-01-18 15:27:52.411616+05:30	2024-01-18 15:27:52.411616+05:30	4	2	36
37	Room 37	17	10	t	70	70	\N	2024-01-18 15:28:39.894452+05:30	2024-01-18 15:28:39.894452+05:30	6	3	37
38	Room 38	17	10	t	70	70	\N	2024-01-18 15:29:19.873432+05:30	2024-01-18 15:29:19.873432+05:30	6	3	38
39	Room 39	18	10	t	70	70	\N	2024-01-18 15:29:52.749869+05:30	2024-01-18 15:29:52.749869+05:30	6	3	39
40	Room 40	19	10	t	70	70	\N	2024-01-18 15:30:26.437206+05:30	2024-01-18 15:30:26.437206+05:30	6	3	40
41	Room	18	10	t	70	70	\N	2024-01-18 15:31:16.102711+05:30	2024-01-18 15:31:16.102711+05:30	6	3	41
42	Room 42	19	10	t	70	70	\N	2024-01-18 15:31:54.672192+05:30	2024-01-18 15:31:54.672192+05:30	6	3	42
43	Room 43	20	10	t	70	70	\N	2024-01-18 15:32:51.460722+05:30	2024-01-18 15:32:51.460722+05:30	6	3	43
44	Room 44	20	10	t	70	70	\N	2024-01-18 15:33:17.710323+05:30	2024-01-18 15:33:17.710323+05:30	6	3	44
45	Room 45	25	10	t	70	70	\N	2024-01-18 15:33:47.403318+05:30	2024-01-18 15:33:47.403318+05:30	8	4	45
46	Room 46	17	10	t	70	70	\N	2024-01-18 15:34:19.378367+05:30	2024-01-18 15:34:19.378367+05:30	6	3	46
47	Room 47	21	10	t	70	70	\N	2024-01-18 15:35:48.037071+05:30	2024-01-18 15:35:48.037071+05:30	7	3	47
48	Room 48	22	10	t	70	70	\N	2024-01-18 15:36:24.726047+05:30	2024-01-18 15:36:24.726047+05:30	7	3	48
49	Room 49	24	10	t	70	70	\N	2024-01-18 15:37:03.285029+05:30	2024-01-18 15:37:03.285029+05:30	7	3	49
50	Room 50	23	10	t	70	70	\N	2024-01-18 15:37:45.954698+05:30	2024-01-18 15:37:45.954698+05:30	7	3	50
51	Room 51	25	10	t	70	70	\N	2024-01-18 15:39:06.743702+05:30	2024-01-18 15:39:06.743702+05:30	8	4	51
52	Room 52	26	10	t	70	70	\N	2024-01-18 15:39:29.466784+05:30	2024-01-18 15:39:29.466784+05:30	8	4	52
53	Room 53	26	10	t	70	70	\N	2024-01-18 15:40:05.639986+05:30	2024-01-18 15:40:05.639986+05:30	8	4	53
54	Room 54	27	10	t	70	70	\N	2024-01-18 15:40:40.131199+05:30	2024-01-18 15:40:40.131199+05:30	8	4	54
55	Room 55	28	10	t	70	70	\N	2024-01-18 15:41:09.307548+05:30	2024-01-18 15:41:09.307548+05:30	8	4	55
56	Room 56	28	10	t	70	70	\N	2024-01-18 15:42:00.393808+05:30	2024-01-18 15:42:00.393808+05:30	8	4	56
57	Room 57	28	10	t	70	70	\N	2024-01-18 15:42:52.739385+05:30	2024-01-18 15:42:52.739385+05:30	8	4	57
58	Room 58	29	10	t	70	70	\N	2024-01-18 15:43:34.873449+05:30	2024-01-18 15:43:34.873449+05:30	9	4	58
59	Room 59	29	10	t	70	70	\N	2024-01-18 15:45:19.171485+05:30	2024-01-18 15:45:19.171485+05:30	9	4	59
60	Room 60	31	10	t	70	70	\N	2024-01-18 15:45:53.733693+05:30	2024-01-18 15:45:53.733693+05:30	9	4	60
61	Room 61	31	10	t	70	70	\N	2024-01-18 15:47:53.817385+05:30	2024-01-18 15:47:53.817385+05:30	9	4	61
62	Room 62	31	10	t	70	70	\N	2024-01-18 15:50:42.380413+05:30	2024-01-18 15:50:42.380413+05:30	9	4	62
63	Room 63	32	10	t	70	70	\N	2024-01-18 15:55:07.567581+05:30	2024-01-18 15:55:07.567581+05:30	9	4	63
64	Room 64	32	10	t	70	70	\N	2024-01-18 15:56:00.261921+05:30	2024-01-18 15:56:00.261921+05:30	9	4	64
65	Room 65	23	10	t	70	70	\N	2024-01-18 15:56:58.292743+05:30	2024-01-18 15:56:58.292743+05:30	7	3	65
72	we	12	17	t	70	70	\N	2024-02-23 15:41:32.744537+05:30	2024-02-23 15:41:32.744537+05:30	3	2	66
69	4th	12	17	t	70	70	\N	2024-02-20 10:06:39.455671+05:30	2024-02-20 10:06:39.455671+05:30	3	2	66
71	4th	12	17	t	70	70	\N	2024-02-23 15:29:27.054519+05:30	2024-02-23 15:29:27.054519+05:30	3	2	66
70	4th	12	52	t	70	70	\N	2024-02-23 15:26:27.486397+05:30	2024-02-23 15:26:27.486397+05:30	3	2	66
107	zapier	12	45	t	70	70	\N	2024-02-26 12:47:22.816711+05:30	2024-02-26 12:47:22.816711+05:30	3	2	jp
108	pk	12	30	t	70	70	\N	2024-02-26 12:54:07.847276+05:30	2024-02-26 12:54:07.847276+05:30	3	2	nk
109	ndk	12	45	t	70	70	\N	2024-02-26 14:44:39.410186+05:30	2024-02-26 14:44:39.410186+05:30	3	2	wnwk
\.


--
-- Data for Name: crbt_setting; Type: TABLE DATA; Schema: public; Owner: crb_dev_user
--

COPY public.crbt_setting (system_user_id, booked_room_color, unbooked_room_color, check_in_remain_minutes, reservation_duration, reservation_remainder, email_notification, public_access, email_notification_message, created_by, updated_by, created_at, updated_at, reservation_message) FROM stdin;
46	#FF0000	#FF0000	00:00:10	00:00:10	t	t	t	nw world	46	46	2023-07-31 10:43:21.707161+05:30	2023-08-25 11:31:21.605+05:30	\N
35	#00ffe1	#FF0000	00:00:20	00:00:20	t	t	f		35	35	2023-07-25 17:32:04.565855+05:30	2023-08-29 18:02:01.337+05:30	
46	#FF0000	#FF0000	00:00:10	00:00:10	t	t	t	nw world	46	46	2023-07-31 10:43:21.707161+05:30	2023-08-25 11:31:21.605+05:30	\N
35	#00ffe1	#FF0000	00:00:20	00:00:20	t	t	f		35	35	2023-07-25 17:32:04.565855+05:30	2023-08-29 18:02:01.337+05:30	
46	#FF0000	#FF0000	00:00:10	00:00:10	t	t	t	nw world	46	46	2023-07-31 10:43:21.707161+05:30	2023-08-25 11:31:21.605+05:30	\N
35	#00ffe1	#FF0000	00:00:20	00:00:20	t	t	f		35	35	2023-07-25 17:32:04.565855+05:30	2023-08-29 18:02:01.337+05:30	
70	#FF0000	#FF0000	00:15:00	00:45:00	t	t	t	blue world	70	70	2023-12-11 12:17:56.36044+05:30	2024-02-14 18:09:18.431+05:30	booking
70	#FF0000	#FF0000	00:15:00	00:45:00	t	t	t	blue world	70	70	2023-12-11 12:17:56.36044+05:30	2024-02-14 18:09:18.431+05:30	booking
70	#FF0000	#FF0000	00:15:00	00:45:00	t	t	t	blue world	70	70	2023-12-11 12:17:56.36044+05:30	2024-02-14 18:09:18.431+05:30	booking
\.


--
-- Data for Name: crbt_settings; Type: TABLE DATA; Schema: public; Owner: crb_dev_user
--

COPY public.crbt_settings (setting_id, booking_id, system_user_id, booked_room_color, unbooked_room_color, check_in_remain_minutes, reservation_duration, reservation_remainder, email_notification, public_access, email_notification_message, created_by, updated_by, created_at, updated_at) FROM stdin;
1	3	35	red	green	00:00:15	00:00:15	t	t	t	hello world please check	35	\N	2023-07-11 10:27:42.562+05:30	\N
2	2	35	red	green	00:00:10	00:00:10	t	t	t	hello world	35	\N	2023-07-11 10:33:38.856+05:30	\N
3	2	46	red1	green	00:00:10	00:00:10	t	t	t	hello world	46	\N	2023-07-11 12:02:50.531+05:30	\N
4	2	46	red	green	00:00:10	00:00:10	t	t	t	hello world	46	\N	2023-07-11 15:20:53.53+05:30	\N
1	3	35	red	green	00:00:15	00:00:15	t	t	t	hello world please check	35	\N	2023-07-11 10:27:42.562+05:30	\N
2	2	35	red	green	00:00:10	00:00:10	t	t	t	hello world	35	\N	2023-07-11 10:33:38.856+05:30	\N
3	2	46	red1	green	00:00:10	00:00:10	t	t	t	hello world	46	\N	2023-07-11 12:02:50.531+05:30	\N
4	2	46	red	green	00:00:10	00:00:10	t	t	t	hello world	46	\N	2023-07-11 15:20:53.53+05:30	\N
1	3	35	red	green	00:00:15	00:00:15	t	t	t	hello world please check	35	\N	2023-07-11 10:27:42.562+05:30	\N
2	2	35	red	green	00:00:10	00:00:10	t	t	t	hello world	35	\N	2023-07-11 10:33:38.856+05:30	\N
3	2	46	red1	green	00:00:10	00:00:10	t	t	t	hello world	46	\N	2023-07-11 12:02:50.531+05:30	\N
4	2	46	red	green	00:00:10	00:00:10	t	t	t	hello world	46	\N	2023-07-11 15:20:53.53+05:30	\N
\.


--
-- Data for Name: crbt_sms_credits; Type: TABLE DATA; Schema: public; Owner: crb_dev_user
--

COPY public.crbt_sms_credits (id, system_user_id, available_credits, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: crbt_sms_credits_usage; Type: TABLE DATA; Schema: public; Owner: crb_dev_user
--

COPY public.crbt_sms_credits_usage (id, system_user_id, usage_date, credit_count, message, created_at) FROM stdin;
\.


--
-- Data for Name: crbt_smtp_settings; Type: TABLE DATA; Schema: public; Owner: crb_dev_user
--

COPY public.crbt_smtp_settings (setting_id, host, port, username, password, system_user_id, created_by, updated_by, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: crbt_system_users; Type: TABLE DATA; Schema: public; Owner: crb_dev_user
--

COPY public.crbt_system_users (system_user_id, company_gst_number, company_name, company_officialwebsite, company_address, username, password, email, email_verify, mobile_verify, last_login, phone_number, status, termsandconditions_accepted, updated_at, created_at, key) FROM stdin;
35	123456789	venkatesh	http://venkatesh5256.com	guntur	venkatesh5256	$2b$10$iYn4Sa6fGfKyktTLPIBeQuH5wo95XwNgSMjKz3p61Wd3BBmOzrMmq	venkatesh5256@gmail.com	t	f	\N	9642936343	t	t	2023-06-07 06:00:14.840855+05:30	2023-06-07 06:00:14.840855+05:30	\N
47	gst_0015	fs015	mathig.krishnan15@gmail.com	ramco	fssuse415	$2b$10$X7DJIp.p7eKD/aS3GhCHde9DPN5y341YsCUTzXvFaBZXh30SBzsDC	mathig.krishnan15@gmail.com	t	f	\N	917418558790	t	t	2023-06-09 17:20:17.525534+05:30	2023-06-09 17:20:17.525534+05:30	\N
53	789586	sstf	federalsoftsystemmss.comm	edhetyuiuwbiwfb	sathvikaa.e@federalsoftsystems.com	\N	sathvikaa.e@federalsoftsystems.com	f	f	\N	8575859563	t	t	2023-06-12 16:53:22.1485+05:30	2023-06-12 16:53:22.1485+05:30	\N
38	12345678	FSS	federalsoftsystemss.com	kbwiqubshhsjndkfdddd	dhanush.kambala@gmail.com	$2b$10$MJk0PlQkdZUft6uxwYR3VORoy4trbM4jhv4RrN6L0F4tNNzxD8qEy	dhanush.kambala@gmail.com	t	f	\N	91630596252013	t	t	2023-06-07 17:35:24.891426+05:30	2023-06-07 17:35:24.891426+05:30	\N
36	1234567	fSS	federalsoftsystems.com	kbwiqubshhsjndkfddd	dhanush.k@federalsoftsystems.com	123456789	dhanush.k@federalsoftsystems.com	t	t	\N	9163059625201	t	t	2023-06-07 11:04:16.876+05:30	2023-06-07 11:04:16.876+05:30	\N
44	1	MM	MM.com	Banglore	nikkinikhilchowdary1234@gmail.com	$2b$10$uKYHgOlAJx94uPSuA6CFv.eLKIedlvHIrzrooAhYoKzFybDV1wzKK	nikkinikhilchowdary1234@gmail.com	t	f	\N	6301292388	t	t	2023-06-08 11:34:33.791314+05:30	2023-06-08 11:34:33.791314+05:30	\N
56	gst_0016	fs016	mathig.krishnan15@gmail.com	ramco	fssuse416	$2b$10$2onu3FVzSzfD5rAfPp5pVOPqpFYeid5hPo2ycPitVwLHZfV8nN0n6	mathig.krishnan16@gmail.com	t	f	\N	917418558791	t	t	2023-06-16 11:15:07.803033+05:30	2023-06-16 11:15:07.803033+05:30	\N
57	178765456	Nanda kishore	http://Nandakishore.com	Nellore	Nanda123	$2b$10$rYTazBqSdDgMIgkzwqrIUOC11tB9j0VQA.m9cAdAixsQd/pWXzMT6	Nanda@gmail.com	t	f	\N	939808855	t	t	2023-06-19 10:17:50.534198+05:30	2023-06-19 10:17:50.534198+05:30	\N
59	1234567810	venkatesh1	http://venkatesh5256.com	guntur	password123	$2b$10$n/1pE7y3pI4YFpZK/VD40OAask/6MbxwyM9mKH9X.bz/yu/Jr5xZ2	mathig.krishnan1@gmail.com	f	f	\N	9642936342	\N	t	2023-07-24 11:18:59.461834+05:30	2023-07-24 11:18:59.461834+05:30	\N
55	0089586	ssstf	federalsoftsysstemmss.comm	wertedhetyuiuwbiwfb	sathvikaaa.e@federalsoftsystems.com	$2b$10$MJk0PlQkdZUft6uxwYR3VORoy4trbM4jhv4RrN6L0F4tNNzxD8qEy	sathvikaaa.e@federalsoftsystems.com	t	f	\N	9575859563	t	t	2023-06-12 18:11:43.506784+05:30	2023-06-12 18:11:43.506784+05:30	\N
46	gst_001	fs01	mathig.krishnan@gmail.com	ramco	fssuse41666	$2b$10$ArwmH3NL9FW0/QDkYRW1V.iZt8E6hEdlko4Bf43uzucHfTaqvglwG	mathig.krishnan@gmail.com	t	f	\N	917418558705	t	t	2023-06-08 16:02:21.49296+05:30	2023-06-08 16:02:21.49296+05:30	\N
60	123452239	Testgateway	http://Testgateway.com	banglore gateway	gateway	$2b$10$k6eWQiDiUNun.eQNihpXVuS871ALUeQVQtAevFJ1zMrk0YGEo7BB2	gateway@gmail.com	f	f	\N	964682243	t	t	2023-08-10 15:38:39.293131+05:30	2023-08-10 15:38:39.293131+05:30	\N
61	123412239	Testgateway test	http://ttestgateway.com	banglore gateway test	kambala	$2b$10$r8WgZWH6GD9L8gz6tTuHCOwVDf715dueKEYsle.8NiUSVWbmHQH5i	kambala.dhanush17@gmail.com	t	f	\N	9646821123	t	t	2023-08-10 15:44:54.768361+05:30	2023-08-10 15:44:54.768361+05:30	\N
62	12345679	venkateshh	http://venkatesh52566.com	guntur	venkatesh52566	$2b$10$sVr2jssWOSGgKP3BSJLgduQc8At4YtOreUGhfnWa10D38A8Qw4Pvq	venkatesh52566@gmail.com	f	f	\N	9642936322	t	t	2023-08-17 12:54:24.498241+05:30	2023-08-17 12:54:24.498241+05:30	\N
63	7389586	sstrf	feederalsoftsystemmss.comm	edhetyruiuwbiwfb	sathvikaa.ev@federalsoftsystems.com	$2b$10$j6o3wdmm7B86n8x/BXxmBOmdCjUfi.SLdjsDPajak3NimXb/wiIKq	sathvikaa.ev@federalsoftsystems.com	f	f	\N	85758559563	t	t	2023-08-17 14:48:26.898444+05:30	2023-08-17 14:48:26.898444+05:30	\N
64	9876543210	darab	http://darab1234.com	muzaffarpur	darab1234	$2b$10$/LiwirlYj.YvAxfLqvkU5Oy1P5aFs4MW5BQGOYDfMQ8YuDuOfwhLS	dk@gmail.com	f	f	\N	9876543210	t	t	2023-08-24 00:02:02.691263+05:30	2023-08-24 00:02:02.691263+05:30	\N
65	1234567009	fss	http://fss.com	chennai	kaveri	$2b$10$i.yjxis14E0xi02ILCCy4eOOGpprZmwDQEpyjgAIV6ojaxJBTqOW.	sreelakshmikaveri.d@federalsystems.com	f	f	\N	8801156533	t	t	2023-08-25 14:22:31.123711+05:30	2023-08-25 14:22:31.123711+05:30	\N
66	12345	demo	demo	demo	demo	$2b$10$ms4R7B4AeF3YII5SeNL.KOtXF83gZWP9i237C5TkpVy0YMkHr1Ip.	demo@gmail.com	f	f	\N	96429363	t	t	2023-08-28 16:26:54.096787+05:30	2023-08-28 16:26:54.096787+05:30	\N
74	13111	fssb5	http://demo.com	test1	venu12	$2b$10$ys07I0rSEU8q/vWkNTyY0.xGE0la0I3HARIANCLUoGmrUHuee0wjO	venugopal.b@federalsoftsystems.com	f	f	\N	9160908484	t	t	2023-12-29 12:15:12.571806+05:30	2023-12-29 12:15:12.571806+05:30	\N
58	179898	venu gopal	http://venugopal.com	Tirupati	Venu123	$2b$10$K1p5ujIaYArwcGS4AMqud.ihQWRpjR4exuvq4VJt74KpTrKQYTu/G	venu@gmail.com	t	f	\N	9398088595	t	t	2023-06-21 10:13:37.672105+05:30	2023-06-21 10:13:37.672105+05:30	\N
70	13112	fss	http://demo.com	test	venu1	$2b$10$bPcmzG7kQmNR2M8gP8oDoe9889jCBwlu8kPhteMv0AO4Gz3KuuuVG	venugopal.a@federalsoftsystems.com	t	f	\N	9160908476	t	t	2024-02-14 11:18:01.178+05:30	2023-11-30 12:47:56.761963+05:30	organisationlogo/1707906035168.jpg
\.


--
-- Data for Name: crbt_user_subscription; Type: TABLE DATA; Schema: public; Owner: crb_dev_user
--

COPY public.crbt_user_subscription (subscriptionid, system_user_id, plan_id, startdate, enddate, status, paymentid, created_by, updated_by, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: crbt_users; Type: TABLE DATA; Schema: public; Owner: crb_dev_user
--

COPY public.crbt_users (user_id, first_name, last_name, email, password, designation_id, role_id, department_id, creation_date, employee_code, location_id, mobile_number, isactive, system_user_id, created_by, updated_by, created_at, updated_at, profilepic_key, building_id, user_type, otp, ismanager) FROM stdin;
1	meghana	muppalla	meghana.m@federalsoftsystems.com	$2b$10$7Dq9nSHisG7VTL67SWy8GegnV8/OFxXFEprEGaTuyv9PGTayTs6SW	1	1	1	2023-06-19 13:10:03.196901+05:30	FSS0402	1	9898989897	t	38	38	\N	2023-06-19 13:10:03.196901+05:30	2023-06-19 13:10:03.196901+05:30	\N	\N	\N	\N	\N
3	dhanush	k	dhanush.k@federalsoftsystems.com	$2b$10$fVSIJ/VkkjbdlJVxmTDI..jGFToJsUkc/BYXHc4hN0xuxv.VanjjC	52	32	61	2023-08-02 14:52:30.580797+05:30	FSS0403	257	123254685	t	38	38	\N	2023-08-02 14:52:30.580797+05:30	2023-08-02 14:52:30.580797+05:30	\N	\N	\N	\N	\N
7	nikhil	E	nikhileshwar.e@federalsoftsystems.com	$2b$10$I8uHZPOzMe8smpfnIDso7ePKs4nnBLafURU22Y5JiCSGzO4EfsKlO	52	32	61	2023-08-02 15:28:57.621219+05:30	FSS0404	257	123254622	t	38	38	\N	2023-08-02 15:28:57.621219+05:30	2023-08-02 15:28:57.621219+05:30	\N	\N	\N	\N	\N
8	radhaa	RR	radha.p@federalsoftsystems.com	$2b$10$zKW2e4Gyo9w8trujTf3fquPYrmKY.J/Og8z45byDpc6js7OUtN6bG	52	32	61	2023-08-02 17:57:04.591104+05:30	FSS0423	257	12325490	f	38	38	\N	2023-08-02 17:57:04.591104+05:30	2023-08-02 17:57:04.591104+05:30	\N	\N	\N	\N	\N
37	\N	\N	demo@gmail.com	$2b$10$hhXha7qPIYjYZ/gJlafbTesBsa1diTYtgAWZ/DeKloJFwO.P4XJxi	\N	\N	\N	2023-08-28 16:26:54.110463+05:30	\N	\N	\N	t	66	\N	66	2023-08-28 16:26:54.110463+05:30	2023-08-29 16:08:10.993+05:30	\N	\N	\N	\N	\N
22	\N	\N	dk@gmail.com	$2b$10$/LiwirlYj.YvAxfLqvkU5Oy1P5aFs4MW5BQGOYDfMQ8YuDuOfwhLS	\N	\N	\N	2023-08-24 00:02:02.698673+05:30	\N	\N	\N	t	64	\N	\N	2023-08-24 00:02:02.698673+05:30	2023-08-24 00:02:02.698673+05:30	\N	\N	\N	\N	\N
10	sanjay kumar	T	sanjay@gmail.com	$2b$10$5oBWld.ZExqNLjD1thMy8uR4p5zsXPe7N6wVczLjE5HlU.6sIU1zO	145	134	154	2023-08-03 11:02:37.209484+05:30	787987	287	99808098098	f	35	35	\N	2023-08-03 11:02:37.209484+05:30	2023-08-03 11:02:37.209484+05:30	\N	255	\N	\N	\N
9	kaveri	D	sreelakshmi@fss.com	$2b$10$07mLZIfaM/ryra0YQmrt7u2Z8AAbJJDuyjxhd8zZVThjfWXe7Vxya	142	131	153	2023-08-03 08:44:47.807399+05:30	99080	288	87979787987	f	35	35	\N	2023-08-03 08:44:47.807399+05:30	2023-08-03 08:44:47.807399+05:30	\N	242	\N	\N	\N
17	Zameer	A	zameer@fss.com	$2b$10$JSlWyGEh2yEKA8/qOZhVYuXlnZISOe6XRnsCa6DHq6vm4jVOR2F36	143	131	157	2023-08-14 12:23:01.059214+05:30	67687	270	908987878	f	35	35	\N	2023-08-14 12:23:01.059214+05:30	2023-08-14 12:23:01.059214+05:30	\N	249	\N	\N	\N
33	k	radha	krishna.e@federalsoftsystems.com	$2b$10$ai3ICQcdwOshePEqzoDqWuxO2HdLf/SnEuSLUOW8p3r2z/4m83f1.	53	145	157	2023-08-25 10:52:40.642555+05:30	FSS0404	288	123456777	t	35	35	35	2023-08-25 10:52:40.642555+05:30	2023-08-28 16:51:18.015+05:30	\N	249	f	\N	\N
36	\N	\N	sreelakshmikaveri.d@federalsystems.com	$2b$10$Srr43kRy35bW3uje9gcQpuB3BUAqgD31EQu6KoeduK2Gkgfsy.mt6	\N	\N	\N	2023-08-25 14:22:31.127083+05:30	\N	\N	\N	t	65	\N	65	2023-08-25 14:22:31.127083+05:30	2023-08-25 14:32:31.088+05:30	\N	\N	\N	\N	\N
11	mounika	RRR	mounika@gmail.com	$2b$10$ai3ICQcdwOshePEqzoDqWuxO2HdLf/SnEuSLUOW8p3r2z/4m83f1.	125	128	149	2023-08-03 11:20:24.716266+05:30	FSS0423	269	123222490	t	35	35	35	2023-08-03 11:20:24.716266+05:30	2023-08-28 16:51:18.015+05:30	\N	255	\N	\N	\N
14	Asritha	t	asrithaT@gmail.co	$2b$10$ai3ICQcdwOshePEqzoDqWuxO2HdLf/SnEuSLUOW8p3r2z/4m83f1.	143	134	157	2023-08-09 11:07:25.736146+05:30	76875	288	989809800	t	35	35	35	2023-08-09 11:07:25.736146+05:30	2023-08-28 16:51:18.015+05:30	\N	253	\N	\N	\N
13	kaveri	D	kaveri@gmail.com	$2b$10$ai3ICQcdwOshePEqzoDqWuxO2HdLf/SnEuSLUOW8p3r2z/4m83f1.	131	133	156	2023-08-07 09:44:03.473604+05:30	909898	270	76866986785	t	35	35	35	2023-08-07 09:44:03.473604+05:30	2023-08-28 16:51:18.015+05:30	\N	260	\N	\N	\N
12	Mounika B	B	mounikab@gmail.com	$2b$10$ai3ICQcdwOshePEqzoDqWuxO2HdLf/SnEuSLUOW8p3r2z/4m83f1.	129	128	152	2023-08-04 11:06:11.504361+05:30	42141	272	980898098	t	35	35	35	2023-08-04 11:06:11.504361+05:30	2023-08-28 16:51:18.015+05:30	\N	253	\N	\N	\N
26	lakshmi	D	lakshmi@gmail.com	$2b$10$ai3ICQcdwOshePEqzoDqWuxO2HdLf/SnEuSLUOW8p3r2z/4m83f1.	151	146	191	2023-08-24 23:45:25.125928+05:30	7687	303	798787987	t	35	35	35	2023-08-24 23:45:25.125928+05:30	2023-08-28 16:51:18.015+05:30	\N	249	f	\N	\N
18	darab	karim	darab@fss.in	$2b$10$ai3ICQcdwOshePEqzoDqWuxO2HdLf/SnEuSLUOW8p3r2z/4m83f1.	145	133	158	2023-08-14 14:37:22.720298+05:30	9908	273	78979879	t	35	35	35	2023-08-14 14:37:22.720298+05:30	2023-08-28 16:51:18.015+05:30	\N	261	\N	\N	\N
20	sree lakshmi kaveri	Dornadula	Kavya@gmail.com	$2b$10$ai3ICQcdwOshePEqzoDqWuxO2HdLf/SnEuSLUOW8p3r2z/4m83f1.	149	141	188	2023-08-21 17:50:24.69947+05:30	98998	298	7969686986	t	35	35	35	2023-08-21 17:50:24.69947+05:30	2023-08-28 16:51:18.015+05:30	\N	257	\N	\N	\N
19	mustafa	MD	mustafa@gmail.com	$2b$10$ai3ICQcdwOshePEqzoDqWuxO2HdLf/SnEuSLUOW8p3r2z/4m83f1.	143	139	186	2023-08-18 15:26:41.935306+05:30	7868	270	9899787779	t	35	35	35	2023-08-18 15:26:41.935306+05:30	2023-08-28 16:51:18.015+05:30	\N	261	\N	\N	\N
24	rad	ha	radhareddy@gmail.com	$2b$10$ai3ICQcdwOshePEqzoDqWuxO2HdLf/SnEuSLUOW8p3r2z/4m83f1.	151	143	190	2023-08-24 12:14:29.695623+05:30	1255	305	456231	t	35	35	35	2023-08-24 12:14:29.695623+05:30	2023-08-28 16:51:18.015+05:30	\N	239	\N	\N	\N
21	Sisira	D	sisira@gmail.com	$2b$10$ai3ICQcdwOshePEqzoDqWuxO2HdLf/SnEuSLUOW8p3r2z/4m83f1.	143	145	187	2023-08-23 15:25:08.974796+05:30	989080	298	658098098	t	35	35	35	2023-08-23 15:25:08.974796+05:30	2023-08-28 16:51:18.015+05:30	\N	245	\N	\N	\N
25	sree	L	kav@gmail.com	$2b$10$ai3ICQcdwOshePEqzoDqWuxO2HdLf/SnEuSLUOW8p3r2z/4m83f1.	151	146	187	2023-08-24 13:05:57.164783+05:30	9080	300	879879877	t	35	35	35	2023-08-24 13:05:57.164783+05:30	2023-08-28 16:51:18.015+05:30	\N	250	\N	\N	\N
27	krishna	god	krishna@federalsoftsystems.com	$2b$10$ai3ICQcdwOshePEqzoDqWuxO2HdLf/SnEuSLUOW8p3r2z/4m83f1.	153	149	191	2023-08-25 10:21:02.936288+05:30	FSS0404	305	9998885556	t	35	35	35	2023-08-25 10:21:02.936288+05:30	2023-08-28 16:51:18.015+05:30	\N	266	f	\N	\N
34	Gomathi	Krishnan	gomathi.k@federalsoftsystems.com	$2b$10$ai3ICQcdwOshePEqzoDqWuxO2HdLf/SnEuSLUOW8p3r2z/4m83f1.	153	149	191	2023-08-25 11:19:06.439131+05:30	FSS0404	305	9998885656	t	35	35	35	2023-08-25 11:19:06.439131+05:30	2023-08-28 16:51:18.015+05:30	\N	266	f	\N	\N
35	D	Kavyaaa	sreelakshmikaveri.d@federalsoftsystems.com	$2b$10$ai3ICQcdwOshePEqzoDqWuxO2HdLf/SnEuSLUOW8p3r2z/4m83f1.	152	146	194	2023-08-25 12:29:21.251707+05:30	7656	303	7687687456	t	35	35	35	2023-08-25 12:29:21.251707+05:30	2023-08-28 16:51:18.015+05:30	\N	250	f	\N	\N
38	Gomath	Krishan	gomath.k@federalsoftsystems.com	$2b$10$ST2OcNAaUr5PlGE0m0kDZOoS49K2Lz4SAT9zTKyrDd3poNiD3hbra	153	149	191	2023-08-28 16:54:30.697372+05:30	FSS0404	305	999888656	t	35	35	\N	2023-08-28 16:54:30.697372+05:30	2023-08-28 16:54:30.697372+05:30	\N	266	f	\N	\N
16	Radha	Reddy	radha@gmail.com	$2b$10$W4PsrMotISQtWEt6a084We4uueTk6aCBCE5IVwq8wrtJClLwYFXOO	142	132	157	2023-08-11 11:10:50.041055+05:30	2342	288	898989890	t	35	35	35	2023-08-11 11:10:50.041055+05:30	2023-08-28 16:51:18.015+05:30	\N	249	\N	\N	\N
15	kashifa	R	kashifa.s@federalsoftsystems.com	$2b$10$23rhIGQthxQUGuNmA4qMVuoPsjLeQrXpLD8Y6PLUJjKQDnKhr2Ape	141	131	152	2023-08-11 11:04:42.940995+05:30	FSS0407	270	12325230	t	35	35	35	2023-08-11 11:04:42.940995+05:30	2023-08-28 16:51:18.015+05:30	\N	242	\N	\N	\N
23	\N	\N	venkatesh5256@gmail.com	$2b$10$Z2y5Jx1HIFHoqtv/C61aKeo45Q.GHT0Thn8n2gbvpxwlcXky.1Npq	\N	\N	\N	2023-08-24 10:04:15.116438+05:30	\N	\N	\N	t	35	35	35	2023-08-24 10:04:15.116438+05:30	2023-08-28 16:51:18.015+05:30	\N	\N	\N	\N	\N
32	krish	kkk	mathig.krishnaa@gmail.com	$2b$10$ai3ICQcdwOshePEqzoDqWuxO2HdLf/SnEuSLUOW8p3r2z/4m83f1.	53	132	157	2023-08-25 10:43:07.054253+05:30	FSS04032	288	858587455	t	35	35	35	2023-08-25 10:43:07.054253+05:30	2023-08-28 16:51:18.015+05:30	\N	249	f	\N	\N
29	krishna	kk	mathig.krishna@gmail.com	$2b$10$ai3ICQcdwOshePEqzoDqWuxO2HdLf/SnEuSLUOW8p3r2z/4m83f1.	53	132	157	2023-08-25 10:36:16.597525+05:30	FSS04032	288	123112133	t	35	35	35	2023-08-25 10:36:16.597525+05:30	2023-08-28 16:51:18.015+05:30	\N	249	f	\N	\N
53	aravind	jai	aravindhan.j@federalsoftsystems.com	$2b$10$2dASmIjRZj.p3jTatMjy.OBA2m/7MrOZZ9C9BlUBrL.Yc./F4xvVK	155	155	197	2024-01-30 11:44:36.898238+05:30	fssb32	4	1234567878	t	70	70	\N	2024-01-30 11:44:36.898238+05:30	2024-01-30 11:44:36.898238+05:30	\N	11	f	\N	\N
54	sathvika	eswara	sathvika.e@federalsoftsystems.com	$2b$10$d2FTXEpa3G1eqhOqoGTLUeZcGES1E5IlZhUUDkrT/gNHvXbz/6ESe	155	155	197	2024-01-30 12:47:35.296379+05:30	fsss70	1	7654321567	t	70	70	\N	2024-01-30 12:47:35.296379+05:30	2024-01-30 12:47:35.296379+05:30	\N	1	f	\N	\N
56	test	test	test@gmail.com	$2b$10$0SfqDp8ltoAzck44FEN1gubrx/GSY58YfEqKQdn/Bnnx0/VRUu3Pi	155	155	197	2024-01-30 15:10:00.719726+05:30	fss07	1	2345675764	f	70	70	\N	2024-01-30 15:10:00.719726+05:30	2024-01-30 15:10:00.719726+05:30	\N	2	f	\N	\N
57	Jp	Jay	jparavinth164@gmail.com	$2b$10$oaZpzRYiSCq6Tnryd3ISAeVrFlF.94fxegvDc45iRSYHJnsIBQy06	154	160	197	2024-02-06 11:17:45.886395+05:30	5055	4	8056540832	f	70	70	\N	2024-02-06 11:17:45.886395+05:30	2024-02-06 11:17:45.886395+05:30	\N	11	f	\N	t
58	Zapier	J	jparavinth160@gmail.com	$2b$10$FKMSt2P1c89W.Mye6OCi.e9V3C2kcIIFx2SlA.6w9G./8r58G9vse	156	160	197	2024-02-15 10:18:41.813034+05:30	451	4	8056540853	t	70	70	\N	2024-02-15 10:18:41.813034+05:30	2024-02-15 10:18:41.813034+05:30	\N	10	f	\N	\N
59	sergeant	arv	jpjay45@gmail.com	$2b$10$l/AuHmxR4zqvcDwxjhKu2OmY2JVsVMGvMAUwJLcHFb/CK5jvW7t66	156	161	197	2024-02-15 11:29:25.364905+05:30	546	4	5252525425	t	70	70	\N	2024-02-15 11:29:25.364905+05:30	2024-02-15 11:29:25.364905+05:30	\N	10	f	\N	\N
60	liya	shree	liya04@gmail.com	$2b$10$Yt8k11M3KJEIpoNZM7NHreb8/E7tnNgBv/0gK/Q66sGX0wXHswXqC	156	160	197	2024-02-15 11:45:11.508571+05:30	652	2	8056542025	t	70	70	\N	2024-02-15 11:45:11.508571+05:30	2024-02-15 11:45:11.508571+05:30	\N	3	f	\N	\N
61	suresh	R	suresh65@gmail.com	$2b$10$19spVkYUgAm0f20r6P1bSuuhL6FLENkhHVFssTzRdlLnXo9Gfuy.C	155	160	196	2024-02-15 11:47:24.250682+05:30	856	5	8056542589	t	70	70	\N	2024-02-15 11:47:24.250682+05:30	2024-02-15 11:47:24.250682+05:30	\N	12	f	\N	\N
62	sabarish	raja	sabarish45@gmail.com	$2b$10$EUUAY8KuMWvejFj9O44WGORCt1OzZf3R/2LXxtMRXWlYenpOrvvb.	156	161	197	2024-02-15 11:48:46.909263+05:30	785	4	4545454565	t	70	70	\N	2024-02-15 11:48:46.909263+05:30	2024-02-15 11:48:46.909263+05:30	\N	10	f	\N	\N
63	ajith	kumar	ajith59@gmail.com	$2b$10$0zNCKegnxVNvY4y0zyTSHOCJVWH2PlMffBBNW4V6e7djA3ynnWlC6	156	160	197	2024-02-15 11:52:32.307069+05:30	852	4	5658525425	t	70	70	\N	2024-02-15 11:52:32.307069+05:30	2024-02-15 11:52:32.307069+05:30	\N	10	f	\N	\N
52	venu	gopal	venugopal.a@federalsoftsystems.com	$2b$10$2FmdwFIHKI/ZgXnx1GOqrOUW6XL6LeAwHAxot2syjqEafUaCIg0pC	155	155	197	2024-01-30 11:31:08.025596+05:30	fss0090	3	9160908482	t	70	70	\N	2024-01-30 11:31:08.025596+05:30	2024-01-30 11:31:08.025596+05:30	userprofilepic/1708057372935.jpg	6	f	920837	\N
64	groot	gaurdian	groot45@gmail.com	$2b$10$noeTgbBv1eO6DlSz4RsE4.d3vmuUfHRT1wmoc9SOY9q/Ig9laNGlq	156	164	197	2024-02-22 15:03:51.82068+05:30	0452	2	          	t	70	70	\N	2024-02-22 15:03:51.82068+05:30	2024-02-22 15:03:51.82068+05:30	\N	3	f	\N	\N
\.


--
-- Data for Name: payment_statuses; Type: TABLE DATA; Schema: public; Owner: crb_dev_user
--

COPY public.payment_statuses (id, name) FROM stdin;
1	INIT
2	USER DROP
3	CANCELLED
4	FAILED
5	SUCCESS
6	PROCESS
7	REFUND
1	INIT
2	USER DROP
3	CANCELLED
4	FAILED
5	SUCCESS
6	PROCESS
7	REFUND
1	INIT
2	USER DROP
3	CANCELLED
4	FAILED
5	SUCCESS
6	PROCESS
7	REFUND
\.


--
-- Data for Name: permissions; Type: TABLE DATA; Schema: public; Owner: crb_dev_user
--

COPY public.permissions (id, name, key, status) FROM stdin;
1	Dashboard	dashboard	t
2	New Booking	new_booking	t
3	Edit Booking	edit_booking	t
4	Delete Booking	delete_booking	t
5	All Master	all_master	t
6	Locations	locations	t
7	Buildings	buildings	t
8	Floors	floors	t
9	Rooms	rooms	t
10	Amenity	amenity	t
11	Room Service	room_service	t
12	Department	department	t
13	Designation	designation	t
14	Role Master	role_master	t
15	User Access Management	user_access_management	t
16	Add Location	add_location	t
17	Edit Location	edit_location	t
18	Delete Location	delete_location	t
19	Add Building	add_building	t
20	Edit Building	edit_building	t
21	Delete Building	delete_building	t
22	Add Floor	add_floor	t
23	Edit Floor	edit_floor	t
24	Delete Floor	delete_floor	t
25	Add Room	add_room	t
26	Edit Room	edit_room	t
27	Delete Room	delete_room	t
28	Add Amenity	add_amenity	t
29	Edit Amenity	edit_amenity	t
30	Delete Amenity	delete_amenity	t
31	Add Room Service	add_room_service	t
32	Edit Room Service	edit_room_service	t
33	Delete Room Service	delete_room_service	t
34	Add Department	add_department	t
35	Edit Department	edit_department	t
36	Delete Department	delete_department	t
37	Add Designation	add_designation	t
38	Edit Designation	edit_designation	t
39	Delete Designation	delete_designation	t
40	Add Role	add_role	t
41	Edit Role	edit_role	t
42	Delete Role	delete_role	t
43	Add User	add_user	t
44	Edit User	edit_user	t
45	Delete User	delete_user	t
46	Booking List	booking_list	t
47	All Settings	all_settings	t
48	Profile	profile	t
49	Configuration	configuration	t
50	Room Configuration	room_configuration	t
51	ACL	acl	t
52	Configuration Company Details	configuration_company_details	t
53	Configuration Custom Layout	confirguration_custom_layout	t
54	All Location Booking Management	all_location_booking_management	t
55	All Building Booking Management	all_building_booking_management	t
\.


--
-- Data for Name: tax; Type: TABLE DATA; Schema: public; Owner: crb_dev_user
--

COPY public.tax (id, tax_name, type, value, active, createdby, updatedby, createdat, updatedat) FROM stdin;
\.


--
-- Data for Name: testtax; Type: TABLE DATA; Schema: public; Owner: crb_dev_user
--

COPY public.testtax (id, tax_name, type, value, active, createdby, updatedby, createdat, updatedat) FROM stdin;
\.


--
-- Data for Name: userpermissions; Type: TABLE DATA; Schema: public; Owner: crb_dev_user
--

COPY public.userpermissions (id, permission_id, role_id) FROM stdin;
176	18	155
178	20	155
179	21	155
180	22	155
181	23	155
182	24	155
183	25	155
184	26	155
185	27	155
186	28	155
187	29	155
188	30	155
189	31	155
190	32	155
191	33	155
192	34	155
193	35	155
194	36	155
195	37	155
196	38	155
197	39	155
198	40	155
199	41	155
200	42	155
201	43	155
203	45	155
204	46	155
212	54	155
213	55	155
214	56	155
216	2	155
217	3	155
218	4	155
226	6	160
227	7	160
228	8	160
229	9	160
230	10	160
240	1	155
246	16	155
247	17	155
248	44	155
249	5	155
250	6	155
251	7	155
252	8	155
253	9	155
254	10	155
255	11	155
256	12	155
257	13	155
258	14	155
259	15	155
262	51	160
265	52	160
266	53	160
267	54	160
268	55	160
271	53	155
272	52	155
273	51	155
276	49	155
277	48	155
278	47	155
279	50	155
280	47	160
281	5	160
282	11	160
283	12	160
284	13	160
285	14	160
286	15	160
287	50	160
289	19	155
\.


--
-- Name: booking_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crb_dev_user
--

SELECT pg_catalog.setval('public.booking_status_id_seq', 1, false);


--
-- Name: crbm_aminities_amenityid_seq; Type: SEQUENCE SET; Schema: public; Owner: crb_dev_user
--

SELECT pg_catalog.setval('public.crbm_aminities_amenityid_seq', 132, true);


--
-- Name: crbm_notification_type_notification_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crb_dev_user
--

SELECT pg_catalog.setval('public.crbm_notification_type_notification_type_id_seq', 1, false);


--
-- Name: crbm_payment_statuses_statusid_seq; Type: SEQUENCE SET; Schema: public; Owner: crb_dev_user
--

SELECT pg_catalog.setval('public.crbm_payment_statuses_statusid_seq', 1, false);


--
-- Name: crbm_roomservice_room_service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crb_dev_user
--

SELECT pg_catalog.setval('public.crbm_roomservice_room_service_id_seq', 46, true);


--
-- Name: crbm_subscription_features_feature_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crb_dev_user
--

SELECT pg_catalog.setval('public.crbm_subscription_features_feature_id_seq', 1, false);


--
-- Name: crbm_subscription_plans_plan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crb_dev_user
--

SELECT pg_catalog.setval('public.crbm_subscription_plans_plan_id_seq', 33, true);


--
-- Name: crbm_tax_info_tax_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crb_dev_user
--

SELECT pg_catalog.setval('public.crbm_tax_info_tax_id_seq', 1, false);


--
-- Name: crbm_user_status_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crb_dev_user
--

SELECT pg_catalog.setval('public.crbm_user_status_status_id_seq', 1, false);


--
-- Name: crbt_bookings_booking_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crb_dev_user
--

SELECT pg_catalog.setval('public.crbt_bookings_booking_id_seq', 16, true);


--
-- Name: crbt_buildings_building_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crb_dev_user
--

SELECT pg_catalog.setval('public.crbt_buildings_building_id_seq', 24, true);


--
-- Name: crbt_companytimings_companytimings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crb_dev_user
--

SELECT pg_catalog.setval('public.crbt_companytimings_companytimings_id_seq', 6, true);


--
-- Name: crbt_departments_department_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crb_dev_user
--

SELECT pg_catalog.setval('public.crbt_departments_department_id_seq', 198, true);


--
-- Name: crbt_designations_designation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crb_dev_user
--

SELECT pg_catalog.setval('public.crbt_designations_designation_id_seq', 156, true);


--
-- Name: crbt_floors_floor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crb_dev_user
--

SELECT pg_catalog.setval('public.crbt_floors_floor_id_seq', 40, true);


--
-- Name: crbt_locations_location_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crb_dev_user
--

SELECT pg_catalog.setval('public.crbt_locations_location_id_seq', 41, true);


--
-- Name: crbt_notifications_notificationid_seq; Type: SEQUENCE SET; Schema: public; Owner: crb_dev_user
--

SELECT pg_catalog.setval('public.crbt_notifications_notificationid_seq', 1, false);


--
-- Name: crbt_payment_payment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crb_dev_user
--

SELECT pg_catalog.setval('public.crbt_payment_payment_id_seq', 1, false);


--
-- Name: crbt_queue_queueid_seq; Type: SEQUENCE SET; Schema: public; Owner: crb_dev_user
--

SELECT pg_catalog.setval('public.crbt_queue_queueid_seq', 1, false);


--
-- Name: crbt_roles_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crb_dev_user
--

SELECT pg_catalog.setval('public.crbt_roles_role_id_seq', 164, true);


--
-- Name: crbt_rooms_room_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crb_dev_user
--

SELECT pg_catalog.setval('public.crbt_rooms_room_id_seq', 109, true);


--
-- Name: crbt_sms_credits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crb_dev_user
--

SELECT pg_catalog.setval('public.crbt_sms_credits_id_seq', 1, false);


--
-- Name: crbt_sms_credits_usage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crb_dev_user
--

SELECT pg_catalog.setval('public.crbt_sms_credits_usage_id_seq', 1, false);


--
-- Name: crbt_smtp_settings_setting_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crb_dev_user
--

SELECT pg_catalog.setval('public.crbt_smtp_settings_setting_id_seq', 4, true);


--
-- Name: crbt_system_users_system_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crb_dev_user
--

SELECT pg_catalog.setval('public.crbt_system_users_system_user_id_seq', 74, true);


--
-- Name: crbt_user_subsricption_subscriptionid_seq; Type: SEQUENCE SET; Schema: public; Owner: crb_dev_user
--

SELECT pg_catalog.setval('public.crbt_user_subsricption_subscriptionid_seq', 1, false);


--
-- Name: crbt_users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crb_dev_user
--

SELECT pg_catalog.setval('public.crbt_users_user_id_seq', 64, true);


--
-- Name: payment_statuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crb_dev_user
--

SELECT pg_catalog.setval('public.payment_statuses_id_seq', 7, true);


--
-- Name: permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crb_dev_user
--

SELECT pg_catalog.setval('public.permissions_id_seq', 1, false);


--
-- Name: tax_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crb_dev_user
--

SELECT pg_catalog.setval('public.tax_id_seq', 1, false);


--
-- Name: testtax_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crb_dev_user
--

SELECT pg_catalog.setval('public.testtax_id_seq', 1, false);


--
-- Name: userpermissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: crb_dev_user
--

SELECT pg_catalog.setval('public.userpermissions_id_seq', 289, true);


--
-- Name: SequelizeMeta SequelizeMeta_pkey; Type: CONSTRAINT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);


--
-- Name: booking_status booking_status_pkey; Type: CONSTRAINT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.booking_status
    ADD CONSTRAINT booking_status_pkey PRIMARY KEY (id);


--
-- Name: crbm_aminities crbm_aminities_pkey; Type: CONSTRAINT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbm_aminities
    ADD CONSTRAINT crbm_aminities_pkey PRIMARY KEY (amenityid);


--
-- Name: crbm_notification_type crbm_notification_type_pkey; Type: CONSTRAINT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbm_notification_type
    ADD CONSTRAINT crbm_notification_type_pkey PRIMARY KEY (notification_type_id);


--
-- Name: crbm_payment_statuses crbm_payment_statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbm_payment_statuses
    ADD CONSTRAINT crbm_payment_statuses_pkey PRIMARY KEY (statusid);


--
-- Name: crbm_payment_statuses crbm_payment_statuses_statusname_key; Type: CONSTRAINT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbm_payment_statuses
    ADD CONSTRAINT crbm_payment_statuses_statusname_key UNIQUE (statusname);


--
-- Name: crbm_roomservice crbm_roomservice_pkey; Type: CONSTRAINT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbm_roomservice
    ADD CONSTRAINT crbm_roomservice_pkey PRIMARY KEY (room_service_id);


--
-- Name: crbm_subscription_features crbm_subscription_features_pkey; Type: CONSTRAINT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbm_subscription_features
    ADD CONSTRAINT crbm_subscription_features_pkey PRIMARY KEY (feature_id);


--
-- Name: crbm_subscription_plans crbm_subscription_plans_pkey; Type: CONSTRAINT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbm_subscription_plans
    ADD CONSTRAINT crbm_subscription_plans_pkey PRIMARY KEY (plan_id);


--
-- Name: crbm_tax_info crbm_tax_info_pkey; Type: CONSTRAINT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbm_tax_info
    ADD CONSTRAINT crbm_tax_info_pkey PRIMARY KEY (tax_id);


--
-- Name: crbm_tax_info crbm_tax_info_tax_name_key; Type: CONSTRAINT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbm_tax_info
    ADD CONSTRAINT crbm_tax_info_tax_name_key UNIQUE (tax_name);


--
-- Name: crbm_user_status crbm_user_status_pkey; Type: CONSTRAINT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbm_user_status
    ADD CONSTRAINT crbm_user_status_pkey PRIMARY KEY (status_id);


--
-- Name: crbt_bookings crbt_bookings_pkey; Type: CONSTRAINT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbt_bookings
    ADD CONSTRAINT crbt_bookings_pkey PRIMARY KEY (booking_id);


--
-- Name: crbt_buildings crbt_buildings_pkey; Type: CONSTRAINT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbt_buildings
    ADD CONSTRAINT crbt_buildings_pkey PRIMARY KEY (building_id);


--
-- Name: crbt_departments crbt_departments_pkey; Type: CONSTRAINT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbt_departments
    ADD CONSTRAINT crbt_departments_pkey PRIMARY KEY (department_id);


--
-- Name: crbt_designations crbt_designations_pkey; Type: CONSTRAINT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbt_designations
    ADD CONSTRAINT crbt_designations_pkey PRIMARY KEY (designation_id);


--
-- Name: crbt_floors crbt_floors_pkey; Type: CONSTRAINT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbt_floors
    ADD CONSTRAINT crbt_floors_pkey PRIMARY KEY (floor_id);


--
-- Name: crbt_locations crbt_locations_pkey; Type: CONSTRAINT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbt_locations
    ADD CONSTRAINT crbt_locations_pkey PRIMARY KEY (location_id);


--
-- Name: crbt_notifications crbt_notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbt_notifications
    ADD CONSTRAINT crbt_notifications_pkey PRIMARY KEY (notificationid);


--
-- Name: crbt_payment crbt_payment_pkey; Type: CONSTRAINT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbt_payment
    ADD CONSTRAINT crbt_payment_pkey PRIMARY KEY (payment_id);


--
-- Name: crbt_queue crbt_queue_pkey; Type: CONSTRAINT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbt_queue
    ADD CONSTRAINT crbt_queue_pkey PRIMARY KEY (queueid);


--
-- Name: crbt_roles crbt_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbt_roles
    ADD CONSTRAINT crbt_roles_pkey PRIMARY KEY (role_id);


--
-- Name: crbt_roles crbt_roles_role_name_key; Type: CONSTRAINT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbt_roles
    ADD CONSTRAINT crbt_roles_role_name_key UNIQUE (role_name);


--
-- Name: crbt_rooms crbt_rooms_pkey; Type: CONSTRAINT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbt_rooms
    ADD CONSTRAINT crbt_rooms_pkey PRIMARY KEY (room_id);


--
-- Name: crbt_sms_credits crbt_sms_credits_pkey; Type: CONSTRAINT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbt_sms_credits
    ADD CONSTRAINT crbt_sms_credits_pkey PRIMARY KEY (id);


--
-- Name: crbt_sms_credits_usage crbt_sms_credits_usage_pkey; Type: CONSTRAINT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbt_sms_credits_usage
    ADD CONSTRAINT crbt_sms_credits_usage_pkey PRIMARY KEY (id);


--
-- Name: crbt_smtp_settings crbt_smtp_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbt_smtp_settings
    ADD CONSTRAINT crbt_smtp_settings_pkey PRIMARY KEY (setting_id);


--
-- Name: crbt_system_users crbt_system_users_company_gst_number_key; Type: CONSTRAINT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbt_system_users
    ADD CONSTRAINT crbt_system_users_company_gst_number_key UNIQUE (company_gst_number);


--
-- Name: crbt_system_users crbt_system_users_email_key; Type: CONSTRAINT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbt_system_users
    ADD CONSTRAINT crbt_system_users_email_key UNIQUE (email);


--
-- Name: crbt_system_users crbt_system_users_phone_number_key; Type: CONSTRAINT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbt_system_users
    ADD CONSTRAINT crbt_system_users_phone_number_key UNIQUE (phone_number);


--
-- Name: crbt_system_users crbt_system_users_pkey; Type: CONSTRAINT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbt_system_users
    ADD CONSTRAINT crbt_system_users_pkey PRIMARY KEY (system_user_id);


--
-- Name: crbt_user_subscription crbt_user_subsricption_pkey; Type: CONSTRAINT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbt_user_subscription
    ADD CONSTRAINT crbt_user_subsricption_pkey PRIMARY KEY (subscriptionid);


--
-- Name: crbt_users crbt_users_email_key; Type: CONSTRAINT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbt_users
    ADD CONSTRAINT crbt_users_email_key UNIQUE (email);


--
-- Name: crbt_users crbt_users_mobile_number_key; Type: CONSTRAINT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbt_users
    ADD CONSTRAINT crbt_users_mobile_number_key UNIQUE (mobile_number);


--
-- Name: crbt_users crbt_users_pkey; Type: CONSTRAINT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.crbt_users
    ADD CONSTRAINT crbt_users_pkey PRIMARY KEY (user_id);


--
-- Name: permissions permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);


--
-- Name: tax tax_pkey; Type: CONSTRAINT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.tax
    ADD CONSTRAINT tax_pkey PRIMARY KEY (id);


--
-- Name: testtax testtax_pkey; Type: CONSTRAINT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.testtax
    ADD CONSTRAINT testtax_pkey PRIMARY KEY (id);


--
-- Name: userpermissions userpermissions_pkey; Type: CONSTRAINT; Schema: public; Owner: crb_dev_user
--

ALTER TABLE ONLY public.userpermissions
    ADD CONSTRAINT userpermissions_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

