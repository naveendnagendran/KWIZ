package com.team9.kwiz.dao;

import java.sql.DriverManager;
import java.sql.SQLException;
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

import com.team9.kwiz.controller.GameListController;
import com.team9.kwiz.model.GameList;
import com.team9.kwiz.model.Home;
import com.team9.kwiz.model.Quiz;

@Repository
@SuppressWarnings({"unchecked", "rawtypes"})
public class GameListDAO {
	java.sql.Connection conn = null;
    java.sql.Statement stmt = null;
	
	@Autowired private SessionFactory sessionFactory;
	private static final Logger logger = LoggerFactory.getLogger(GameListController.class);
	
	@Transactional
	public void addGame(GameList game){
		sessionFactory.getCurrentSession().save(game);
	}
	
	@Transactional
	public GameList find(long gameid) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Game where gameid =:gameid");
		query.setParameter("gameid", gameid);
		List<GameList> games = query.list();
		GameList game = games.get(0);
		return game;
	}
	
	@Transactional
	public void findAll() {
		//Session session = sessionFactory.getCurrentSession();
		//List games = session.createQuery("from game").list();
		
	
		
		try{
		      try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		      conn = DriverManager.getConnection("jdbc:mysql://aa1ahx449e7bgf5.c3uvgnmjv0zi.us-west-2.rds.amazonaws.com:3306/ebdb","root","password");
		      stmt = conn.createStatement();
				 String query = "SELECT * FROM `kwiz`.`users`;";
				 stmt.executeUpdate(query);
				 System.out.println(""+query);
		   }
		   catch (SQLException e) {
					e.printStackTrace();
					
			}
		
	
	}
	
	@Transactional
	public List<GameList> findAllMyGames(long gameid) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from game where gameid = :gameid");
		query.setParameter("gameid", gameid);
		List games = query.list();
		return games;
		
		
	}
	
//	@Transactional
//	public List<GameList> findAll(long gameid) {
//		Session session = sessionFactory.getCurrentSession();
//		Query query = session.createQuery("from game where gameid = :gameid");
//		query.setParameter("gameid", gameid);
//		List games = query.list();
//		return games;
//	}
//	
}
