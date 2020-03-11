<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/common/header.jsp" />
		
		<h1>All Locations in the Database are below</h1>
		
		<table>
			<tr>
				<th>Nickname</th>
				<th>Latitude</th>
				<th>Longitude</th>
				<th>Update Your Location?</th>
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
		
<c:import url="/WEB-INF/jsp/common/footer.jsp" />