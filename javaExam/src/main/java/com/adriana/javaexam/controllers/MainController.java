package com.adriana.javaexam.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.adriana.javaexam.services.JoyService;
import com.adriana.javaexam.services.UserService;

@Controller
public class MainController {
	private final JoyService joyServ;
	private final UserService userServ;
	public MainController(JoyService joyServ, UserService userServ) {
		this.joyServ = joyServ;
		this.userServ = userServ;
	}
	
	@GetMapping("/")
	public String home(HttpSession session, Model model) {
		if(session.getAttribute("user_id") == null) {
			return "redirect:/users/login/reg";
		}
		model.addAttribute("allJoys", joyServ.getAll());
		model.addAttribute("loggedInUser", userServ.getOne((Long)session.getAttribute("user_id")));
		return "main/dashboard.jsp";
		
	}
}
