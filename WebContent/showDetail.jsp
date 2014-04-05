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
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-theme.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
</head>
<body>
	<%@ include file="header.jsp"%>

	<div class="container">
		<table class="table table-hover">
			<tr>
				<th>#</th>
				<th>Time</th>
				<th>Title</th>
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
					out.println("<td>" + account.getId() + "</td>");
					out.println("<td>" + account.getDatetime().toString() + "</td>");
					out.println("<td>" + account.getTitle() + "</td>");
					out.println("<td>" + account.getPrice() + "</td>");
					out.println("</tr>");
				}
			%>
		</table>
	</div>

</body>
</html>