<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Electronics Store</title>
<link rel="stylesheet" href="index.css">
</head>
<body>
    
    
    
 
  
	<% Object sessionObject=session.getAttribute("username");
	String status="login";%>
	<div class="title">
		<br> 
		<span class="websiteName">
		    <h1>A.N.M ELECTRONICS MART</h1>
		</span>
		
		<%if(sessionObject!=null) {%>
		<span class="login">
			<a href="logout">Logout</a>
		</span>
		<%} else {%>
		<span class="login">
			<a href="login.jsp">Login</a>
		</span>

		<%} %>
	</div>
	<br><br><br><br><br><br><br><br>
     
	<div class="main">
		<h3><a href="displayAll.jsp">View All Products</a></h3><br><br>
		 
		<h3><a href="getspecific.jsp">Get Specific Product Details</a></h3> <br> <br>
		
		<h3><a href="getcategorywise.jsp">Display Products by Category</a></h3> <br>
		
		<br>

		<% 
		if(sessionObject!=null)
		{
		%>
		 <h3><a href="addproduct.jsp">Add Product</a></h3> 
		<br> <br> 
		<h3><a href="updateprice.jsp">Update Product Price</a></h3>
		<%} %>


	</div>
	
	
</body>
</html>