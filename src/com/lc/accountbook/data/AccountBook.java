package com.lc.accountbook.data;

import java.sql.Date;

public class AccountBook {
	private int id;
	private String title;
	private Date datetime;
	private float price;
	private String[] persons;
	public AccountBook() {
		super();
	}
	public AccountBook(int id, String title, Date datetime, float price,
			String[] persons) {
		super();
		this.id = id;
		this.title = title;
		this.datetime = datetime;
		this.price = price;
		this.persons = persons;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getDatetime() {
		return datetime;
	}
	public void setDatetime(Date datetime) {
		this.datetime = datetime;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String[] getPersons() {
		return persons;
	}
	public void setPersons(String[] persons) {
		this.persons = persons;
	}
	
}
