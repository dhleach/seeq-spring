package com.thenextcrazyventure.seeq;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.thenextcrazyventure.seeq.model.Station;
import com.thenextcrazyventure.seeq.model.StationDao;

@Controller
public class StationController {

	@Autowired
	private StationDao stationDao;
	
	@RequestMapping("/allStations")
	public String displayAllStations(ModelMap map) {
		List<Station> allStations = new ArrayList<Station>();
		allStations = stationDao.getAllStations();
		map.addAttribute("stations", allStations);
		
		return "allStations";
	}
	
	@RequestMapping(path="/addStation", method = RequestMethod.GET)
	public String displayAddStationPage() {
		return"addStation";
	}
	
	@RequestMapping(path="/addStation", method = RequestMethod.POST)
	public String saveStationAndReturnHome(@ModelAttribute("station") Station station, RedirectAttributes flash) {
		stationDao.save(station);
		flash.addFlashAttribute("station", station);
		return "redirect:/stationAdded";
	}
	
	@RequestMapping(path="/stationAdded", method = RequestMethod.GET)
	public String displaySuccessfulAdd() {
		return "stationAdded";
	}
}
