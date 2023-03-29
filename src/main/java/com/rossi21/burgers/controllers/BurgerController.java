package com.rossi21.burgers.controllers;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rossi21.burgers.models.Burger;
import com.rossi21.burgers.services.BurgerService;

@Controller
public class BurgerController {
	
		@Autowired
		BurgerService burgerService;
		
	    @RequestMapping("/")
	    public String books(@ModelAttribute("burger") Burger burger) {
	  
	        return "index.jsp";
		    }
		
	    @PostMapping("/burgers")
	    public String create(@Valid @ModelAttribute("burger") Burger burger, BindingResult result) {
	        if (result.hasErrors()) {
	            return "index.jsp";
	        } else {
	            burgerService.createBurger(burger);
	            return "redirect:/";
	        }
	    }
	

}
