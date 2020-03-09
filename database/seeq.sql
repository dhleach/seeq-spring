DROP TABLE IF EXISTS station;
DROP SEQUENCE IF EXISTS seq_station_id;
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
    lon VARCHAR(20) NOT NULL

);

INSERT INTO station(callsign, frequency, city, state, country, lat, lon, type) VALUES('ABCD', 90.0, 'Ala', 'AL', 'USA', '40-40-40', '70-70-70', 'COUNTRY');