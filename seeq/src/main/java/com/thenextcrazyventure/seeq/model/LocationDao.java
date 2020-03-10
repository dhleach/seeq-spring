package com.thenextcrazyventure.seeq.model;

import java.util.List;

public interface LocationDao {

	public void save(Location location);
	
	public List<Location> getAllLocations();
	
	public Location getLocationById(int id);
	
	public Location getLocationByNickname(String nickname);
}
