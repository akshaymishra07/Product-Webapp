package com.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ProductDAOImpl;

@WebServlet("/delete")
public class DeleteServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int productId = Integer.parseInt(request.getParameter("productid"));

		ProductDAOImpl dao = new ProductDAOImpl();
		int del = dao.deleteProduct(productId);

		if (del > 0) {

			RequestDispatcher dispatcher = request.getRequestDispatcher("displayAll.jsp");
			dispatcher.forward(request, response);

		} 

	}

}
