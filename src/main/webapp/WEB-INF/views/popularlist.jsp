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

		<div id="first1">About Osaka</div>
		<br> <br> <br>
		<div id="contain">
			<h1 align=center style="font-family: 'Nanum Gothic';">POPULAR</h1>
			<br>
			<p align=center style="font-family: 'Nanum Gothic';">
				TripAndFood 중 Trip 부분입니다.<br> 다른 분들께서 오사카를 여행하면서 방문하고 직접 기록한
				장소들을 둘러보세요!<br> 오사카를 여행할 때 갔던 장소들이나 사진들을 기록하고 공유하고 싶으신가요?<br>목록
				제일 밑에 있는 버튼을 눌러 추억을 남겨보세요.
			</p>
			<br>
			<br>
			<br>
			<table id="popularlist" width="90%">
				<tr>
					<th>#</th>
					<th>이름</th>
					<th>설명</th>
					<th>위치</th>
					<th>사진</th>
					<th>좋아요 수</th>
					<th>날짜</th>
					<th>수정</th>
					<th>삭제</th>
				</tr>
				<c:forEach items="${popularlist}" var="u">
					<tr>
						<td>${u.pid}</td>
						<td>${u.name}</td>
						<td>${u.description}</td>
						<td>${u.location}</td>
						<td>${u.photo}</td>
						<td>${u.likes}</td>
						<td>${u.regdate}</td>
						<td><a href="editform/${u.pid}">편집하기</a></td>
						<td><a href="deleteok/${u.pid}">삭제하기</a></td>
					</tr>
				</c:forEach>
			</table>
			<br /> <input type="button" id="button2" value="여행지 작성하기"
				onclick="location.href='add'"> <br> <br> <br>
			<br> <br>
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
				data-toggle="tooltip" title="Visit Hyeeun's homepage">TripAndFood</a>
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