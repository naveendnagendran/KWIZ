package com.team9.kwiz.dao;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.net.UnknownHostException;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.mongodb.BasicDBList;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;
import com.mongodb.ServerAddress;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import com.team9.kwiz.model.Home;
import com.team9.kwiz.model.User;

@Repository
@SuppressWarnings({"unchecked", "rawtypes"})
public class HomeDAO {
	java.sql.Connection conn = null;
    java.sql.Statement stmt = null;
    int i = 15;
    int temp;
	@Autowired private SessionFactory sessionFactory;
	
	@Transactional
	public boolean verifyLogin(String email, String password) {
		 try{
			 try {
	
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("gotConnection");
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
		      conn = DriverManager.getConnection("jdbc:mysql://localhost/kwiz","root","root");
		      stmt = conn.createStatement();
		      String query ="select password from users where email='"+email+"';";
		      System.out.println(""+query);
		      ResultSet rs = stmt.executeQuery(query);
		      System.out.println("verified email");
		          while (rs.next()) {
				String pass=rs.getString("password");
				if(pass.equals(password)){
					System.out.print("passwords match");
					return true;
				}else{
					System.out.print("passwords do not match");
				}
		          }
		 }catch(Exception e){
		 }
		 return false;
		 }
	
	
	public boolean addUser(Home home) {
		try{
		      try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		      conn = DriverManager.getConnection("jdbc:mysql://localhost/kwiz","root","root");
		      stmt = conn.createStatement();
		      i++;
		      temp = i;
				 String query = "INSERT INTO `kwiz`.`users` (`userid`, `firstname`, `lastname`, `email`, `password`) VALUES ('"+temp+"','" + home.getFirstName() + "','" + home.getLastName() + "','" + home.getEmail() + "','" + home.getPassword() + "');";
				 stmt.executeUpdate(query);
				 return true;
		   }
		   catch (SQLException e) {
					e.printStackTrace();
					return false;
					
			}
	}
	
	public void addVariants(int game_id,List registeration, List category, List players) {
		
		try {
			MongoClient mongoClient = new MongoClient(new ServerAddress("172.20.10.2" , 27017));
			DB db= mongoClient.getDB( "kwiz" );
			DBCollection collection = db.getCollection("variant_features"); 
		
				BasicDBObject object=new BasicDBObject();
				object.put("gameId", game_id);
				object.put("category", category);
				object.put("registeration",registeration);
				object.put("players",players);
				collection.insert(object);
			

		} catch (Exception e) {				
			e.printStackTrace();
		}
	}
	
	public List getCategory(int game_id){
		MongoClient mongoClient=null;
		try {
			mongoClient = new MongoClient("172.20.10.2" , 27017);
		} catch (UnknownHostException e) {
			e.printStackTrace();
		}
		DB db= mongoClient.getDB( "kwiz" );
		DBCollection collection = db.getCollection("variant_features"); 
		BasicDBList categoryList=null;
		BasicDBObject query=new BasicDBObject("gameId",game_id);
		DBObject obj=collection.findOne(query);
		if(obj!=null){
		categoryList =  (BasicDBList) obj.get("category");
				if(!categoryList.isEmpty())	
			for (int i=0;i<categoryList.size();i++){
			System.out.println("the boardlist object ::: "+categoryList.get(i));

			}
		}
		return categoryList;
		
	}
			
}
	
	

