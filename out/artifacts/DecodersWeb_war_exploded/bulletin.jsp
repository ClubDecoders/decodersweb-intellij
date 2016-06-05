<%@page import="club.decoders.appengine.DatastoreAdmin" %>
<%@page import="club.decoders.models.AnnouncementModel" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0"/>
    <link rel="stylesheet" href="css/materialize.css"/>
    <link rel="stylesheet" href="css/materialize.min.css"/>
    <title>Decoders Bulletin Board</title>
</head>
<body>
<!-- Header Section -->
<nav class="light-blue lighten-1" role="navigation">
    <div class="nav-wrapper container">
        <a id="logo-container" href="index.html" class="brand-logo">Decoders
            Bulletin Board and Announcements | Home</a>
    </div>

</nav>
<!-- Document body begins -->

<div align="center" class="container">

    <%
        for (AnnouncementModel anmodel : DatastoreAdmin
                .getAllAnnouncements()) {

            out.println("<div class='card blue-grey darken-1' align='center'>");
            out.println("<div class='card-content white-text'>");
            out.println("<span class='card-title'>" + anmodel.getAndate()
                    + ": " + anmodel.getAntitle() + "</span>");
            out.println("<p>" + anmodel.getAntext() + "</p>");
            out.println("</div>");
            out.println("<div class='card-action'>");
            if (!anmodel.getAnurl().equals(" "))
                out.println("<a href='" + anmodel.getAnurl() + "'>"
                        + "Attached Link Here" + "</a>");
            else
                out.println("<a href='#'" + "No Specified Links" + "</a>");
            out.println("</div>");
            out.println("</div>");
        }
    %>

    <!--

        <div class='card blue-grey darken-1' align='center'>
            <div class='card-content white-text'>
                <span class='card-title'>Card Title</span>
                <p>I am a very simple card. I am good at containing small bits
                    of information. I am convenient because I require little markup to
                    use effectively.</p>
            </div>
            <div class='card-action'>
                <a href='#'>This is a link</a>
            </div>
        </div>
        -->
</div>


<!-- Footer Section
<footer class="page-footer teal"
    style="bottom: 0px; position: absolute; height: 50px; width: 100%;">
    <div class="footer-copyright" align="center">
        Register if you haven't!<a href="register.jsp">here</a>.
    </div>
</footer>
-->
<!-- Footer Section -->
<footer class="page-footer teal">
    <div class="container">
        <div class="row">
            <div class="col l6 s12">
                <img alt="decoders" src="images/decoders200141.jpg" width="100px"
                     height="100px" style="border: thick solid; border-radius: 10px">
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
                    <li><a class="white-text" href="tutorial_ds.jsp">Data
                        Structures and Algorithms</a></li>
                    <li><a class="white-text" href="tutorial_java.jsp">Core
                        Java Programming</a></li>
                    <li><a class="white-text" href="tutorial_even.jsp">Evening
                        Problem Solving Sessions</a></li>
                    <li><a class="white-text" href="tutorial_saturday.jsp">Saturday
                        Members' Sessions</a></li>
                </ul>
            </div>
            <div class="col l3 s12">
                <h5 class="white-text">Internal Projects and Events</h5>
                <ul>
                    <li><a class="white-text" href="event_reverse.jsp">Reverse
                        Coding</a></li>
                    <li><a class="white-text" href="event_hack.jsp">CSI
                        Hackathon</a></li>
                    <li><a class="white-text" href="event_fun.jsp">Fun Bytes</a></li>
                    <li><a class="white-text" href="event_projects.jsp">Projects</a></li>
                </ul>
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