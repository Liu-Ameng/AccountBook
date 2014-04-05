<%@page import="org.apache.catalina.startup.HomesUserDatabase"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="css/bootstrap-them.min.css" rel="stylesheet" media="screen">
<link href="css/style.css" rel="stylesheet">
</head>
<body>
	<%
		String result = (String)session.getAttribute("logined");
		boolean isWrong = false;
		if (result != null && result.equals("false")){
			isWrong = true;
		}else if(result != null && result.equals("true")) {
			response.sendRedirect("home.jsp");
		}
	%>
	<div class="container" id="index_login">
		<form class="form-signin" action="home.do" method="POST"
			enctype="application/x-www-form-urlencoded">
			<h2 class="form-signin-heading">Please sign in</h2>
			<%
				if (isWrong) {
			%>
			<div class="alert alert-danger">
				<strong>Oh snap!</strong> Name or password is wrong!
			</div>
			<%
				}
			%>
			<input type="text" name="name" class="input-block-level"
				placeholder="User name">
			<input type="password" name="password" class="input-block-level"
				placeholder="Password">
			<label class="checkbox">
				<input type="checkbox" value="remember-me">
				Remember me
			</label>
			<button class="btn btn-large btn-primary" type="submit">Sign
				in</button>
		</form>
	</div>
</body>
</html>