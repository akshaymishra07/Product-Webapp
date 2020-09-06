package com.dao;

import java.util.List;

import com.pojo.Product;

public interface ProductDAO {

	int addProduct(Product product);

	boolean updateProduct(String name, double price);

	boolean updateProduct(int productId, int quantity);

	Product findById(int productId);

	List<Product> findAll();

	List<Product> findAllByCategory(String category);

}
