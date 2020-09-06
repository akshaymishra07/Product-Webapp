<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product</title>
<link rel="stylesheet" href="index.css">
<link rel="stylesheet" href="addproduct.css">
</head>
<body>

	<%
		Object sessionObject = session.getAttribute("username");
		String status = "login";
	%>
	<div class="title">
		<br> <span class="websiteName">
			<h1>
				<a href="index.jsp">A.N.M ELECTRONICS MART</a>
			</h1>
		</span>

		<%
			if (sessionObject != null) {
		%>
		<span class="login"> <a href="logout">Logout</a>
		</span>
		<%
			} else {
		%>
		<span class="login"> <a href="login.jsp">Login</a>
		</span>

		<%
			}
		%>
	</div>
    
    <br><br><br><br><br><br><br><br>
    
	<div class="databox">

		<form method="post" action="add">

			<table>

				<tr>
					<td>Product Id :</td>
					<td><input type="text" name="proid"></td>
				</tr>
				<tr>
					<td>Product Name :</td>
					<td><input type="text" name="proname"></td>
				</tr>
				<tr>
					<td>Price :</td>
					<td><input type="text" name="price"></td>
				</tr>
				<tr>
					<td>Quantity :</td>
					<td><input type="text" name="quantity"></td>
				</tr>
				<tr>
					<td>Category :</td>
					<td><input type="text" name="category"></td>
				</tr>



				<tr>
					<td><input type="submit" value="Add Product"></td>

				</tr>

			</table>


		</form>



	</div>





</body>
</html>