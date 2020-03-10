<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
	    <meta charset="UTF-8">
		<title>Seeq Radio</title>
		<c:url value="/css/seeq.css" var="cssHref" />
    	<link rel="stylesheet" href="${cssHref}">
	</head>
	
	<body>
		<header>
			<c:url value="/" var="homePageHref" />
			<c:url value="/img/seek.png" var="logoSrc" />
			<a href="${homePageHref}">
				<img src="${logoSrc}" alt="Seeq Logo" />
			</a>
			<h1>The Seeq App</h1>
			<p>Find your new Favorite Radio Station</p>
		</header>
		
		<nav>
			<ul>
				<li><a href="allStations">View All Stations</a></li>
	            <li><a href="#">Search Nearby Stations By Type</a></li>
				<li><a href="addStation">Add a New Station</a></li>
				<li><a href="addLocation">Input your Location</a></li>
				<li><a href="viewLocations">View Existing Locations</a></li>
			</ul>
		</nav>