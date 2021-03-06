package com.thenextcrazyventure.seeq.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JdbcLocationDao implements LocationDao {

	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public JdbcLocationDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public void save(Location location) {
		String sqlInsertLocation = "INSERT INTO location(nickname, lat, lon) VALUES(?, ?, ?)";
		jdbcTemplate.update(sqlInsertLocation, location.getNickname(), location.getLatitude(), location.getLongitude());
		
	}

	@Override
	public List<Location> getAllLocations() {
		List<Location> allLocations = new ArrayList<Location>();
		String sqlSelectAllLocations = "SELECT * FROM location";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectAllLocations);
		while(results.next()) {
			Location newLocation = mapRowToLocation(results);
			allLocations.add(newLocation);
		}
		return allLocations;
	}

	@Override
	public Location getLocationById(int id) {
		Location myLocation = new Location();
		String sqlSelectLocationById = "SELECT * FROM location WHERE location.id = ?";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectLocationById, id);
		if(results.next()) {
			myLocation = mapRowToLocation(results);
		}
		return myLocation;
	}

	@Override
	public Location getLocationByNickname(String nickname) {
		// TODO Auto-generated method stub
		return null;
	}
	
	public Location mapRowToLocation(SqlRowSet results) {
		Location myLocation = new Location();
		myLocation.setId(results.getInt("id"));
		myLocation.setLatitude(results.getString("lat"));
		myLocation.setLongitude(results.getString("lon"));
		myLocation.setNickname(results.getString("nickname"));
		return myLocation;
	}
	
	
}
