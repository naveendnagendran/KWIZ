package com.team9.kwiz.controller;

import org.jasypt.util.text.BasicTextEncryptor;
import org.springframework.web.bind.annotation.CookieValue;
import java.util.ArrayList;
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
import com.team9.kwiz.model.Category;
import com.team9.kwiz.model.Quiz;



@Controller
public class QuizController {
	@Autowired private QuizDAO quizDAO;
	@Autowired private CategoryDAO categoryDAO;
	
	private static final Logger logger = LoggerFactory.getLogger(QuizController.class);
	  /**
	   * This handler method is invoked when
	   * http://localhost:8080/pizzashop is requested.
	   * The method returns view name "index"
	   * which will be resolved into /WEB-INF/index.jsp.
	   *  See src/main/webapp/WEB-INF/servlet-context.xml
	   */
	
	
	  @RequestMapping(value="/searchQuiz", method = RequestMethod.GET)
	  public String searchQuiz(Model model){
		  List<Category> categories = categoryDAO.findAll();
		  model.addAttribute("categories", categories);
		  return "searchQuiz";
	  }
	  
	  @RequestMapping(value = "/quizList", method = RequestMethod.POST)
	  public String list(@RequestParam(required=false) long categoryid, @RequestParam(required=false) String tag, Model model) {
		List<Category> categories = categoryDAO.findAll();
		model.addAttribute("categories", categories);
	    return "quizList";
	  }
	  
	  @RequestMapping(value = "/addQuiz", method = RequestMethod.GET)
	  public String addQuiz(Model model){
		  List<Category> categories = categoryDAO.findAll();
		  model.addAttribute("categories", categories);
		  model.addAttribute("warning", "Title is required.");
		  return "addQuiz";
	  }
	  
	  @RequestMapping(value = "/quizList", method = RequestMethod.GET)
	  public String quizList(Model model){
			List<Quiz> quizzes = quizDAO.findAll();
			model.addAttribute("quizzes", quizzes);
			List<Category> categories = categoryDAO.findAll();
			model.addAttribute("categories", categories);
		  return "quizList";
	  }
	  
	  @RequestMapping(value = "/deleteQuiz", method = RequestMethod.GET)
	  public String deleteQuiz(Model model, @RequestParam long qzid){
		  quizDAO.deleteQuiz(qzid);
		  return "redirect:/searchQuiz";
	  }
}
