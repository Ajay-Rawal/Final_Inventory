<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<%@taglib
uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <style>
      body {
        background-color: #f1f1f1;
        font-family: Arial, sans-serif;
      }
      form {
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
        padding: 20px;
        max-width: 400px;
        margin: 0 auto;
        margin-top: 50px;
      }
      h1 {
        text-align: center;
        color: #555;
        margin-bottom: 30px;
      }
      input[type="text"],
      input[type="password"] {
        padding: 10px;
        width: 100%;
        border-radius: 5px;
        border: none;
        margin-bottom: 20px;
      }
      input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        width: 100%;
      }
      input[type="submit"]:hover {
        background-color: #3e8e41;
      }
      .error-message {
        color: red;
        text-align: center;
        margin-top: 10px;
      }
    </style>
  </head>
  <body>
    <form name="submitForm" method="POST" action="loginCheck">
      <h1>Login Page</h1>
      <table>
        <tr>
          <td>User Name:</td>
          <td><input type="text" name="username"></td>
        </tr>
        <tr>
          <td>Password:</td>
          <td><input type="password" name="password"></td>
        </tr>
        <tr>
          <td></td>
          <td><input type="submit" value="Submit"></td>
        </tr>
      </table>
      <div class="error-message">${error}</div>
    </form>
  </body>
</html>







<%-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> Login Page</title>
</head>
<body>
<form:form name="submitForm" method="POST" action="loginCheck">
<div align="center">
<table>
<tr>
<td>User Name</td>
<td><input type="text" name="username" /></td>
</tr>
<tr>
<td>Password</td>
<td><input type="password" name="password" /></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="submit" /></td>
</tr>
</table>
<div style="color: red">${error}</div>
</div>
</form:form>
</body> --%>