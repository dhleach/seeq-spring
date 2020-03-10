package com.thenextcrazyventure.seeq.model;


public class Distance {
	
	//constants to convert latitude degrees to miles
	public static double LATCONST = 69.132; //miles per degree of latitude in W. PA
	public static double LONCONST = 52.958; //miles per degree of longitude in W PA
	
	//method to receive lat or long as string and return as double
	
	public static double convert(String locationString) {
		String[] stringArray = locationString.split("-");
		int deg = Integer.parseInt(stringArray[0]);
		int min = Integer.parseInt(stringArray[1]);
		int sec = Integer.parseInt(stringArray[2]);
		double doubleSec = (double)sec / 60;
		double doubleMin = ((double)min + doubleSec) / 60 ; 
		double doubleLocation = deg + doubleMin;
		//System.out.println(doubleLocation);
		return doubleLocation; 
	}
	
	//method to find distance between two lat long pairs as double
	
	public static double between(String lat1, String lon1, String lat2, String lon2) {
		double latDiff = Distance.LATCONST * (Distance.convert(lat1) - Distance.convert(lat2));
		double lonDiff = Distance.LONCONST * (Distance.convert(lon1) - Distance.convert(lon2));
		double a2 = (latDiff * latDiff);
		double b2 = (lonDiff * lonDiff);
		double c2 = a2 + b2;
		double hypotenuse = Math.sqrt(c2);
		return hypotenuse;
	}
	
}
