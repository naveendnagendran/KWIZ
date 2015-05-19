package com.team9.kwiz.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.team9.kwiz.controller.QuizController;
import com.team9.kwiz.model.Quiz;

@Repository
@SuppressWarnings({"unchecked", "rawtypes"})
public class QuizDAO {
	
	@Autowired private SessionFactory sessionFactory;
	private static final Logger logger = LoggerFactory.getLogger(QuizController.class);
	
	@Transactional
	public void addQuiz(Quiz quiz){
		sessionFactory.getCurrentSession().save(quiz);
	}
	
	@Transactional
	public void deleteQuiz(long qzid){
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("delete Quiz where qzid = :qzid");
		query.setParameter("qzid", qzid);
		query.executeUpdate();
		
	}
	
	@Transactional
	public void updateQuiz(Quiz quiz){
		Quiz quizToUpdate = find(quiz.getQzid());
		quizToUpdate.setCatid(quiz.getCatid()); 
		quizToUpdate.setTitle(quiz.getTitle());
		
	}
	
	
	@Transactional
	public Quiz find(long qzid) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Quiz where qzid =:qzid");
		query.setParameter("qzid", qzid);
		List<Quiz> quizzes = query.list();
		Quiz quiz = quizzes.get(0);
		return quiz;
	}
	
	@Transactional
	public List<Quiz> findAll() {
		Session session = sessionFactory.getCurrentSession();
		List quizzes = session.createQuery("from Quiz").list();
		return quizzes;
	}
	
	@Transactional
	public List<Quiz> findAllMyQuiz(long userid) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Quiz where userid = :userid");
		query.setParameter("userid", userid);
		List quizzes = query.list();
		return quizzes;
	}
	
	@Transactional
	public List<Quiz> findAll(long catid) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Quiz where catid = :catid");
		query.setParameter("catid", catid);
		List quizzes = query.list();
		return quizzes;
	}
	
}
