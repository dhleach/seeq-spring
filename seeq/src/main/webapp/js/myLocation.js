document.addEventListener("DOMContentLoaded", (event) => {
	const locationButton = document.querySelector(".location-button");
	locationButton.addEventListener("click", (event) => {
		locationButton.setAttribute("color", "red");
		locationButton.innerText = "Clicked!";
	});
	
});