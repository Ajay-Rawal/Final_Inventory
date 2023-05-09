<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<title>Login Form</title>
	<style>
		body {
			background-color: #F5F5F5;
			font-family: Arial, sans-serif;
		}
		.container {
			margin: 50px auto;
			max-width: 400px;
			text-align: center;
		}
		form {
			background-color: #FFFFFF;
			border: 1px solid #CCCCCC;
			padding: 20px;
			box-shadow: 0px 0px 10px #CCCCCC;
		}
		h2 {
			margin-top: 0px;
		}
		input[type="text"], input[type="password"] {
			width: 100%;
			padding: 12px 20px;
			margin: 8px 0;
			display: inline-block;
			border: 1px solid #ccc;
			border-radius: 4px;
			box-sizing: border-box;
		}
		input[type="submit"] {
			background-color: #4CAF50;
			color: white;
			padding: 14px 20px;
			margin: 8px 0;
			border: none;
			border-radius: 4px;
			cursor: pointer;
		}
		input[type="submit"]:hover {
			background-color: #45a049;
		}
	</style>
</head>
<body>
	<div class="container">
		<form action="login.php" method="POST">
			<h2>Login Form</h2>
			<label for="username">Username:</label>
			<input type="text" id="username" name="username" placeholder="Enter your username">

			<label for="password">Password:</label>
			<input type="password" id="password" name="password" placeholder="Enter your password">
            <br>

			<label for="role">Login As:</label>
			<select name="role" id="role">
				<option value="admin">Admin</option>
				<option value="inventory_manager">Inventory Manager</option>
			</select>
            <br>

			<input type="submit" value="Login">
		</form>
	</div>
</body>
</html>
