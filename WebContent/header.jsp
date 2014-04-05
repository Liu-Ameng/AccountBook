<%
	//Check seesion;
	String loginResult = (String) session.getAttribute("logined");
	if (loginResult == null || loginResult.equals("true") == false) {
		response.sendRedirect("index.jsp");
	}
%>
<div class="navbar navbar-fixed-top navbar-inverse">
		<div class="navbar-inner">
			<div class="container">
				<ul class="nav">
					<li class="active"><a class="brand" href="home.jsp">Account Book</a></li>
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
					<form class="navbar-search pull-left">
						<input type="text" class="search-query" placeholder="Search">
					</form>
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
	<!-- /div class="navbar navbar-fixed-top" -->