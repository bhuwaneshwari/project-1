package com.niit.shopping.go.service;

import java.util.List;

import com.niit.shopping.go.model.Customer;

public interface SignupService {
	public void addCustomer(Customer customer);
	public List<Customer> getList();
}
