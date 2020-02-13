package com.AMS.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.AMS.services.LoginService;

@Controller
public class LoginController {	
	
	@Autowired
	private LoginService loginService;	
	
	@RequestMapping("/")
	public String showLogin() 
	{
		return "login";
	}
	
	@RequestMapping("LoginSession")
	public ModelAndView redirectpage(String email,String pass)
	{
		ModelAndView model = new ModelAndView();
		int no= loginService.loginRedirect(email, pass);
		if(no==1)
		{
			model.setViewName("Super_Admin_Deshboard");
			return model;
		}
		else if(no==2)
		{
			model.setViewName("index");
			return model;
		}
		else if(no==3)
		{ 
			model.setViewName("HRdeshboard");
			return model;
		}
		else
		{
			model.addObject("error", "Invalid Email And Password");
			model.setViewName("login");
			return model;
		}
	}
	
	
}
