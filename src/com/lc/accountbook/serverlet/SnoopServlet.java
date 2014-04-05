package com.lc.accountbook.serverlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lc.accountbook.data.Database;
import com.lc.accountbook.data.User;

public class SnoopServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		String userAgent = req.getHeader("user-agent");
		String clientBrowser = "Not known.";
		if (userAgent != null)
			clientBrowser = userAgent;
		req.setAttribute("client.browser", clientBrowser);
		// test page
		// req.getRequestDispatcher("/showBrowser.jsp").forward(req, res);

		String userName = (String) req.getParameter("name");
		String userPassword = (String) req.getParameter("password");
		if (Database.checkUserLogin(new User(userName, userPassword))) {
			req.setAttribute("login_result", "right");
		} else {
			req.setAttribute("login_result", "wrong");
		}
		//ServletOutputStream out = res.getOutputStream();
		//out.println(">>" + userName + "\t" + userPassword);
		//out.println(Database.checkUserLogin(new User(userName, userPassword)));
		req.getRequestDispatcher("/loginResult.jsp").forward(req, res);
	}

}
