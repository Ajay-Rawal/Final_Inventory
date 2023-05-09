<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page isELIgnored="false"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Manager List</h1>

<table border="2" width="70%" cellpadding="2">

<tr><th>userId</th><th>password</th><th>email</th><th>role</th><th>Edit</th><th>Delete</th></tr>

<c:forEach var="user" items="${list}">

<tr>
<td>${user.userId}</td>
<td>${user.password}</td>
<td>${user.email}</td>
<td>${user.role}</td>
<td><a href="editManager/${user.userId}">Edit</a></td>
<td><a href="deleteuser/${user.userId}">Delete</a></td>
</tr>
</c:forEach>
</table>
<br/>
<a href="addManager">Add New item</a>
</body>
</html>