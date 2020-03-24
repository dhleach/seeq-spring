document.addEventListener("DOMContentLoaded", (event) => {
	const locationButton = document.querySelector(".location-button");
	locationButton.addEventListener("click", (event) => {
		locationButton.setAttribute("color", "red");
		locationButton.innerText = "Clicked!";
		
		navigator.geolocation.getCurrentPosition( (position) => {
			let latLon = position.coords;
			console.log("Lat: " + latLon.latitude);
			console.log("Lon: " + latLon.longitude);
			console.log("Accuracy in meters: " + latLon.accuracy);
			let myLatBox = document.getElementById("myLat");
			let myLonBox = document.getElementById("myLon");
			myLatBox.innerText = latLon.latitude;
			myLonBox.innerText = latLon.longitude;
		});
		
	});
	
});