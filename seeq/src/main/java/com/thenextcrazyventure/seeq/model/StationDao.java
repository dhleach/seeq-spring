package com.thenextcrazyventure.seeq.model;

import java.util.List;

public interface StationDao {

	public List<Station> getAllStations();
	
	public void save(Station station);
	
}
