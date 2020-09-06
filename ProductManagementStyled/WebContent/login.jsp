<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="index.css">
<link rel="stylesheet" href="login.css">
</head>
<body>
	<%
		Object sessionObject =  request.getAttribute("message");
	%>

	<span class="websiteName">
		<h1><a href="index.jsp">A.N.M ELECTRONICS MART</h1></a>
	</span>

	<div class="loginbox">
		<img class="avtaar" src="avtaar.png">

		<h1 class="logtext">LOGIN HERE</h1>
		<form action="login" method="post">
			<p>Username</p>
			<input type="text" name="username" placeholder="Username">
			<p>Password</p>
			<input type="password" name="password" placeholder="Password">
			<input type="submit" name="" value="Login">

             ${ sessionObject }
			
		</form>

	</div>
   
     


</body>
</html>