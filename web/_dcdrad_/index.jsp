<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0"/>
    <title>Admin Board</title>
    <link rel="stylesheet" href="../css/materialize.css"/>
    <link rel="stylesheet" href="../css/materialize.min.css"/>
</head>
<body>
<%

    Object adminstatus = request.getAttribute("adminstatus");
    if (adminstatus == null) {
        if (request.getAttribute("status") == null)
            response.sendRedirect("adminlogin.jsp");
        else {

        }
    } else {
        request.getSession().setAttribute("flycookie",adminstatus);
        response.addCookie(new Cookie("flycookie",adminstatus.toString()));
    }
%>
<nav class="light-blue lighten-1" role="navigation">
    <div class="nav-wrapper container">
        <a id="logo-container" href="index.html" class="brand-logo">Decoders Admin
            Console</a>
        <ul class="right hide-on-med-and-down">
            <li><%=adminstatus.toString()%></li>
            <li><a href="reginfo.jsp">Show Users</a></li>
        </ul>
    </div>
</nav>
<%
    Object status = request.getAttribute("status");
    if (status == null) {

    } else {
        out.println("<p align='center' style='color:red'>"
                + status.toString() + "</p>");
    }
%>
<div class="container">
    <div class="section">

        <!--   Icon Section   -->
        <div class="row">
            <div class="col s4">
                <div class="icon-block">
                    <h2 class="center light-blue-text">
                        <i class="material-icons">Announcer</i>
                    </h2>
                    <h5 class="center">Make an announcement in bulletin</h5>

                    <p class="light">Make the announcement to be visible in the
                        announcement pages that candidates will regularly visit!</p>

                    <p>
                        <a href="/_dcdrad_/announcement_maker.jsp" id="download-button"
                           class="btn-large waves-effect waves-light orange">Announce</a>
                    </p>
                </div>
            </div>

            <div class="col s4">
                <div class="icon-block">
                    <h2 class="center light-blue-text">
                        <i class="material-icons">Members</i>
                    </h2>
                    <h5 class="center">Register a member</h5>

                    <p class="light">Register a new member after the recruitments.
                        Generated passwords can be changed by Administrators only. All
                        the member queries have to be dropped to
                        <a href="mailto:decodersprogrammingclub@gmail.com">Decoders Mail</a></p>
                    <p>
                        <a href="/_dcdrad_/memberreg.jsp"
                           class="btn-large waves-effect waves-light orange">Register a
                            Member</a>
                    </p>
                </div>
            </div>

            <div class="col s4">
                <div class="icon-block">
                    <h2 class="center light-blue-text">
                        <i class="material-icons">Problems</i>
                    </h2>
                    <h5 class="center">Submit a problem!</h5>

                    <p class="light">Submit a problem after evening sessions is over or a new challenge you would like
                        to post. You need to give the serial number, problem statement and also its solution. You should
                        paste the solution from a plaintext editor such as Notepad,Atom,Gedit,VS Code, Sublime e.t.c.
                        &nbsp;<b>Do not write there in the provided text area. DO NOT PASTE DIRECTLY FROM A WEB PAGE,PDF or
                            DOCX. </b></p>
                    <p>
                        <a href="/_dcdrad_/problemForm.jsp"
                           class="btn-large waves-effect waves-light orange">Submit a question!
                        </a>
                    </p>
                </div>
            </div>


        </div>

    </div>
    <br> <br>

    <div class="section"></div>
</div>


<!-- Footer section below -->
<footer class="page-footer blue">
    <div class="footer-copyright">Team: Decoders |
        | Powered by: Google App Engine
    </div>
</footer>
<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="js/materialize.js"></script>
<script type="text/javascript" src="js/materialize.min.js"></script>
</body>
</html>