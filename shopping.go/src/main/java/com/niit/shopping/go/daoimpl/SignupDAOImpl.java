package com.niit.shopping.go.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shopping.go.dao.SignupDAO;
import com.niit.shopping.go.model.Customer;

@Repository("signupDaO")
public class SignupDAOImpl implements SignupDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	
	@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
	public void addCustomer(Customer c) {
		
		   Session session=sessionFactory.openSession();
		   System.out.println("----Session Created----");
		   Transaction trans=(Transaction) session.beginTransaction();
		  
		   session.saveOrUpdate(c);
		   System.out.println("----Saving Data----");
		   	trans.commit();
		   	session.close();
				
	}

	
	
	
	
	
	
	
	
	
	
	
	
	@SuppressWarnings("unchecked")
	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)


	@Override
	public List<Customer> getList() {
		
		Session session = this.sessionFactory.openSession();
		List<Customer> custList = session.createQuery("from signup").list();
		return custList;
	}

		

}
