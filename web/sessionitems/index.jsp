<%@page import="club.decoders.appengine.DatastoreAdmin"%>
<%@page import="club.decoders.models.Question"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<link rel="stylesheet" href="../css/materialize.css" />
<link rel="stylesheet" href="../css/materialize.min.css" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<title>Decoders Session Resources</title>
</head>
<body>
	<!-- Header Section Begins -->
	<nav class="teal teal-text text-darken-4" role="navigation">
		<div class="nav-wrapper container">
			<a id="logo-container" href="index.html" class="brand-logo"><img
				src="../images/decoders10071.jpg" width="40" height="40"
				style="border: thin; border-style: solid; border-radius: 2px;">&nbsp;Decoders</a>
			<ul class="right hide-on-med-and-down">
				<li><a href="user_login.jsp">User Login</a></li>
				<li><a href="registration.jsp">User Sign-Up</a></li>
				<li><a href="memb_login.jsp">Members Login</a></li>
				<li><a href="bulletin.jsp">Bulletin</a></li>
			</ul>

			<ul id="nav-mobile" class="side-nav">
				<li><a href="memb_login.jsp">Members Login</a></li>
				<li><a href="bulletin.jsp">Bulletin</a></li>
			</ul>
			<a href="#nav-mobile" data-activates="nav-mobile"
				class="button-collapse"><i class="material-icons">menu</i></a>
		</div>
	</nav>
	<!-- Header Section Ends -->

	<!-- Body Section -->
	<h3 align="center">Problem Statements and Solutions for the
		Evening Sessions</h3>
	<h5 align="center">Solve it yourself and then view the solutions!
		Do not view it directly!</h5>
	<%
		ArrayList<Question> alist = DatastoreAdmin.getAllQuestions();
	%>
	<div class="container">
		<script type="text/javascript">
			function enableDisable(id) {
				if ($(id).attr("hidden")==="hidden") {
					$(id).removeAttr("hidden");
				} else {
					$(id).attr("hidden","true");
				}
			}
		</script>


			<%
				for (Question q : alist) {
					out.println("<hr color='blue'>");
					out.println("<p align='center'><strong>QID:"
							+ q.getQid() + "</strong></p>");
					out.println("<p align='center'><strong> Problem Statement: "
							+ q.getProblem() + "</strong></p>");
					out.println("<p align='center'>"
							+ "<button class='btn large' id='" + q.getQid()
							+ "' onclick='enableDisable(" + "tab" + q.getQid()
							+ ");'>Solution Switch</button>" + "</p>");
					out.println("<div id='tab" + q.getQid() + "' hidden='true'>");
					out.println("<pre><code>"+ q.getSolution() +"</code></pre>");
					out.println("</div>");
					out.println("<hr color='blue'><hr color='green'>");
				
				}
			%>

	</div>
	<!-- Script Section -->
		<!-- Body Ends -->


	<!-- Footer Section Begins  -->
	<footer class="page-footer teal">
		<div class="container">
			<div class="row">
				<div class="col l6 s12">
					<img alt="decoders" src="../images/decoders200141.jpg"
						width="100px" height="100px"
						style="border: thick solid; border-radius: 10px">
					<h5 class="white-text">Club Description</h5>
					<p class="grey-text text-lighten-4">Decoders is the coding club
						of Siddaganga Institute of Technology, Tumkur. We participate in
						Coding contests, develop amazing solutions to many real world
						problems and develop necessary skills needed in industry of our
						junior members.</p>


				</div>
				<div class="col l3 s12">
					<h5 class="white-text">Tutorials and Sessions</h5>
					<ul>
						<li><a class="white-text" href="../tutorial_ds.jsp">Data
								Structures and Algorithms</a></li>
						<li><a class="white-text" href="../tutorial_java.jsp">Core
								Java Programming</a></li>
						<li><a class="white-text" href="../tutorial_even.jsp">Evening
								Problem Solving Sessions</a></li>
						<li><a class="white-text" href="../tutorial_saturday.jsp">Saturday
								Members' Sessions</a></li>
					</ul>
				</div>
				<div class="col l3 s12">
					<h5 class="white-text">Internal Projects and Events</h5>
					<ul>
						<li><a class="white-text" href="../event_reverse.jsp">Reverse
								Coding</a></li>
						<li><a class="white-text" href="../event_hack.jsp">CSI
								Hackathon</a></li>
						<li><a class="white-text" href="../event_fun.jsp">Fun
								Bytes</a></li>
						<li><a class="white-text" href="../event_projects.jsp">Projects</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="footer-copyright">
			<div class="container">
				Developed by: <a class="brown-text text-lighten-3" href="#">Decoders</a>
				| Theme: Materialize | <a href="../allmembers.jsp">All Members</a> |
				<a href="../_dcdrad_/adminlogin.jsp">Admin</a>
			</div>
		</div>
	</footer>
	<!-- Footer Section Ends -->

	<!-- Script Import Section -->
	<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="../js/materialize.js"></script>
	<script type="text/javascript" src="../js/materialize.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.9/angular.min.js"></script>
</body>
</html>