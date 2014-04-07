package com.lc.accountbook.serverlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lc.accountbook.data.Database;
import com.lc.accountbook.data.User;
import com.lc.accountbook.utility.GV;

public class LoginServlet extends HttpServlet {

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
		String userName = (String) req.getParameter("name");
		String userPassword = (String) req.getParameter("password");
		if (Database.checkUserLogin(new User(userName, userPassword))) {
			//req.setAttribute("login_result", "true");
			req.getSession().setAttribute(GV.SESSION_HAS_LOGIN, "true");
			req.getSession().setAttribute(GV.SESSION_USER_NAME, userName);
			res.sendRedirect(GV.URL_HOME);
		} else {
			//req.setAttribute("login_result", "false");
			req.getSession().setAttribute(GV.SESSION_HAS_LOGIN, "false");
			res.sendRedirect(GV.URL_INDEX);
		}
	}

}
