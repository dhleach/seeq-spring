package com.thenextcrazyventure.seeq;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.thenextcrazyventure.seeq.model.Location;
import com.thenextcrazyventure.seeq.model.LocationDao;
import com.thenextcrazyventure.seeq.model.Station;
import com.thenextcrazyventure.seeq.model.StationDao;

@Controller
public class StationController {

	@Autowired
	private StationDao stationDao;
	@Autowired
	private LocationDao locationDao;
	
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
	
	@RequestMapping(path="/viewLocations", method = RequestMethod.GET)
	public String displayAllLocations(ModelMap map) {
		List<Location> allLocations = new ArrayList<Location>();
		allLocations = locationDao.getAllLocations();
		map.addAttribute("locations", allLocations);
		return "allLocations";
	}
	
	@RequestMapping(path="/addLocation", method = RequestMethod.GET)
	public String displayAddLocationPage() {
		return"addLocation";
	}
	
	@RequestMapping(path="/updateLocation", method = RequestMethod.GET)
	public String updateSessionLocationAndReturnHome(@RequestParam int id, HttpSession session) {
		Location newLocation = locationDao.getLocationById(id);
		session.setAttribute("myLocation", newLocation);
		return"greeting";
	}
	
	@RequestMapping(path="/locationAdded", method = RequestMethod.GET)
	public String displayLocationConfirmationPage(ModelMap map) {
		return"locationAdded";
	}
	
	@RequestMapping(path="/addLocation", method = RequestMethod.POST)
	public String addLocationToMemoryAndReturnHome(@ModelAttribute("location") Location myLocation, HttpServletRequest request, RedirectAttributes flash, HttpSession session) {
		if(request.getParameter("save") != null) {
			locationDao.save(myLocation);
			session.setAttribute("resultString", "saved to the database.");
		} else {
			session.setAttribute("resultString", "saved temporarily.");
		}
		session.setAttribute("myLocation", myLocation);
		return "redirect:/locationAdded";
	}
}
