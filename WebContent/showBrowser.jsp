<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show Browser</title>
</head>
<body>
	<table border="1">
	
		<tr>
			<th>Header</th>
			<th>Value</th>
		</tr>
		<tr>
			<td>user-agent</td>
			<td><%=request.getAttribute("client.browser")%></td>
		</tr>
	</table>
</body>
</html>