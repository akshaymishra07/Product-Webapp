<%@page import="java.util.HashSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Set"%>
<%@page import="com.pojo.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.ProductDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Category Wise</title>
<link rel="stylesheet" href="index.css">
<link rel="stylesheet" href="getspecific.css">

</head>
<body>

     <% Object sessionObject=session.getAttribute("username");
	String status="login";%>
	<div class="title">
		<br> 
		<span class="websiteName">
		    <h1><a href="index.jsp">A.N.M ELECTRONICS MART</h1></a>
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
	<br>
     
     <%
		ProductDAOImpl dao = new ProductDAOImpl();
		List<Product> products = dao.findAll();
		Set<String> categories = new HashSet<>();
		
		for(Product p : products){
			
			categories.add(p.getCategory());
		}
	%>
     
     <div class="searchbox">
     <form action="getcategory" method="get">
			<select name="category">

				<%
					for (String s: categories) {
				%>

				<option><%= s%></option>>

				<%
					}
				%>

			</select> 
			<br> <br>  <br> 
			<input type="submit" value="Search">


		</form>
     
    </div>   

    <% if(request.getAttribute("products") != null){ %>

    <div class="display">
    
        <table>
              
              <tr>
                <th>Product Id</th>
                <th>Product Name</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Category</th>
             
             </tr> 
             
            <core:forEach items="${products}" var="pro">

				<tr>
					<td>${ pro.pId}</td>
					<td>${ pro.pName}</td>
					<td>${ pro.price}</td>
					<td>${ pro.quantity}</td>
					<td>${ pro.category}</td>

				</tr>


			</core:forEach>

            
        
        </table>
    
    
    </div>
 
  <% } %>

</body>
</html>