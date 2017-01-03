package com.niit.shopping.go.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shopping.go.dao.SignupDAO;
import com.niit.shopping.go.model.Customer;
import com.niit.shopping.go.service.SignupService;

@Service
public class Signupserimpl implements SignupService {
	
	@Autowired
		private SignupDAO signupDaO;
	
		@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
		public void addCustomer(Customer c) {
			signupDaO.addCustomer(c);
		}
		
		@Override
		public List<Customer> getList() {
			return this.signupDaO.getList();
		}

	}


