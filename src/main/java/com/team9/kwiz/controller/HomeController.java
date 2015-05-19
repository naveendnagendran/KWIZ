package com.team9.kwiz.controller;

import java.util.List;

import org.jasypt.util.text.BasicTextEncryptor;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.persistence.Entity;

import com.team9.kwiz.dao.CategoryDAO;
import com.team9.kwiz.dao.HomeDAO;
import com.team9.kwiz.model.Home;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired private CategoryDAO categoryDAO;
	@Autowired private HomeDAO homeDAO;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index1(Model model){
		return "index";
	}
	
//	@RequestMapping(value = "/", method = RequestMethod.POST)
//	public String list(@RequestParam(value="id",required=true) long userid, @RequestParam(value="password",required=true) String password){
//		boolean status=homeDAO.verifyLogin(userid, password);
//		//boolean status=true;
//		if(status){
			
//			if(userid.equals("1"))
//				return "cloudAdmin";
//			
//			else if(userid.equals("2"))
//				return "jeopardyAdmin";
//			
//			else if(id.equals("3"))
//				return "familyFeudAdmin";
//			else
//				return "register";
//			
//		}
//		return "index";
//	}
	
//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public String admin(Model model){
//		int i = 0;
//		switch (i) {
//		case 1: return "admin";
//		case 2: return "admin";
//		case
//		}
//		return "admin";
//	}
	
//	@RequestMapping(value = "/home", method = RequestMethod.GET)
//	public String home(Model model){
//		return "home";
//	}
	/*@RequestMapping(value = "/signUp", method = RequestMethod.POST)
	public String registerList(@RequestParam(value="email",required=true) String email){
			//@RequestParam(value="password",required=true) String password,@RequestParam(value="firstName",required=true) String firstName,@RequestParam(value="lastName",required=true) String lastName){
		Syssingleplayer@gmail.com
tem.out.print("email is"+email);
		Home home=new Home();
		//home.setFirstName(firstName);
		home.setEmail(email);
		//home.setLastName(lastName);
		//home.setPassword(password);
		homeDAO.addUser(home);
		return "register";
	}*/
	
	
	@RequestMapping(value ="/signIn", method = RequestMethod.POST)
	public String list(@RequestParam(value="email",required=true) String email, @RequestParam(value="password",required=true) String password){
		boolean status=homeDAO.verifyLogin(email, password);
		if(status){
			if(email.equals("jeopardy@gmail.com"))
			return "jeopardyAdmin";
			else if(email.equals("familyFeud@gmail.com"))
				return "familyFeudAdmin";
			else if(email.equals("mathQuiz@gmail.com"))
				return "mathAdmin";
			else if(email.equals("cloud@gmail.com"))
				return "cloudAdmin";
			else if(email.equals("singleplayer@gmail.com"))
				return "singlePlayerAdmin";
			else
				return "gameList";
		}
		return "signIn";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerList(@RequestParam(value="email",required=true) String email,@RequestParam(value="password",required=true) String password,@RequestParam(value="firstName",required=true) String firstName,@RequestParam(value="lastName",required=true) String lastName){
		System.out.print("email is"+email);
		Home home=new Home();
		home.setFirstName(firstName);
		home.setEmail(email);
		home.setLastName(lastName);
		home.setPassword(password);
		boolean registerstatus = homeDAO.addUser(home);
		if(registerstatus){
		return "gameList";
		}else{
		return "signUp";
		}
	}
	
	@RequestMapping(value = "/signUp", method = RequestMethod.GET)
	public String signUp(Model model){
		return "signUp";
	}
	
	@RequestMapping(value = "/index")
	public String index(Model model){
		return "index";
	}
	@RequestMapping(value = "/signIn", method = RequestMethod.GET)
	public String signIn(Model model){
		//User user =  signUpDAO.find(0);
		return "signIn";
	}
	
	
	@RequestMapping(value = "/category_game", method = RequestMethod.GET)
	public String glist(@RequestParam(value="gid",required=true) int gid,Model model) {
		List list=homeDAO.getCategory(gid);
		model.addAttribute("categories", list);
		System.out.println("gid is"+gid);
		return "categoryList";
	}
	
	
	@RequestMapping(value = "/jeopardyAdmin", method = RequestMethod.GET)
	public String jeopardyAdmin(Model model){
		return "jeopardyAdmin";
	}
	@RequestMapping(value = "/cloudAdmin", method = RequestMethod.GET)
	public String cloudAdmin(Model model){
		return "cloudAdmin";
	}
	
	
	@RequestMapping(value = "/familyfeudAdmin", method = RequestMethod.GET)
	public String familyFeudAdmin(Model model){
		return "familyfeudAdmin";
	}
	
	@RequestMapping(value = "/mathQuizAdmin", method = RequestMethod.GET)
	public String mathAdmin(Model model){
		return "mathAdmin";
	}
	@RequestMapping(value = "/singlePlayerAdmin", method = RequestMethod.GET)
	public String singleplayerAdmin(Model model){
		return "singlePlayerAdmin";
	}


	@RequestMapping(value = "/familyfeudAdmin", method = RequestMethod.POST)
	 public String listfamily(@RequestParam(value="registeration",required=false) List registeration, @RequestParam(value="category",required=false) List category,@RequestParam(value="players",required=false) List players, Model model) {
		System.out.print(registeration);
		homeDAO.addVariants(2,registeration,category,players);
		return "jeopardyAdmin";
	}
	
	@RequestMapping(value = "/cloudAdmin", method = RequestMethod.POST)
	 public String list(@RequestParam(value="registeration",required=false) List registeration, @RequestParam(value="category",required=false) List category,@RequestParam(value="players",required=false) List players, Model model) {
		System.out.print(registeration);
		homeDAO.addVariants(1,registeration,category,players);
		return "jeopardyAdmin";
	}
	
	@RequestMapping(value = "/jeopardyAdmin", method = RequestMethod.POST)
	 public String listjeopardy(@RequestParam(value="registeration",required=false) List registeration, @RequestParam(value="category",required=false) List category,@RequestParam(value="players",required=false) List players, Model model) {
		System.out.print(registeration);
		homeDAO.addVariants(3,registeration,category,players);
		return "jeopardyAdmin";
	}

	@RequestMapping(value = "/mathAdmin", method = RequestMethod.POST)
	 public String listmath(@RequestParam(value="registeration",required=false) List registeration, @RequestParam(value="category",required=false) List category,@RequestParam(value="players",required=false) List players, Model model) {
		System.out.print(registeration);
		homeDAO.addVariants(4,registeration,category,players);
		return "jeopardyAdmin";
	}

	@RequestMapping(value = "/singlePlayerAdmin", method = RequestMethod.POST)
	 public String lissingle(@RequestParam(value="registeration",required=false) List registeration, @RequestParam(value="category",required=false) List category,@RequestParam(value="players",required=false) List players, Model model) {
		System.out.print(registeration);
		homeDAO.addVariants(5,registeration,category,players);
		return "jeopardyAdmin";
	}
	
}
