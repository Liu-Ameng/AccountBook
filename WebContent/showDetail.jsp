<%@page import="com.lc.accountbook.data.AccountBook"%>
<%@page import="com.lc.accountbook.data.Database"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Detail Account</title>

<%@ include file="LINKS.jsp"%>
</head>
<body>
	<%@ include file="NAV.jsp"%>

	<div class="container">
		<table class="table table-hover">
			<tr>
				<th>Time</th>
				<th>Title</th>
				<th>Account</th>
				<th>Money</th>
			</tr>
			<%
				List<AccountBook> accounts = Database.getAccountBooks(null);
				for (AccountBook account : accounts) {
					if (account.getPrice() > 0) {
						out.println("<tr class=\"success\">");
					} else {
						out.println("<tr class=\"warning\">");
					}
					out.println("<td>" + account.getDatetime().toString() + "</td>");
					out.println("<td>" + account.getTitle() + "</td>");
					out.println("<td>" + account.getPersonInOneString() + "</td>");
					out.println("<td>" + account.getPrice() + "</td>");
					out.println("</tr>");
				}
			%>
		</table>
	</div>
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="http://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>