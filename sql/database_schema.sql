DROP TABLE IF EXISTS public.aircraft CASCADE;
CREATE TABLE IF NOT EXISTS public.aircraft
(
    id serial,
    manufacture_year bigint,
    tail_num text,
    number_of_seats double precision
)
;

DROP TABLE IF EXISTS public.airport_weather CASCADE;
CREATE TABLE IF NOT EXISTS public.airport_weather
(
    id serial,
    station text,
    name text,
    date text,
    awnd double precision,
    pgtm double precision,
    prcp double precision,
    snow double precision,
    snwd double precision,
    tavg double precision,
    tmax double precision,
    tmin double precision,
    wdf2 double precision,
    wdf5 double precision,
    wsf2 double precision,
    wsf5 double precision,
    wt01 double precision,
    wt02 double precision,
    wt03 double precision,
    wt04 double precision,
    wt05 double precision,
    wt06 double precision,
    wt07 double precision,
    wt08 double precision,
    wt09 double precision,
    wesd double precision,
    wt10 double precision,
    psun double precision,
    tsun double precision,
    sn32 double precision,
    sx32 double precision,
    tobs double precision,
    wt11 double precision,
    wt18 double precision
)
;

DROP TABLE IF EXISTS public.flight CASCADE;
CREATE TABLE IF NOT EXISTS public.flight
(
    id serial,
    month bigint,
    day_of_month bigint,
    day_of_week bigint,
    op_unique_carrier text,
    tail_num text,
    op_carrier_fl_num bigint,
    origin_airport_id bigint,
    dest_airport_id bigint,
    crs_dep_time bigint,
    dep_time double precision,
    dep_delay_new double precision,
    dep_time_blk text,
    crs_arr_time bigint,
    arr_time double precision,
    arr_delay_new double precision,
    arr_time_blk text,
    cancelled double precision,
    crs_elapsed_time double precision,
    actual_elapsed_time double precision,
    distance double precision,
    distance_group bigint,
    carrier_delay double precision,
    weather_delay double precision,
    nas_delay double precision,
    security_delay double precision,
    late_aircraft_delay double precision,
    year bigint
)
;

DROP TABLE IF EXISTS public.airport_list CASCADE;
CREATE TABLE IF NOT EXISTS public.airport_list
(
    id serial,
    origin_airport_id bigint,
    display_airport_name text ,
    origin_city_name text ,
    name text 
)