<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
</head>
<body>
<h1>Manager List</h1>

<table border="2" width="70%" cellpadding="2">

<tr><th>Product Id</th><th>Product Name</th><th>Description</th><th>Price</th><th>Quantity</th><th>Category</th><th>Edit</th><th>Delete</th></tr>

<c:forEach var="product" items="${list}">

<tr>
<td>${product.product_id}</td>
<td>${product.product_name}</td>
<td>${product.description}</td>
<td>${product.price}</td>
<td>${product.pquantity}</td>
<td>${product.Cid}</td>
<td><a href="editproduct/${product.product_id}">Edit</a></td>
<td><a href="deleteproduct/${product.product_id}">Delete</a></td>
</tr>
</c:forEach>
</table>
<br/>
<a href="addProduct">Add New item</a>
</body>
</html>
	