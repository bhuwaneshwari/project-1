package com.niit.shopping.go.dao;

import java.util.List;

import com.niit.shopping.go.model.Customer;

public interface SignupDAO {
	
	void addCustomer(Customer customer);
	public List<Customer> getList();

}
