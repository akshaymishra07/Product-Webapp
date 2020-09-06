<%@page import="com.pojo.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.ProductDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Available Products</title>
<link rel="stylesheet" href="index.css">
<link rel="stylesheet" href="displayAll.css">
</head>
<body>
    
    <% Object sessionObject=session.getAttribute("username");
	   String status="login";
	   
	   ProductDAOImpl dao = new ProductDAOImpl();
	   List<Product> products = dao.findAll();
	   
	%>
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
   <br><br><br>
    <table border="1">
             
             <tr>
                <th>Product Id</th>
                <th>Product Name</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Category</th>
                
                <% if(sessionObject != null){ %> 
    
                 <th>Action</th>
                                 
                <% } %> 
             
             </tr>  
               
             <%
				for (Product p : products) {
			%>

			<tr>
				<td>
					<%
						out.println(p.getpId());
					%>
				</td>
				<td>
					<%
						out.println(p.getpName());
					%>
				</td>
				<td>
					<%
						out.println(p.getPrice());
					%>
				</td>
				<td>
					<%
						out.println(p.getQuantity());
					%>
				</td>
                <td>
					<%
						out.println(p.getCategory());
					%>
				</td>
                <% if(sessionObject != null){ %> 
                  
                 <td>
                    
                    <a href="delete?productid=<%= p.getpId()%>" style=" color: black ; text-decoration: underline;"> Delete </a>
                     
                 </td>
                
                
                <% } %>               

			</tr>



			<%
				}
			%>
               
			

		</table>
    
  


</body>
</html>