package com.lc.accountbook.data;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * 
 * @author Liu Che
 * 
 */
public class Database {
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	static final String DB_URL = "jdbc:mysql://localhost:3306/accountbook";
	static final String DB_USER = "root";
	static final String DB_PASSWD = "xianer123";

	static User currentUser = null;

	public static void setCurrentUser(String userName) {
		currentUser = new User(userName, "");
	}

	/**
	 * check user's identity by query database
	 * 
	 * @param user
	 *            - user bean
	 * @return true - right password; false - wrong password
	 */
	public static boolean checkUserLogin(User user) {
		Connection connection = null;
		Statement statement = null;
		boolean isPasswordRight = false;
		try {
			Class.forName(JDBC_DRIVER);
			// System.out.println("connecting...");
			connection = DriverManager
					.getConnection(DB_URL, DB_USER, DB_PASSWD);
			statement = connection.createStatement();
			String sql = "select * from accountbook.user where name=\""
					+ user.getName() + "\" and password=\""
					+ user.getPassword() + "\";";
			ResultSet result = statement.executeQuery(sql);
			if (result.next()) {
				isPasswordRight = true;
				currentUser = user;
			}
			result.close();
			statement.close();
			connection.close();
		} catch (SQLException sq) {
			sq.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (statement != null) {
					statement.close();
				}
			} catch (SQLException e2) {
				e2.printStackTrace();
			}
			try {
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e2) {
				e2.printStackTrace();
			}
		}
		return isPasswordRight;
	}

	public static List<AccountBook> getAccountBooks(String whereCondition) {
		if (currentUser == null)
			return null;
		Connection connection = null;
		Statement statement = null;
		List<AccountBook> list = new ArrayList<AccountBook>();
		try {
			Class.forName(JDBC_DRIVER);
			// System.out.println("connecting...");
			connection = DriverManager
					.getConnection(DB_URL, DB_USER, DB_PASSWD);
			statement = connection.createStatement();
			String sql = "select * from "
					+ currentUser.getUserAccountTableName();
			if (whereCondition != null) {
				sql += " where " + whereCondition;
			}
			ResultSet result = statement.executeQuery(sql);
			while (result.next()) {
				int id = result.getInt("id");
				Timestamp datetime = result.getTimestamp("datetime");
				String title = result.getString("title");
				String[] persons = result.getString("person").split("&");
				float price = result.getFloat("price");
				String place = result.getString("place");
				String comment = result.getString("comment");
				list.add(new AccountBook(id, title, datetime, price, place,
						persons, comment));
			}
			result.close();
			statement.close();
			connection.close();
		} catch (SQLException sq) {
			sq.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (statement != null) {
					statement.close();
				}
			} catch (SQLException e2) {
				e2.printStackTrace();
			}
			try {
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e2) {
				e2.printStackTrace();
			}
		}
		return list;
	}

	public static int insertOneBillToTable(AccountBook bill) {
		if (currentUser == null)
			return -1;
		Connection connection = null;
		PreparedStatement statement = null;
		int ret = -1;
		try {
			Class.forName(JDBC_DRIVER);
			// System.out.println("connecting...");
			connection = DriverManager
					.getConnection(DB_URL, DB_USER, DB_PASSWD);
			String sql = "INSERT INTO " + currentUser.getUserAccountTableName()
					+ " " + bill.getInsertSQL() + ";";
			statement = connection.prepareStatement(sql);
			ret = statement.executeUpdate();
			statement.close();
			connection.close();
		} catch (SQLException sq) {
			sq.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (statement != null) {
					statement.close();
				}
			} catch (SQLException e2) {
				e2.printStackTrace();
			}
			try {
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e2) {
				e2.printStackTrace();
			}
		}
		return ret;
	}
}
