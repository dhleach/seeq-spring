package com.thenextcrazyventure.seeq;

@Controller
public class StationController {

	@RequestMapping("/allStations")
	public String displayAllStations() {
		
		return "allStations";
	}
	
}
