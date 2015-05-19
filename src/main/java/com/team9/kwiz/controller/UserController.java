package com.team9.kwiz.controller;

import org.jasypt.util.text.BasicTextEncryptor;
import org.springframework.web.bind.annotation.CookieValue;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.team9.kwiz.dao.CategoryDAO;
import com.team9.kwiz.dao.QuizDAO;
import com.team9.kwiz.dao.UserDAO;
import com.team9.kwiz.model.Category;
import com.team9.kwiz.model.Quiz;
import com.team9.kwiz.model.User;

@Controller
public class UserController {
	@Autowired private UserDAO userDAO;
	@Autowired private QuizDAO quizDAO;
	@Autowired private CategoryDAO categoryDAO;
	
	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String profile(Model model){
		User user =  userDAO.find(0);
		model.addAttribute("user", user);
		return "profile";
	}
	
	@RequestMapping(value = "/quizHistory", method = RequestMethod.GET)
	public String quizHistory(Model model, @RequestParam long userid){
		return "quizHistory";
	}
	
	@RequestMapping(value = "/myQuizzes", method = RequestMethod.GET)
	public String myQuizzes(Model model, @RequestParam long userid){
		List<Quiz> quizzes = quizDAO.findAllMyQuiz(userid);
		List<Category> categories = categoryDAO.findAll();
		model.addAttribute("categories", categories);
		model.addAttribute("quizzes", quizzes);
		return "myQuizzes";
	}
	
	
}
