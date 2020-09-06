<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Set"%>
<%@page import="com.pojo.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.ProductDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Detials</title>
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
		List<String> names = new ArrayList<>();
		
		for(Product p : products){
			
			names.add(p.getpName());
		}
	%>
     
     <div class="searchbox">
     <form action="getspecific" method="get">
			<select name="product">

				<%
					for (String s: names) {
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

    <%  if(request.getAttribute("product") != null) { %>
    <div class="display">
    
        <table>
              
              <tr>
                <th>Product Id</th>
                <th>Product Name</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Category</th>
             
             </tr> 
             
             <tr>
                <td>${product.pId}</td>
                <td>${product.pName}</td>
                <td>${product.price}</td>
                <td>${product.quantity}</td>
                <td>${product.category}</td>
             </tr>
             
        
        </table>
     
        
    
    </div>
 
   <%}%>

</body>
</html>