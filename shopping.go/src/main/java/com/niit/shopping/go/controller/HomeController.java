package com.niit.shopping.go.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shopping.go.model.Customer;
import com.niit.shopping.go.model.Product;
import com.niit.shopping.go.service.ProductService;
import com.niit.shopping.go.service.SignupService;

@Controller
public class HomeController {
	
	@Autowired
	private ProductService prod_service;
	
	@RequestMapping("/")
	public String defaulthome()
	{
		System.out.println("home controller");
		return "home";
		
	}
	
	@RequestMapping("/home")
	public String home()
	{
		System.out.println("home controller");
		return "home";
		
	}
		
	@Autowired
	private SignupService reg_Service;
		
	@ModelAttribute("cust")
	 public Customer getCustomer()
	 {
		 return new Customer();
	 }


	
	
	ModelAndView m = new ModelAndView();
	
	@RequestMapping(value="/register", method=RequestMethod.GET)
	 public ModelAndView signup(){
			System.out.println("-----Signup Controller-----");
			m.setViewName("register");
			//m.addObject("command", new Customer());
			return m;
		}

@RequestMapping(value="/addCustomer", method=RequestMethod.POST)

public String addCustomer(@ModelAttribute("cust") Customer customer, BindingResult result) {
	 try{
		 
		 
		 System.out.println("----Result Data----" +result.getClass().getName());
		 reg_Service.addCustomer(customer);
	 	}
	 catch(Exception e)
	 {
		 
	 }
	 //ModelAndView m = new ModelAndView("result");
	 if (result.hasErrors()) 
	 {
		// m.addObject("command", new Customer());
		return "register";
	}
	 
	 else 
	 
		return "home";
}
	@RequestMapping("/index")
	public String index()
	{
		System.out.println("index controller");
		return "index";
		
	}
	
	@RequestMapping("/update")
	public String update()
	{
		System.out.println("update controller");
		return "update";
		
	}
	@RequestMapping(value="/editprod/{pid}")
	public ModelAndView edit(@PathVariable int pid){
		Product prod=this.prod_service.getProductById(pid);
		return new ModelAndView("update","command",prod);
	}
	@RequestMapping(value="/upProd",method = RequestMethod.POST)
	public ModelAndView editsave(@ModelAttribute("prod")Product prod){
		this.prod_service.updateProduct(prod);
		return new ModelAndView("redirect:/list");
	}
	@RequestMapping(value="/deleteprod/{pid}",method =RequestMethod.GET)
	public ModelAndView delete(@PathVariable int pid){
		prod_service.removeProduct(pid);
		return new ModelAndView("redirect:/list");
	}


	
	@RequestMapping("/login")
	public String login()
	{
		System.out.println("login Controller");
		return "login";
	}
	
	@RequestMapping("/product")
	public String product()
	{
		System.out.println("product Controller");
		return "product";
	}
	
	@ModelAttribute("saveProduct")
	public Product getProduct()
{
	return new Product();
}

@RequestMapping(value="/add",method=RequestMethod.POST)
public ModelAndView addProd(@ModelAttribute("saveProduct") Product product,BindingResult Result)
{
	try
	{
		System.out.println("result data");
	  prod_service.addProduct(product);
	}
	catch(Exception e)
	{
	}
	if(Result.hasErrors())
	{
	  return new ModelAndView("/home");
	}
	else
	{
		return new ModelAndView("/product");
	}
	
}

@RequestMapping(value="/list",method=RequestMethod.GET)
public String productlist(Model model)
{
	model.addAttribute("product", new Product());
	model.addAttribute("products", this.prod_service.getList());
	return "list";
	
}
}
