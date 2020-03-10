<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Seeq Home</title>
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
	
		<h1>Hello, Derek! This is your program!!</h1>
		
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nunc nunc, suscipit vitae tristique in, rutrum eu dolor. Pellentesque eu interdum metus. Praesent in orci at est sodales imperdiet id sit amet lacus. Morbi at mi dictum, finibus ligula quis, consectetur lacus. Cras convallis, risus in vestibulum sollicitudin, felis arcu molestie sapien, eget mattis nunc nisl eget purus. Vestibulum nec orci molestie, pellentesque neque eget, porta odio. Morbi hendrerit rutrum cursus. Aliquam hendrerit dui sed ligula ullamcorper aliquam. Cras interdum tincidunt sapien ac pharetra. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc lobortis a magna eu condimentum. Nullam gravida, elit non ullamcorper scelerisque, dolor arcu congue orci, ac scelerisque ligula risus dignissim felis. Fusce et gravida tortor.

Morbi auctor tempus consequat. Suspendisse nec justo ipsum. Sed gravida odio vel quam euismod faucibus. Curabitur facilisis et ipsum at viverra. Suspendisse potenti. Sed id libero nunc. Vivamus dolor ipsum, facilisis non aliquet sed, egestas in risus. Ut aliquet sit amet nisi ut vulputate. Maecenas ullamcorper aliquet massa, a semper massa ultrices a. Fusce est nibh, mattis iaculis libero et, ullamcorper dapibus ligula. Duis vulputate eleifend eros ut rhoncus. Maecenas convallis interdum erat porta sagittis. Praesent ultrices ipsum quis mi commodo, eu sollicitudin magna ornare. Nullam quis pharetra lectus.

Nunc faucibus auctor sem ut cursus. Maecenas ut tortor fermentum odio finibus consequat sit amet nec dolor. Ut id maximus eros, eu facilisis metus. Sed nisi enim, fermentum vel laoreet pulvinar, pulvinar ut lectus. Donec consequat ut arcu at ultrices. Mauris ut urna commodo, posuere urna sed, eleifend tellus. Proin non justo est. Vivamus id turpis pretium, dictum tellus ut, sodales magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit.

Nulla bibendum vulputate risus, eu gravida lacus blandit in. Vivamus turpis purus, mollis id odio vitae, posuere mattis magna. Donec blandit sapien sed dui interdum varius. Praesent scelerisque neque ut mauris commodo facilisis. Cras posuere accumsan lorem, vitae tristique urna ultricies ac. Donec eleifend imperdiet lectus. Aliquam erat volutpat. Nam a nulla sit amet odio rhoncus vestibulum. Sed mattis ultrices consectetur. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ultrices et augue et tempus.

Mauris vitae malesuada lacus, eget posuere felis. Donec ipsum urna, vulputate at felis ac, efficitur mollis sem. Duis condimentum sit amet sapien consectetur dapibus. Sed mollis pharetra placerat. Nullam congue ante sit amet nisl porttitor, non faucibus risus tempus. Nam sit amet posuere urna, eget laoreet nunc. Curabitur commodo mollis iaculis.</p>
		
	</body>
</html>