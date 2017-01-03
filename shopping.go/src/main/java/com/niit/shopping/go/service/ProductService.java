package com.niit.shopping.go.service;

import java.util.List;

import com.niit.shopping.go.model.Product;

public interface ProductService {

	public void addProduct(Product prod);
	public void updateProduct(Product prod);
	public List<Product> getList();
	public Product getProductById(int pid);
	public void removeProduct(int pid);

}
