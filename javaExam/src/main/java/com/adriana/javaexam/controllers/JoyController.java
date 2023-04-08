package com.adriana.javaexam.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.adriana.javaexam.models.Joy;
import com.adriana.javaexam.services.JoyService;



@Controller
@RequestMapping("/joys")
public class JoyController {
	private final JoyService joyServ;
	public JoyController(JoyService joyServ) {
		this.joyServ = joyServ;
	}
	
	@GetMapping("/create")
	public String createJoy(@ModelAttribute("joy") Joy joy, HttpSession session) {
		if(session.getAttribute("user_id") == null) {
			return "redirect:/users/login/reg";
		}
		return "joy/create.jsp";
	}
	
	@PostMapping("/process/create")
	public String processCreateJoy(@Valid @ModelAttribute("joy") Joy joy, BindingResult result) {
		if(result.hasErrors()) {
			return "joy/create.jsp";
		}
		joyServ.create(joy);
		return "redirect:/";
	}
	
	@GetMapping("/edit/{id}")
	public String editJoy(@PathVariable("id") Long id, Model model) {
		model.addAttribute("joy", joyServ.getOne(id));
		return "joy/edit.jsp";
	}
	
	@PutMapping("/process/edit/{id}")
	public String processEditJoy(@Valid @ModelAttribute("joy") Joy joy, BindingResult result) {
		if(result.hasErrors()) {
			return "joy/edit.jsp";
		}
		joyServ.update(joy);
		return "redirect:/";
	}
	
	@GetMapping("/{id}")
	public String displayOneJoy(@PathVariable("id") Long id, Model model) {
		Joy joy = joyServ.getOne(id);
		model.addAttribute("joy", joy);
		return "joy/displayOne.jsp";
	}
	
	@DeleteMapping("/{id}")
	public String deleteJoy(@PathVariable("id") Long id) {
		joyServ.delete(id);
		return "redirect:/";
	}
	
}
