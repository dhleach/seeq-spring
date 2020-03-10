package com.thenextcrazyventure.seeq.model;


public class Location {
	
	private long id;
	private String nickname;
	private String latitude;
	private String longitude;
	
	public Location() {
		
	}
	
	public double milesTo(Location otherLocation) {
		double milesBetween;
		double latDiff = Distance.LATCONST * (Distance.convert(otherLocation.latitude) - Distance.convert(this.latitude));
		double lonDiff = Distance.LONCONST * (Distance.convert(otherLocation.longitude) - Distance.convert(this.longitude));
		double a2 = (latDiff * latDiff);
		double b2 = (lonDiff * lonDiff);
		double c2 = a2 + b2;
		milesBetween = Math.sqrt(c2);
		return milesBetween;
	}
	
	//getters and setters
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getLatitude() {
		return latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	public String getLongitude() {
		return longitude;
	}

	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}
	
}
