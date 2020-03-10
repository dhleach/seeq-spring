<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/common/header.jsp" />
		
		<h2>This location ${resultString}</h2>
		
		<table>
			<tr>
				<th>Nickname</th>
				<th>Latitude</th>
				<th>Longitude</th>
			</tr>
			
			
			<tr>
				<td>${myLocation.nickname}</td>
				<td>${myLocation.latitude}</td>
				<td>${myLocation.longitude}</td>
			</tr>
			
		
		</table>
		
<c:import url="/WEB-INF/jsp/common/footer.jsp" />