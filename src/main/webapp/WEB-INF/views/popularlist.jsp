<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>free board</title>
<style>
#popularlist {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#popularlist td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#popularlist tr:nth-child(even){background-color: #f2f2f2;}
#popularlist tr:hover {background-color: #ddd;}
#popularlist th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #006bb3;
  color: white;
}
</style>
</head>
<body>
<h1>자유게시판</h1>

<table id="popularlist" width="90%">
<tr>
	<th>Pid</th>
	<th>Name</th>
	<th>Description</th>
	<th>Location</th>
	<th>Photo</th>
	<th>Likes</th>
	<th>Regdate</th>
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
		<td><a href="editform/${u.pid}">Edit</a></td>
		<td><a href="deleteok/${u.pid}">Delete</a></td>
	</tr>
</c:forEach>
</table>
<br/><a href="add">Add New Post</a>
</body>
</html>