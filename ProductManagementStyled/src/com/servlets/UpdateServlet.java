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

@WebServlet("/update")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    		String proname = request.getParameter("product");
    		double uprice  = Double.parseDouble(request.getParameter("updatedPrice"));
    		
    
    		ProductDAOImpl dao = new ProductDAOImpl();
    		boolean updated    = dao.updateProduct(proname, uprice);
    		
    		if(updated == true) {
    			
    			Product product = dao.findByName(proname);
    			request.setAttribute("product", product);
                RequestDispatcher dispatcher = request.getRequestDispatcher("updateprice.jsp");
                dispatcher.forward(request, response);
    		}
	}

}
