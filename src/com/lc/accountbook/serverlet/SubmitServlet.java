package com.lc.accountbook.serverlet;

import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lc.accountbook.data.AccountBook;
import com.lc.accountbook.data.Database;
import com.lc.accountbook.utility.GV;

public class SubmitServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		doPost(req, res);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		try {

			String person = (String) req.getParameter("person_name");
			String title = (String) req.getParameter("title_name");
			String place = (String) req.getParameter("place_name");
			Timestamp datetime = Timestamp.valueOf((String) req.getParameter("datetime"));
			float price = Float.valueOf((String) req.getParameter("price"));
			String comment = (String) req.getParameter("comment");
			if (Database.insertOneBillToTable(new AccountBook(0, title,
					datetime, price, place, person.split("&"), comment)) == 1) {
				res.sendRedirect(GV.URL_HOME + "?"
						+ GV.ATTRIBUTE_IS_INSERT_RIGHT + "=true");
			} else {
				res.sendRedirect(GV.URL_HOME + "?"
						+ GV.ATTRIBUTE_IS_INSERT_RIGHT + "=false");
			}
		} catch (Exception e) {
			res.sendRedirect(GV.URL_HOME + "?" + GV.ATTRIBUTE_IS_INSERT_RIGHT
					+ "=false");
		}
	}

}
