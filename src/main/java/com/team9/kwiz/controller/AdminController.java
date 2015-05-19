package com.team9.kwiz.controller;

import org.jasypt.util.text.BasicTextEncryptor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AdminController {
	
	@RequestMapping(value = "/cloud/admin", method = RequestMethod.GET)
	public String cloudAdmin(Model model){
		return "cloudAdmin";
	}
	
	@RequestMapping(value = "/cloud/admin", method = RequestMethod.POST)
	 public String list(@RequestParam(value="registeration",required=false) String registeration, @RequestParam(value="category",required=false) String category,@RequestParam(value="players",required=false) String players, Model model) {
		return "jeopardyAdmin";
	}
	
	@RequestMapping(value = "/jeopardy/admin", method = RequestMethod.GET)
	public String jeopardyAdmin(Model model){
		return "jeopardyAdmin";
	}
	
	@RequestMapping(value = "/familyFeud/admin", method = RequestMethod.GET)
	public String familyFeudAdmin(Model model){
		return "familyFeudAdmin";
	}
	
	@RequestMapping(value = "/mathQuiz/admin", method = RequestMethod.GET)
	public String mathAdmin(Model model){
		return "mathAdmin";
	}

}
