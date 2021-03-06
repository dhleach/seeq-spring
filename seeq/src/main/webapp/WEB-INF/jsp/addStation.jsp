<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/common/header.jsp" />
	
		<h1>Add a New Station to the Database!</h1>
		<c:url var="formAction" value="/addStation" />
		<form method="POST" action="${formAction}" modelAttribute="station">
			<div>
				<div>
					<label for="callsign">(Required) Callsign (ex WKRP): </label>
					<input type="text" name="callsign" id="callsign" />
				</div>
				<div>
					<label for="type">(Required) Type (ex COUNTRY): </label>
					<input type="text" name="type" id="type" />
				</div>
				<div>
					<label for="frequency">(Required) Frequency (ex 95.3): </label>
					<input type="text" name="frequency" id="frequency" />
				</div>
				<div>
					<label for="lat">(Required) Latitude (ex 45-43-28): </label>
					<input type="text" name="lat" id="lat" />
				</div>
				<div>
					<label for="lon">(Required) Longitude (ex 70-45-23): </label>
					<input type="text" name="lon" id="lon" />
				</div>
				<div>
					<label for="city">City: </label>
					<input type="text" name="city" id="city" />
				</div>
				<div>
					<label for="state">State: </label>
					<input type="text" name="state" id="state" />
				</div>
				<div>
					<label for="country">Country: </label>
					<input type="text" name="country" id="country" />
				</div>
				<input type="submit" value="Add New Station">
			</div>
		</form>

<c:import url="/WEB-INF/jsp/common/footer.jsp" />