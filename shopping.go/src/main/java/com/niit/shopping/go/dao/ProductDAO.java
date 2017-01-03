package com.niit.shopping.go.dao;

import java.util.List;

import com.niit.shopping.go.model.Product;

public interface ProductDAO {
	
public void addProduct(Product prod);
public void updateProduct(Product prod);
public List<Product> getList();
public Product getProductById(int pid);
public void removeProduct(int pid);

}
