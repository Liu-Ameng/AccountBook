
<%@page import="com.lc.accountbook.data.Database"%>
<%@page import="com.lc.accountbook.utility.GV"%>
<%
	//Check seesion;
	String loginResult = (String) session.getAttribute(GV.SESSION_HAS_LOGIN);
	if (loginResult == null || loginResult.equals("true") == false) {
		response.sendRedirect(GV.URL_INDEX);
	}
	String userName = (String) session.getAttribute(GV.SESSION_USER_NAME);
	Database.setCurrentUser(userName);
	
%>
<div class="navbar-wrapper">
	<div class="container">
		<div class="navbar navbar-inverse navbar-static-top" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="home.jsp">Account Book</a>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class="active"><a href="home.jsp">Home</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> Detail <b class="caret"></b>
						</a>
							<ul class="dropdown-menu">
								<li><a href="showDetail.jsp?type=all">All</a></li>
								<li><a href="#">Day by Day</a></li>
								<li><a href="#">Week by Week</a></li>
								<li><a href="#">Month by Month</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> Report Diagram<b class="caret"></b>
						</a>
							<ul class="dropdown-menu">
								<li><a href="#">In vs. Out</a></li>
								<li><a href="#">Trends</a></li>
								<li><a href="#">Classify</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> Settings<b class="caret"></b>
						</a>
							<ul class="dropdown-menu">
								<li><a href="#">Hehehe</a></li>
								<li class="divider"></li>
								<li><a href="logout.jsp">Log out</a></li>
							</ul></li>
						<li><a href="#">About</a></li>
					</ul>
				</div>
			</div>
		</div>

	</div>
</div>
<!-- /div class="navbar navbar-fixed-top" -->