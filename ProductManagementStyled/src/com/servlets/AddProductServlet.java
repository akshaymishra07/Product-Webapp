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


@WebServlet("/add")
public class AddProductServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pid = Integer.parseInt(request.getParameter("proid"));
		String pname = request.getParameter("proname");
		double price = Double.parseDouble(request.getParameter("price"));
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		String category = request.getParameter("category");

		Product product = new Product(pid, pname, price, quantity, category);

		ProductDAOImpl pdao = new ProductDAOImpl();
		int added = pdao.addProduct(product);

		if (added > 0) {

			request.setAttribute("product", product);
			RequestDispatcher dispatcher = request.getRequestDispatcher("getspecific.jsp");
			dispatcher.forward(request, response);

		} else {
			request.setAttribute("message", "Record Not Added... Please Try Again...!!!");
			RequestDispatcher dispatcher = request.getRequestDispatcher("addproduct.jsp");
			dispatcher.forward(request, response);
		}

	}

}
