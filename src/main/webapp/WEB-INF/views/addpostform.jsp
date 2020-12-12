<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Osaka:Trip</title>

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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="${path}/resources/css/table.css">
<style>
</style>

</head>
<body>
<body id="tour" data-spy="scroll" data-target=".navbar" data-offset="50">

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

		<div id="first2">About Osaka</div>
		<br> <br> <br>
		<div id="contain">
			<h1 align=center style="font-family: 'Nanum Gothic';">Add Post</h1>
			<br>
			<p align=center style="font-family: 'Nanum Gothic';">공유하거나 추억으로
				남기고 싶은 여행지에 대해 자유롭게 작성하시면 됩니다!</p>
			<p id="pc2" align=center>&#128516;</p>
			<br> <br>
			
			<form action="../popular/addok" method="post" enctype="multipart/form-data">
				<table id="edit" align=center>
					<tr>
						<td>관광지 이름</td>
						<td><input type="text" name="name" /></td>
					</tr>
					<tr>
						<td>위치</td>
						<td><input type="text" name="location" /></td>
					</tr>
					<tr>
						<td>사진</td>
						<td><input type="file" name="photo" /></td>
					</tr>
					<tr>
						<td>설명</td>
						<td><textarea cols="50" rows="5" name="description"></textarea></td>
					</tr>

				</table>

				<br> <br> <br>


				<button type="submit" id="button2">추가하기</button>
				<br> <br>
				<button type="button" id="button2"
					onclick="location.href='popularlist'">목록 보기</button>
			</form>
			<br> <br> <br> <br> <Br>
			
		</div>
	</div>
	<br>
	<br>
	<br>

	<!-- Footer -->
	<footer class="text-center">
		<a class="up-arrow" href="#myPage" data-toggle="tooltip"
			title="TO TOP"> <span class="glyphicon glyphicon-chevron-up"></span>
		</a><br> <br>
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