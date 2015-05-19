package com.team9.kwiz.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "game")
public class GameList {
	@Id @GeneratedValue private long gameid;
	private String gamename;
	
	public void setCategoryid(long categoryid) {
		this.gameid = gameid;
	}
	public long getCategoryid() {
		return gameid;
	}
	public String getCategory() {
		return gamename;
	}
	public void setCategory(String gamename) {
		this.gamename = gamename;
	}
}
