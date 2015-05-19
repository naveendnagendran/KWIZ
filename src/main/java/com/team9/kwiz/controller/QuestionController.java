package com.team9.kwiz.controller;

import org.jasypt.util.text.BasicTextEncryptor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.CookieValue;

import java.io.File;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.team9.kwiz.dao.QuestionDAO;
import com.team9.kwiz.dao.QuizDAO;
import com.team9.kwiz.model.Question;

@Controller
public class QuestionController {
	@Autowired private QuestionDAO questionDAO;
	@Autowired private QuizDAO quizDAO;
	private static final Logger logger = LoggerFactory.getLogger(QuizController.class);
	  /**
	   * This handler method is invoked when
	   * http://localhost:8080/pizzashop is requested.
	   * The method returns view name "index"
	   * which will be resolved into /WEB-INF/index.jsp.
	   *  See src/main/webapp/WEB-INF/servlet-context.xml
	   */
	
	  @RequestMapping(value="/singlePlayerUser")
	  public String singlePlayerUser(@RequestParam(value="qzid") long qzid, Model model){
		  List<Question> questions = questionDAO.findAll(qzid);
		  model.addAttribute("questions", questions);
		  model.addAttribute("quizid", qzid);
		  //model.addAttribute("NA", "(NA)");
		  return "singlePlayerUser";
	  }
	  
	  @RequestMapping(value="/mathUser")
	  public String mathUser(@RequestParam(value="qzid") long qzid, Model model){
		  List<Question> questions = questionDAO.findAll(qzid);
		  model.addAttribute("questions", questions);
		  model.addAttribute("quizid", qzid);
		  //model.addAttribute("NA", "(NA)");
		  return "mathUser";
	  }
	  
	  @RequestMapping(value="/cloudUser")
	  public String cloudUser(@RequestParam(value="qzid") long qzid, Model model){
		  List<Question> questions = questionDAO.findAll(qzid);
		  model.addAttribute("questions", questions);
		  model.addAttribute("quizid", qzid);
		  //model.addAttribute("NA", "(NA)");
		  return "cloudUser";
	  }
	  
	  @RequestMapping(value="/jeopardyUser")
	  public String jeopardyUser(@RequestParam(value="qzid") long qzid, Model model){
		  List<Question> questions = questionDAO.findAll(qzid);
		  model.addAttribute("questions", questions);
		  model.addAttribute("quizid", qzid);
		  //model.addAttribute("NA", "(NA)");
		  return "jeopardyUser";
	  }
	  
	  @RequestMapping(value="/familyfeudUser")
	  public String familyfeudUser(@RequestParam(value="qzid") long qzid, Model model){
		  List<Question> questions = questionDAO.findAll(qzid);
		  model.addAttribute("questions", questions);
		  model.addAttribute("quizid", qzid);
		  //model.addAttribute("NA", "(NA)");
		  return "familyfeudUser";
	  }
	  
	  @SuppressWarnings("unchecked")
	  @RequestMapping(value="/resultQuiz", method = RequestMethod.POST)
	  public String resultQuiz(Model model, @RequestParam long qzid, HttpServletRequest req){
		  //cant handle radiobuttons with no answer
		  List<Question> questions = questionDAO.findAll(qzid);
		  //List<Answer> values = new ArrayList<Answer>();
		  Enumeration<String> enumeration = req.getParameterNames();
		  int i = 0;
		  while (enumeration.hasMoreElements()) {
			  String parameterName = (String) enumeration.nextElement();
			  //Answer answer = new Answer();
			  if(parameterName.startsWith("Q")) {
				  //logger.info("POTEK!{}",req.getParameter(parameterName));
				  if(req.getParameter(parameterName).equals("null")){
					  //answer.setAnswer("-- No Answer --");
				  }
				  else{
					 // answer.setAnswer(req.getParameter(parameterName));
				  }
				  //answer.setQid(questions.get(i).getQid());
				 // values.add(answer);
				  i++;
			  }
			  
		  }
		  
		  model.addAttribute("questions", questions);
		 // model.addAttribute("answers", values);
		  //model.addAttribute("qzid", qzid);
		  int result = 0;
		  for(Question question: questions){
			 // if(question.getAnswer().equals(values.get(questions.indexOf(question)).getAnswer())){
			//	  result++;
			  //}
		  }
		  Double percentage = ((double)result/(double)questions.size())*100;
		  DecimalFormat df = new DecimalFormat("#.##");
		  model.addAttribute("result",result);
		  model.addAttribute("total",questions.size());
		  model.addAttribute("percentage",df.format(percentage));

		  return "resultQuiz";
	  }
	  
	  @RequestMapping(value = "/questionList", params = "quizid", method = RequestMethod.GET)
	  public String list(@RequestParam(value="quizid") long qzid, Model model) {
		  	List<Question> questions = questionDAO.findAll(qzid);
		    model.addAttribute("questions", questions);
		    model.addAttribute("quizid", qzid);
		    model.addAttribute("quiztitle", quizDAO.find(qzid).getTitle());
		    return "questionList";
	  }
	  
	  @RequestMapping(value = "/addQuestion", params = "quizid", method = RequestMethod.GET)
	  public String addQuestion(@RequestParam(value="quizid", required=false) long qzid, Model model){
		  model.addAttribute("quizid", qzid);
		  model.addAttribute("quiztitle",quizDAO.find(qzid).getTitle());
		  model.addAttribute("warning", "Choice A and B are required to be filled. The Answer must be in at least 1 Choice.");
		  return "addQuestion";
	  }
	 
	  
	  @RequestMapping(value = "/editQuestion", method = RequestMethod.GET)
	  public String editQuestion(Model model, @RequestParam long qid){
		  Question question = questionDAO.find(qid);
		  model.addAttribute("question", question);
		  model.addAttribute("quiztitle",quizDAO.find(question.getQzid()).getTitle());
		  model.addAttribute("warning", "Choice A and B are required to be filled. The Answer must be in at least 1 Choice.");
		  return "editQuestion";
	  }

	  
	  @RequestMapping(value = "/deleteQuestion", method = RequestMethod.GET)
	  public String deleteQestion(Model model, @RequestParam long qid){
		  Question question = questionDAO.find(qid);
		  long qzid = question.getQzid();
		  questionDAO.deleteQuestion(qid);
		  return "redirect:/questionList?quizid="+qzid;
	  }
	  
	  
}
