package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.domain.Category;
import com.niit.shoppingcart.domain.Product;

@Controller
public class HomeController {
	
	//http://localhost:8080/ShoppingCart/
	
	
	@Autowired HttpSession session;
	
	@Autowired  Category category;
	
	@Autowired  CategoryDAO  categoryDAO;
	
	@Autowired Product product;
	@Autowired ProductDAO productDAO;
	
	
	@RequestMapping("/")
	public  ModelAndView    goToHome()
	
	{
		ModelAndView mv = new ModelAndView("Home");
		//model.addAttribute("message", "Thank you for visiting Shopping Cart");
		mv.addObject("message", "Thank you for visiting Shopping Cart");
		
		//get all the categories
		
		List<Category>  categoryList =  categoryDAO.list();
		
		
		
		//attach to session
		
		session.setAttribute("categoryList", categoryList);
		session.setAttribute("category", category);
		
		session.setAttribute("product", product);
		session.setAttribute("productList", productDAO.list());
		
		
		return mv;
		
		//return "Home"
	}
	
	
	@RequestMapping("/LoginPage")
	public String loginPage(Model model)
	{
		model.addAttribute("isUserClickedLogin", "true");
	
		return "Home";
	}
	
	@RequestMapping("/RegistrationPage")
	public String registrationPage(Model model)
	{
		model.addAttribute("isUserClickedRegister", "true");
		
		return "Home";
	}


}
