<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TripAndFood:로그인</title>

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
<link rel="stylesheet" type="text/css"
	href="${path}/resources/css/table.css">
<style>


img, label {
	display: inline-block;
}

label {
	width: 130px
}

button {
	background-color: blue;
	color: white;
	font-size: 15px
}

div {
	
}

#button2{
	margin-left:0%;
}

#ta{
	font-family: 'Nanum Gothic';
}
</style>

</head>
<body>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

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
		<div id="contain" style="font-family: 'Nanum Gothic';">
			<h1 align=center style="font-family: 'Nanum Gothic';">로그인</h1>
			<br>
			<p align=center style="font-family: 'Nanum Gothic';">관리자(id:admin/pw:1234)로
				로그인하실 수 있습니다.
			<br>TripAndFood : Osaka 홈페이지를 자유롭게 이용해 보세요!</p>
			<p id="pc2" align=center>&#128516;</p>

			<div style='width: 100%; text-align: center; padding-top: 100px'>
				<img src='../img/snowman.jpg' height="250">
				<form method="post" action="loginOk">
					<table id="ta" align=center>
						<tr>
							<td align=right>User ID : </td>
							<td align=left style="padding-left:5px;"><input type='text' name='userid' /></td>
						</tr>
						<tr>
							<td align=right>Password : </td>
							<td align=left style="padding-left:5px;"><input type='password' name='password' /></td>
						</tr>
					</table>
					<!-- 
						<label align=right>User ID: </label><input type='text' name='userid' />
						<label align=right>Password: </label> <input type='password' name='password' />
				 -->	<br><Br>
					<button type='submit' id="button2">login</button>
				</form>
			</div>
		</div>
		<br>

	<br>
	<br>
	</div>


	<br>
	<Br>
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