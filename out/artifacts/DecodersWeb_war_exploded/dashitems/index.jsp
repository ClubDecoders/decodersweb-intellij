<%@page import="club.decoders.models.Member"%>
<%@page import="com.sun.xml.internal.bind.v2.schemagen.xmlschema.Import"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Candidate Dashboard</title>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/simple-sidebar.css" rel="stylesheet">

<link rel="stylesheet" href="css/materialize.css" />
<link rel="stylesheet" href="css/materialize.min.css" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">


</head>
<script>
	
</script>
<body onbeforeunload="checkExit();">


	<div id="wrapper">

		<!-- Sidebar -->
		<div id="sidebar-wrapper">
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><a href="#"><b>Decoders
							Console</b></a></li>
				<li class="sidebar-brand">
					<%
						//Autoboxing
						Object object = request.getAttribute("member");
						Member member = new Member();
						if (object == null)
							response.sendError(404);
						else {
							//Unboxing
							member = (Member) object;
						}
						out.println(member.getName());
					%>
				</li>
				<li><a href="/monthlychallengeloader/?usn=<%=member.getUsn()%>">
						Monthly Challenges</a></li>
				<li><a
					href="/weeklychallengeloader/?usn=<%=member.getUsn()%>">Weekly
						Challenges</a></li>
				<li><a href="/resources.jsp">Collected Resources</a></li>
				<li><a href="/progressreport/?usn=<%=member.getUsn()%>">Progress Report</a></li>
				<li><a href="/doubtforum/?usn=<%=member.getUsn()%>">Doubt Forum (EDP)</a></li>
				<li><a href="/logouthandler">Logout</a></li>

			</ul>
		</div>
		<!-- /#sidebar-wrapper -->

		<!-- Page Content -->
		<div id="page-content-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<h3>Decoders Console : Quick Options</h3>
						<hr color="blue">
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-md-4">
					<div class="panel panel-success">
						<div class="panel-heading">
							<h4>Progress Report</h4>
						</div>
						<div class="panel-body">

							<p>The Statistics Regarding your completion of
								challenges,problem sets and projects.</p>
							<a href="/progressreport" class="btn btn-default">Get
								Progress Report</a>
						</div>
					</div>
				</div>

				<div class="col-md-4">
					<div class="panel panel-warning">
						<div class="panel-heading">
							<h4>Resources</h4>
						</div>
						<div class="panel-body">

							<p>All Study and reference Materials at one place. Links to
								extremely informative pages.</p>
							<a href="#" class="btn btn-default">View</a>
						</div>
					</div>
				</div>

				<div class="col-md-4">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4>Weekly Challenges</h4>
						</div>
						<div class="panel-body">

							<p>Get the list of weekly problems and solve them. Submit the
								output file for further evaluation.</p>
							<a href="#" class="btn btn-default">Solve</a>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="panel panel-success">
						<div class="panel-heading">
							<h4>Monthly Challenge</h4>
						</div>
						<div class="panel-body">

							<p>Take our monthly challenge to solve some great real world
								problems. Submit the output file.</p>
							<a href="#" class="btn btn-default">Solve</a>
						</div>
					</div>
				</div>

				<div class="col-md-4">
					<div class="panel panel-warning">
						<div class="panel-heading">
							<h4>Sessions</h4>
						</div>
						<div class="panel-body">

							<p>Know about our what went on in the last session. Solve the
								problems given in class.</p>
							<a href="#" class="btn btn-default">View</a>
						</div>
					</div>
				</div>

				<div class="col-md-4">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4>Events</h4>
						</div>
						<div class="panel-body">

							<p>Get to know our signature and upcoming events.</p>
							<a href="#" class="btn btn-default">Go</a>
						</div>
					</div>
				</div>
			</div>
			<!-- /#page-content-wrapper -->

		</div>

		<!-- /#wrapper -->
	</div>


	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

	<!-- Menu Toggle Script -->
	<script>
		$("#menu-toggle").click(function(e) {
			e.preventDefault();
			$("#wrapper").toggleClass("toggled");
		});
	</script>
	<footer class="footer-copyright">
		<P align="center">Developed by: Decoders Team</P>
	</footer>
</body>

</html>
