<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
    
     <%@page isELIgnored="false"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     
     <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manager List</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f1f1f1;
        margin: 0;
        padding: 20px;
    }

    h1 {
        color: #333;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
    }
    
    
    form {
			margin-bottom: 30px;
			text-align: center;
		}

		label {
			font-size: 18px;
			font-weight: bold;
			color: #444;
			margin-right: 10px;
		}

		input[type=text] {
			padding: 5px;
			border: 1px solid #ccc;
			border-radius: 5px;
			font-size: 16px;
			width: 200px;
			margin-right: 10px;
		}

		button[type=submit] {
			background-color: #4CAF50;
			color: white;
			border: none;
			border-radius: 5px;
			padding: 8px 16px;
			font-size: 16px;
			cursor: pointer;
			transition: background-color 0.3s;
		}

		button[type=submit]:hover {
			background-color: #3e8e41;
		}

    th, td {
        padding: 10px;
        text-align: left;
        border: 1px solid #ccc;
    }

    th {
        background-color: #f1f1f1;
        font-weight: bold;
    }

    tr:nth-child(even) {
        background-color: #f9f9f9;
    }

    a {
        text-decoration: none;
        color: #333;
    }

    .btn {
        display: inline-block;
        padding: 8px 16px;
        background-color: #4CAF50;
        color: #fff;
        border: none;
        cursor: pointer;
        font-size: 14px;
        border-radius: 4px;
        transition: background-color 0.3s;
    }
    
    h4 {
			margin-top: 50px;
			margin-bottom: 30px;
			font-size: 36px;
			text-align: center;
			color: #444;
		}

    .btn:hover {
        background-color: #45a049;
    }

    .add-link {
        margin-left: 10px;
    }

    .container {
        max-width: 800px;
        margin: 0 auto;
    }
</style>
</head>
<body>
<div class="container">
    <h1>Manager List</h1>
    <br>
    
    
   
<br>


    <table>
        <tr>
            <th>User ID</th>
            <th>Password</th>
            <th>Email</th>
            <th>Role</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>

        <c:forEach var="user" items="${list}">
            <tr>
                <td>${user.userId}</td>
                <td>${user.password}</td>
                <td>${user.email}</td>
                <td>${user.role}</td>
                <td><a href="editManager/${user.userId}" class="btn">Edit</a></td>
                <td><a href="deleteUser/${user.userId}" class="btn">Delete</a></td>
            </tr>
        </c:forEach>
    </table>

    <a href="addManager" class="btn">Add New Manager</a>
    <a href="warehouseList" class="btn add-link">View Warehouse</a>
</div>


<br>
<br>
<h4>Search Product</h4>
<form action="/Inventory/search" method="GET">
  <label for="productId">Product ID:</label>
  <input type="text" id="product_id" name="product_id">
  <button type="submit">Search</button>
</form>
</body>
</html>
     
     
     
     
   <%--  <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manager List</title>
 
<style>
/* Style the table header */
table th {
  background-color: #336699;
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
  background-color: #336699;
  color: #fff;
  text-decoration: none;
  border-radius: 5px;
  margin-right: 5px;
}

a.edit-link:hover, a.delete-link:hover {
  background-color: #204d74;
}

a.add-link {
  display: block;
  background-color: #4285f4;
  color: white;
  padding: 10px;
  text-align: center;
  text-decoration: none;
  border-radius: 5px;
  margin-top: 20px;
  margin-bottom: 20px;
  
}

a.add-link:hover {
  background-color: #3367d6;
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
      <th>User Name</th>
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
        <td>${user.username}</td>
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
<a href="warehouseList" class="add-link">View Wahehouse</a>
  
</body>
</html> --%>

     
     
     
     
     
     
     
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
<br>
<br>
<a href="addManager">Add New Manager</a>
<a href="warehouseList" class="add-link">View Wahehouse</a>
</body>
</html> --%>