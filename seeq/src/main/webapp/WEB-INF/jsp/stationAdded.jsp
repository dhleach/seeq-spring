<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/common/header.jsp" />
		
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
		
<c:import url="/WEB-INF/jsp/common/footer.jsp" />