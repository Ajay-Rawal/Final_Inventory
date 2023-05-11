<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
    
     <%@page isELIgnored="false"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manager List</title>
 
<style>
/* Style the table header */
table th {
  background-color: #5a5a5a;
  color: #fff;
  font-weight: bold;
  text-align: left;
  padding: 10px;
}

/* Style the table rows */
table td {
  border-bottom: 1px solid #ddd;
  padding: 10px;
}

/* Style the "Edit" and "Delete" links */
a.edit-link, a.delete-link {
  display: inline-block;
  padding: 5px 10px;
  background-color: #5a5a5a;
  color: #fff;
  text-decoration: none;
  border-radius: 5px;
  margin-right: 5px;
}

a.edit-link:hover, a.delete-link:hover {
  background-color: #333;
}

a.add-link {
  display: block;
  background-color: #4CAF50;
  color: white;
  padding: 10px;
  text-align: center;
  text-decoration: none;
  border-radius: 5px;
  margin-top: 20px;
}

a.add-link:hover {
  background-color: #3e8e41;
}
</style>
</head>
<body>
<h1>Manager List</h1>
 <form action="/Inventory/search" method="GET">
  <label for="productId">Product ID:</label>
  <input type="text" id="product_id" name="product_id">
  <button type="submit">Search</button>
</form>

<table>
  <thead>
    <tr>
      <th>User ID</th>
      <th>Password</th>
      <th>Email</th>
      <th>Role</th>
      <th>Edit</th>
      <th>Delete</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach var="user" items="${list}">
      <tr>
        <td>${user.userId}</td>
        <td>${user.password}</td>
        <td>${user.email}</td>
        <td>${user.role}</td>
        <td><a href="editManager/${user.userId}" class="edit-link">Edit</a></td>
        <td><a href="deleteuser/${user.userId}" class="delete-link">Delete</a></td>
      </tr>
    </c:forEach>     
  </tbody>
</table>
<a href="addManager" class="add-link">Add New Manager</a>

<br>
<br>

  
</body>
</html>
     
     
     
     
     
     
     
<%-- <!DOCTYPE html>
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
<a href="addManager">Add New Manager</a>

</body>
</html> --%>