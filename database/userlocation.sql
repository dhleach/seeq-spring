DROP TABLE IF EXISTS station;
DROP SEQUENCE IF EXISTS seq_station_id;

DROP TABLE IF EXISTS user;
DROP SEQUENCE IF EXISTS seq_user_id;

DROP TABLE IF EXISTS location;
DROP SEQUENCE IF EXISTS seq_location_id;

CREATE SEQUENCE seq_location_id;
CREATE TABLE location
(
    id INTEGER PRIMARY KEY DEFAULT NEXTVAL('seq_location_id'),
    lat VARCHAR(20) NOT NULL,
    lon VARCHAR(20) NOT NULL,

    
);

CREATE SEQUENCE seq_user_id;
CREATE TABLE user
(
    id INTEGER PRIMARY KEY DEFAULT NEXTVAL('seq_user_id'),
);

CREATE SEQUENCE seq_station_id;
CREATE TABLE station
(
    id INTEGER PRIMARY KEY DEFAULT NEXTVAL('seq_station_id'),
    callsign VARCHAR(20) NOT NULL,
    frequency NUMERIC (3,1) NOT NULL,
    type VARCHAR(100) NOT NULL,
    city VARCHAR(20),
    state VARCHAR(20),
    country VARCHAR(20),
    lat VARCHAR(20) NOT NULL,
    lon VARCHAR(20) NOT NULL,
    location_id INTEGER

);