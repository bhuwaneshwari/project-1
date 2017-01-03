package com.niit.shopping.go.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shopping.go.dao.ProductDAO;
import com.niit.shopping.go.model.Product;
import com.niit.shopping.go.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService{

	@Autowired
	private ProductDAO productDAO;
	
	@Transactional(propagation=Propagation.SUPPORTS,readOnly=false)
	public void addProduct(Product prod) {
		productDAO.addProduct(prod);
		
	}

	@Transactional(propagation=Propagation.SUPPORTS,readOnly=false)
	public List<Product> getList() {
		
		return this.productDAO.getList();
	}

	@Transactional(propagation=Propagation.SUPPORTS,readOnly=true)
	public void updateProduct(Product prod) {
		productDAO.updateProduct(prod);
		
	}
    @Transactional(propagation=Propagation.SUPPORTS,readOnly=true)
	public Product getProductById(int prodId) {
		return productDAO.getProductById(prodId);
	}
   @Transactional(propagation=Propagation.SUPPORTS,readOnly=true)
	public void removeProduct(int prodId) {
	 productDAO.removeProduct(prodId);
		
	}

}
