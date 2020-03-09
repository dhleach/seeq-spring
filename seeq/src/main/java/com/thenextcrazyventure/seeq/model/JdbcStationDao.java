package com.thenextcrazyventure.seeq.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JdbcStationDao implements StationDao{

	private JdbcTemplate jdbcTemplate;

	@Autowired
	public JdbcStationDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public List<Station> getAllStations() {
		List<Station> allStations = new ArrayList<Station>();
		String sqlSelectAllStations = "SELECT * FROM station";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectAllStations);
		while(results.next()) {
			Station newStation = mapRowToStation(results);
			allStations.add(newStation);
		}
		return allStations;
	}

	@Override
	public void save(Station station) {
		int id = getNextId();
		String sqlInsertStation = "INSERT INTO station(id, callsign, frequency, type, city, state, country, lat, lon) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
		jdbcTemplate.update(sqlInsertStation, id, station.getCallsign(), station.getFrequency(), station.getType(), station.getCity(), station.getState(), station.getCountry(), station.getLat(), station.getLon());
		station.setId(id);
	}
	
	private int getNextId() {
		String sqlSelectNextId = "SELECT NEXTVAL('seq_station_id')";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectNextId);
		Integer id = null;
		if (results.next()) {
			id = results.getInt(1);
		} else {
			throw new RuntimeException("Something strange happened, unable to select next station id from sequence");
		}
		return id;
		
	}
	
	
	public Station mapRowToStation(SqlRowSet results) {
		Station myStation = new Station();
		myStation.setId(results.getInt("id"));
		myStation.setCallsign(results.getString("callsign"));
		myStation.setFrequency(results.getFloat("frequency"));
		myStation.setType(results.getString("type"));
		myStation.setCity(results.getString("city"));
		myStation.setState(results.getString("state"));
		myStation.setCountry(results.getString("country"));
		myStation.setLat(results.getString("lat"));
		myStation.setLon(results.getString("lon"));
		return myStation;
	}
	
}
