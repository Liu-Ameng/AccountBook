package com.lc.accountbook.data;

import java.sql.Timestamp;

public class AccountBook {
	private int id;
	private String title;
	private Timestamp datetime;
	private String place;
	private float price;
	private String[] persons;
	private String comment;

	public AccountBook() {
		super();
	}

	public AccountBook(int id, String title, Timestamp datetime, float price,
			String place, String[] persons, String comment) {
		super();
		this.id = id;
		this.title = title;
		this.datetime = datetime;
		this.price = price;
		this.persons = persons;
		this.setComment(comment);
		this.place = place;
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

	public Timestamp getDatetime() {
		return datetime;
	}

	public void setDatetime(Timestamp datetime) {
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

	public String getPersonInOneString() {
		StringBuilder builder = new StringBuilder("");
		for (int i = 0; i < persons.length; ++i) {
			if (i > 0)
				builder.append("&");
			builder.append(persons[i]);
		}
		return builder.toString();
	}

	public void setPersons(String[] persons) {
		this.persons = persons;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	/**
	 * The SQL after "INSERT INTO 'table name' looks like : (`datetime`,
	 * `person`, `place`, `price`, `title`, `comment`) VALUES ('2013-01-01
	 * 0:0:0', 'ÒøÐÐ¿¨', 'Home', '7527.86', 'salary', 'monthly salary')";
	 * 
	 * @return SQL for insert this bill in database
	 */
	public String getInsertSQL() {
		return " (`datetime`, `person`, `place`, `price`, `title`, `comment`) VALUES ('"
				+ datetime.toString()
				+ "', '"
				+ getPersonInOneString()
				+ "', '"
				+ place
				+ "', '"
				+ String.valueOf(price)
				+ "', '"
				+ title + "', '" + comment + "')";
	}

}
