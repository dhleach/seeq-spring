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
				<li><a href="viewLocations">View/Choose an Existing Location (DO THIS FIRST)</a></li>
				<li><a href="addLocation">Create a custom location with or without saving it to database</a></li>
				<li><a href="allStations">View All Stations</a></li>
	            <li><a href="addStation">Add a New Station</a></li>
	            <li><a href="#">Search Nearby Stations By Type (COMING SOON)</a></li>
				


			</ul>
		</nav>