package com.niit.shopping.go;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
@Controller
public class homeController {
	@RequestMapping("/")
	public String defaultIndex()
	{
		return "home";
		
	}
	@RequestMapping("/login")
	public String login()
	{
		return "login";
	}
	@RequestMapping("/index")
	public String index()
	{
		return "index";
	}

}
