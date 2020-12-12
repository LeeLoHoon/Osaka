<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TripAndFood:Osaka</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Gugi&family=Nanum+Gothic&family=Noto+Sans+KR:wght@100;300;500&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${path}/resources/css/note.css">

<style>
.bgimg-2, .bgimg-3 {
	background-attachment: fixed;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}

.bgimg-2 {
	background-image: url("${path}/resources/img/chef.jpg");
	min-height: 400px;
}

.bgimg-3 {
	background-image: url("${path}/resources/img/shops.jpg");
	min-height: 400px;
}

@media only screen and (max-device-width: 1600px) {
	.bgimg-2, .bgimg-3 {
		background-attachment: scroll;
		min-height: 400px;
	}
}
</style>

</head>
<body>
<body id="myPage" data-spy="scroll" data-target=".navbar"
	data-offset="50">

	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#myPage">TripAndFood</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#myPage">HOME</a></li>
					<li><a href="#band">ABOUT</a></li>
					<li><a href="#tour">POPULAR</a></li>
					<li><a href="#food">FOOD</a></li>
					<li><a href="#contact">CONTACT</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">MORE <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Made By..</a></li>
							<li><a href="#">Airplane</a></li>
							<li><a href="#">Hotel</a></li>
						</ul></li>

					<li><a href="#"><span class="glyphicon glyphicon-search"></span></a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="w3-content" style="max-width: 1100px;">

		<div id="first3">About Osaka</div>

		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="${path}/resources/img/castle.jpg" alt="New " width="1200"
						height="700">
					<div class="carousel-caption"></div>
				</div>

				<div class="item">
					<img src="${path}/resources/img/neon.jpg" alt="Chicago"
						width="1200" height="700">
					<div class="carousel-caption"></div>
				</div>

				<div class="item">
					<img src="${path}/resources/img/river.jpg" alt="Los Angeles"
						width="1200" height="700">
					<div class="carousel-caption"></div>
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>

		<!-- Container (The Band Section) -->
		<div id="band" class="container text-center">
			<h3 style="font-size: 2em;">OSAKA</h3>
			<p>
				<em>- Trip And Food -</em>
			</p>
			<p style="font-family: 'Nanum Gothic';">
				오사카를 여행하면서 보았던 오사카성, 글리코상, 도톤보리 강...<br> TripAndFood 홈페이지 중
				OSAKA 페이지는<br>오사카를 여행하면서 기억하고 싶은 음식이나 관광지에 대한 글을 써서 기록을 남길 수 있는
				홈페이지입니다. <br> 여행하면서 남기고 싶은 추억을 기록하세요!
			</p><br>
		</div>

		<div class="bgimg-2 w3-display-container w3-opacity-min">
			<div class="w3-display-middle">
				<span class="w3-xxlarge w3-text-white w3-wide">TripAndFood</span>
			</div>
		</div>

		<div id="tour" class="container">
			<br>

			<!-- About Section -->
			<div class="w3-row w3-padding-64" id="about">
				<div class="w3-col m6 w3-padding-large w3-hide-small">
					<img src="${path}/resources/img/castle2.jpg"
						class="w3-round w3-image" alt="Table Setting" width="600"
						height="750">
				</div>

				<div class="w3-col m6 w3-padding-large">
					<h1 class="w3-center">Popular</h1>
					<h5 class="w3-center" style="font-family: 'Nanum Gothic';">:
						기록하고 싶은 장소</h5>
					<br>
					<p ALIGN=CENTER class="w3-large"
						style="font-family: 'Nanum Gothic';">
						오사카를 여행할 때 갔던 장소들, 사진들을 기록하거나 공유하고 싶으신가요?<br>버튼을 눌러 구경하고, 추억을
						남기세요!
					</p>
					<br> <input type="button" id="button1" value="여행지 기록하기"
						onclick="location.href='popular/popularlist'">
				</div>
			</div>

			<hr style="margin-left: -7%;">
		</div>
		<div id="food" class="container" style="margin-top: -13%;">
			<div class="w3-row w3-padding-64" id="about">


				<div class="w3-col m6 w3-padding-large">
					<h1 class="w3-center">Food</h1>
					<h5 class="w3-center" style="font-family: 'Nanum Gothic';">:
						기록하고 싶은 음식</h5>
					<br>
					<p ALIGN=CENTER class="w3-large"
						style="font-family: 'Nanum Gothic';">
						오사카를 여행할 때 갔던 음식점들과 그곳의 음식, 사진들을 기록하거나 공유하고 싶으신가요?<br> 버튼을 눌러
						구경하고, 추억을 남기세요!
					</p>
					<br> <input type="button" id="button1" value="맛집 기록하기"
						onclick="location.href='food/foodlist'">
				</div>

				<div class="w3-col m6 w3-padding-large w3-hide-small">
					<img src="${path}/resources/img/sushi.jpg"
						class="w3-round w3-image" alt="Table Setting" width="600"
						height="750">
				</div>
			</div>

		</div>

		<div class="bgimg-3 w3-display-container w3-opacity-min">
			<div class="w3-display-middle">
				<span class="w3-xxlarge w3-text-white w3-wide">CONTACT</span>
			</div>
		</div>

		<!-- Container (Contact Section) -->
		<div id="contact" class="container">
			<h3 class="text-center">Contact</h3>
			<p class="text-center">
				<em>This page is made by TripAndFood.</em>
			</p>

			<div class="row">
				<div class="col-md-4">
					<p>Contact</p>
					<p>
						<span class="glyphicon glyphicon-map-marker"></span>Pohang,
						Republic of Korea
					</p>
					<p>
						<span class="glyphicon glyphicon-phone"></span>Phone: +054
						2211234/p>
					<p>
						<span class="glyphicon glyphicon-envelope"></span>Email:
						TripAndFood@handong.edu
					</p>
				</div>
				<div class="col-md-8">
					<div class="row">
						<div class="col-sm-6 form-group">
							<input class="form-control" id="name" name="name"
								placeholder="Name" type="text" required>
						</div>
						<div class="col-sm-6 form-group">
							<input class="form-control" id="email" name="email"
								placeholder="Email" type="email" required>
						</div>
					</div>
					<textarea class="form-control" id="comments" name="comments"
						placeholder="Comment" rows="5"></textarea>
					<br>
					<div class="row">
						<div class="col-md-12 form-group">
							<button class="btn pull-right" type="submit">Send</button>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>


	<!-- Footer -->
	<footer class="text-center">
		<a class="up-arrow" href="#myPage" data-toggle="tooltip"
			title="TO TOP"> <span class="glyphicon glyphicon-chevron-up"></span>
		</a><br>
		<br>
		<p>
			@Copyright By <a
				href="http://hyeeunwork1.dothome.co.kr/newindex.html"
				data-toggle="tooltip" title="Visit TripAndFood's homepage">TripAndFood</a>
		</p>
	</footer>


	<script>
		$(document).ready(
				function() {
					// Initialize Tooltip
					$('[data-toggle="tooltip"]').tooltip();

					// Add smooth scrolling to all links in navbar + footer link
					$(".navbar a, footer a[href='#myPage']").on('click',
							function(event) {

								// Prevent default anchor click behavior
								event.preventDefault();

								// Store hash
								var hash = this.hash;

								// Using jQuery's animate() method to add smooth page scroll
								// The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
								$('html, body').animate({
									scrollTop : $(hash).offset().top
								}, 900, function() {

									// Add hash (#) to URL when done scrolling (default click behavior)
									window.location.hash = hash;
								});
							});
				})
	</script>

</body>
</html>
