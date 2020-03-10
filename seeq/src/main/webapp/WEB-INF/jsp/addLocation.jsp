<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/common/header.jsp" />
	
		<h1>Input Your Location</h1>
		<c:url var="formAction" value="/addLocation" />
		<form method="POST" action="${formAction}" modelAttribute="location">
			<div>
				<div>
					<label for="nickname">Nickname: </label>
					<input type="text" name="nickname" id="nickname" />
				</div>
				<div>
					<label for="latitude">(Required) Latitude (xx-xx-xx): </label>
					<input type="text" name="latitude" id="latitude" />
				</div>
				<div>
					<label for="longitude">(Required) Longitude (xx-xx-xx): </label>
					<input type="text" name="longitude" id="longitude" />
				</div>

				<input type="submit" name="add" value="Use a Temporary Location">
				<input type="submit" name="save" value="Save The Location">
			</div>
		</form>

<c:import url="/WEB-INF/jsp/common/footer.jsp" />