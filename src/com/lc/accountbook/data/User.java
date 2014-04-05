package com.lc.accountbook.data;

public class User {
	private final String name;
	private final String password;

	public User(String name, String password) {
		super();
		this.name = name;
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public String getPassword() {
		return password;
	}

	public String getUserAccountTableName() {
		return "ab_" + name.toLowerCase();
	}

	public String getSQLforCreateUserAccountTable() {
		return "create table " + getUserAccountTableName() + " like accountbook";
	}

}
