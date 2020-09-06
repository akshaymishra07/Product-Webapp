package com.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ProductDAOImpl;
import com.pojo.Product;


@WebServlet("/getspecific")
public class GetSpecificServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  
   		String productName = request.getParameter("product");
   		
   		ProductDAOImpl dao = new ProductDAOImpl();
   		Product product = dao.findByName(productName);
   		
   		request.setAttribute("product" , product);
   		
   		RequestDispatcher dispatcher = request.getRequestDispatcher("getspecific.jsp");
   		dispatcher.forward(request, response);
    	
   	}

}
