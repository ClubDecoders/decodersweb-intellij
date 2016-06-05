<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<link rel="stylesheet" href="css/materialize.css" />
<link rel="stylesheet" href="css/materialize.min.css" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<title>Decoders:User Login</title>
</head>
<body>
	<!-- Header Section -->
	<nav class="teal teal-text text-darken-4" role="navigation">
		<div class="nav-wrapper container">
			<a id="logo-container" href="index.html" class="brand-logo"><img
				src="images/decoders10071.jpg" width="40" height="40"
				style="border: thin; border-style: solid; border-radius: 2px;">&nbsp;Decoders | User Login</a>
			<ul class="right hide-on-med-and-down">
				<li><a href="registration.jsp">User Sign-Up</a>
				<li><a href="bulletin.jsp">Bulletin</a></li>
			</ul>

			<ul id="nav-mobile" class="side-nav">
				<li><a href="bulletin.jsp">Bulletin</a></li>
			</ul>
			<a href="#" data-activates="nav-mobile" class="button-collapse"><i
				class="material-icons">menu</i></a>
		</div>
	</nav>
	<br>
	<br>
	<div align="center">

		<img alt="codimage" src="images/decodersLogo.jpg"
			style="border: thick; border-style: solid; border-radius: 10px"
			width="25%" height="200px">
	</div>
	<br>
	<p align="center" style="color: red;"><%
		Object object = request.getAttribute("status");
		if (object == null) {

		} else {
			out.println(object.toString());
		}
	%></p>
	<br>
	<div class="container" align="center">
		<form action="/loginserv" method="post">
			<table>
				<tr>
					<td><input type="text" name="usn" placeholder="Your USN?"
						maxlength="10"></td>
					<td><input type="password" name="password"
						placeholder="Your password"></td>
				</tr>
			</table>
			<button type="submit">Login</button>
		</form>
	</div>
	<br>
	<br>
	<!-- Footer Section -->
	<footer class="page-footer teal">
		<div class="container">
			<div class="row">
				<div class="col l6 s12">
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
						<li><a class="white-text" href="tutorial_ds.jsp">Data Structures and
								Algorithms</a></li>
						<li><a class="white-text" href="tutorial_java.jsp">Core Java Programming</a></li>
						<li><a class="white-text" href="tutorial_even.jsp">Evening Problem
								Solving Sessions</a></li>
						<li><a class="white-text" href="tutorial_saturday.jsp">Saturday Members'
								Sessions</a></li>
					</ul>
				</div>
				<div class="col l3 s12">
					<h5 class="white-text">Internal Projects and Events</h5>
					<ul>
						<li><a class="white-text" href="event_reverse.jsp">Reverse Coding</a></li>
						<li><a class="white-text" href="event_hack.jsp">CSI Hackathon</a></li>
						<li><a class="white-text" href="event_fun.jsp">Fun Bytes</a></li>
						<li><a class="white-text" href="event_projects.jsp">Projects</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="footer-copyright">
			<div class="container">
				Developed by: <a class="brown-text text-lighten-3" href="#">Decoders</a>
				| Theme: Materialize | <a href="allmembers.jsp">All Members</a>
			</div>
		</div>
	</footer>

	<!-- Script Import Section -->
	<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="js/materialize.js"></script>
	<script type="text/javascript" src="js/materialize.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.9/angular.min.js"></script>
</body>
</html>