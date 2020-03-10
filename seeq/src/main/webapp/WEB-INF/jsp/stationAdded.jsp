<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
	    <meta charset="UTF-8">
		<title>Station Added Success</title>
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
		</header>
		
		<nav>
			<ul>
				<li><a href="allStations">View All Stations</a></li>
	            <li><a href="#">Search Nearby Stations By Type</a></li>
				<li><a href="addStation">Add a New Station</a></li>
			</ul>
		</nav>
		
		<h1>This Station Successfully Added</h1>
		
		<table>
			<tr>
				<th>Call Sign</th>
				<th>Frequency</th>
				<th>Station Type</th>
			</tr>
			
			
			<tr>
				<td>${station.callsign}</td>
				<td>${station.frequency}</td>
				<td>${station.type}</td>
			</tr>
			
		
		</table>
		
		
	</body>
</html>