<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/common/header.jsp" />
		
		<h1>All Stations in the Database are below</h1>
		
		<table>
			<tr>
				<th>Call Sign</th>
				<th>Frequency</th>
				<th>Station Type</th>
				<th>Distance (mi)</th>
			</tr>
			
			<c:forEach items="${stations}" var="station">
				<tr>
					<td>${station.callsign}</td>
					<td>${station.frequency}</td>
					<td>${station.type}</td>
					<td>${station.location.milesTo(myLocation)}</td>
				</tr>
			</c:forEach>
		
		</table>
		
<c:import url="/WEB-INF/jsp/common/footer.jsp" />