<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/common/header.jsp" />
		
		<h1>All Locations in the Database are below</h1>
		
		<button class="location-button">
			Use My Location (testing)
		</button>
		
		<div id="googleMap" style="width:50%; height:400px;">
		</div>
		
		
		<table>
			<tr>
				<th>Nickname</th>
				<th>Latitude</th>
				<th>Longitude</th>
				<th>Update Your Location?</th>
			</tr>
			<tr>
				<th>Your Location</th>
				<th id="myLat">${myLocation.latitude}</th>
				<th id="myLon">${myLocation.longitude}</th>
				<th><a href="#">Update</a></th>
			</tr>
			<c:forEach items="${locations}" var="location">
				<tr>
					<td>${location.nickname}</td>
					<td>${location.latitude}</td>
					<td>${location.longitude}</td>
					<td><a href="updateLocation?id=${location.id}">Update</a></td>
				</tr>
			</c:forEach>
		
		</table>
		
		<script src="js/myLocation.js"></script>
		<script>
			function myMap(){
				let mapProp= {
						//if(${myLocation.decLat}!=null){
							center:new google.maps.LatLng(${myLocation.decLat}, ${myLocation.decLon}),
							zoom:15,
						//} else {
						//	center:new google.maps.LatLng(40, -80}),
						//	zoom:15,
						//}
				};
				let map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
			}
		</script>
		<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyARDDoAv0icnUp_FTniFcxa9Cg1tsagXa8&callback=myMap"><</script>
		
<c:import url="/WEB-INF/jsp/common/footer.jsp" />