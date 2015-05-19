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
import com.team9.kwiz.dao.GameListDAO;
import com.team9.kwiz.dao.QuizDAO;
import com.team9.kwiz.model.Category;
import com.team9.kwiz.model.GameList;
import com.team9.kwiz.model.Quiz;

@Controller
public class GameListController {
	@Autowired private GameListDAO gameListDAO;
	@Autowired private CategoryDAO categoryDAO;
	
	private static final Logger logger = LoggerFactory.getLogger(QuizController.class);
	  /**
	   * This handler method is invoked when
	   * http://localhost:8080/pizzashop is requested.
	   * The method returns view name "index"
	   * which will be resolved into /WEB-INF/index.jsp.
	   *  See src/main/webapp/WEB-INF/servlet-context.xml
	   */
	
//	  @RequestMapping(value = "/gameList", method = RequestMethod.POST)
//	  public String list(@RequestParam(required=false) long categoryid, @RequestParam(required=false) String tag, Model model) {
//		//long catid = category.getCatid();
//		if(categoryid!=0 && !tag.isEmpty()){
//			//logger.info("ETO NA ANG TAG: {}",tag);
//			List<Quiz> quizzes = quizDAO.findAll(categoryid, tag);
//		    model.addAttribute("quizzes", quizzes);
//		}
//		else if(categoryid!=0){
//			List<Quiz> quizzes = quizDAO.findAll(categoryid);
//		    model.addAttribute("quizzes", quizzes);
//		}
//		else if(!tag.isEmpty()){
//			//logger.info("ETO NA ANG TAG: {}",tag);
//			List<Quiz> quizzes = quizDAO.findAll(tag);
//		    model.addAttribute("quizzes", quizzes);
//		}
//		else if(categoryid==0){
//			List<Quiz> quizzes = quizDAO.findAll();
//		    model.addAttribute("quizzes", quizzes);
//		}
//		List<GameList> games = GameListDAO.findAll();
//		model.addAttribute("games", games);
//		
//	    return "gameList";
//	  }
	  
	  
	  @RequestMapping(value = "/gameList", method = RequestMethod.GET)
	  public String quizList(Model model){
		  System.out.println("gameList");
			//List<GameList> games = gameListDAO.findAll();
			//model.addAttribute("games", games);
		  return "gameList";
	  }
	  

}
