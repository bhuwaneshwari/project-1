package com.niit.shopping.go.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shopping.go.dao.ProductDAO;
import com.niit.shopping.go.model.Product;

@Repository("productDAO")
public class ProductDAOImpl implements ProductDAO{

	@Autowired 
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	
	@Transactional(propagation=Propagation.SUPPORTS,readOnly=false)
	public void addProduct(Product prod) {
	
		System.out.println("Product DAO");
		Session session=sessionFactory.openSession();
		System.out.println("Session is created");
		Transaction transaction=(Transaction)session.beginTransaction();
		System.out.println("Transaction is created");
		session.save(prod);
		System.out.println("Saving the Product");
		transaction.commit();
		session.close();
		
	}

	@SuppressWarnings("unchecked")
	@Transactional(propagation = Propagation.SUPPORTS, readOnly=false)
	public List<Product> getList() {
	
		 Session session=this.sessionFactory.openSession();
		 List<Product> productlist=session.createQuery("from Product").list();
		 return productlist;
	}

	@Transactional(propagation= Propagation.SUPPORTS,readOnly=true)
	public void updateProduct(Product prod) {
    Session session= sessionFactory.openSession();
    Transaction transaction=(Transaction) session.beginTransaction();
    session.update(prod);
    transaction.commit();
    session.close();
	}
@Transactional(propagation=Propagation.SUPPORTS,readOnly=true)
	public Product getProductById(int pid) {
	Session session= sessionFactory.openSession();
	Transaction transaction=(Transaction) session.beginTransaction();
	Product prod=(Product)session.load(Product.class, pid);
	return prod;
	}

	@Transactional(propagation= Propagation.SUPPORTS, readOnly=true)
	public void removeProduct(int pid) {
		
				Session session=sessionFactory.openSession();
				Transaction transaction=(Transaction)session.beginTransaction();
				Product prod=(Product)session.get(Product.class,pid);
				session.delete(prod);
				System.out.println("deleting the product");
				transaction.commit();
			
				}
				
	}


