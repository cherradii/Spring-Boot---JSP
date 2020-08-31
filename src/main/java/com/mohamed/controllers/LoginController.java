package com.mohamed.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {
	
	@RequestMapping(value = "/")
	public String loginForm(){
		return "login";
	}
	
	@RequestMapping(value = "/loginHandler")
	public String authentication(HttpServletRequest request, @RequestParam String login, @RequestParam String password){
		String page = "";
//		System.out.println(login+"----"+password);
		if(login.equals("med1995cherradi@gmail.com") && (password.equals("mohammed123"))) {
			HttpSession session = request.getSession();
			session.setAttribute("success", "Bienvenue Mohamed dans votre page d'accueil");
			page = "accueil";
//			System.out.println(page);
		}else {
			page = "login";
//			System.out.println(page);
		}
		
		return page;
	}
	
	@RequestMapping(value = "/logout")
	public String logoutForm(HttpServletRequest request){
		HttpSession session = request.getSession();
		session.invalidate();
		return "login";
	}
	
	@RequestMapping(value = "/securite")
	public String securiteForm(HttpServletRequest request){
		String page = "";
		HttpSession session = request.getSession();
		if (session.getAttribute("success").equals(null)) {
			page = "login";
			session.invalidate(); 
		}else {
			page = "accueil";
		}
		return page;
	}

}
