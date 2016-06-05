<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0"/>
    <link rel="stylesheet" href="../css/materialize.css"/>
    <link rel="stylesheet" href="../css/materialize.min.css"/>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">
    <title>Decoders Member Registration</title>
</head>
<body>
<nav class="teal teal-text text-darken-4" role="navigation">
    <div class="nav-wrapper container">
        <a id="logo-container" href="index.html" class="brand-logo"><img
                src="../images/decoders10071.jpg" width="40" height="40"
                style="border: thin; border-style: solid; border-radius: 2px;">&nbsp;Decoders
            | Registration</a>
        <ul class="right hide-on-med-and-down">
            <li><a href="user_login.jsp">User Login</a></li>
            <li><a href="memb_login.jsp">Members Login</a></li>
            <li><a href="bulletin.jsp">Bulletin</a></li>
        </ul>

        <ul id="nav-mobile" class="side-nav">
            <li><a href="memb_login.jsp">Members Login</a></li>
            <li><a href="user_login.jsp">Bulletin</a></li>
        </ul>
        <a href="#nav-mobile" data-activates="nav-mobile" class="button-collapse"><i
                class="material-icons">menu</i></a>
    </div>
</nav>
<br>
<div align="center" class="container">
    <p align="center">
        <%
            if (request.getAttribute("status") == null) {

            } else {
                out.println(request.getAttribute("status").toString());
            }

        %>
    </p>
    <form action="/memreg" method="post">
        <table>
            <tr>
                <td><input type="text" name="usn" placeholder="Your USN?"
                           maxlength="10" required="required"></td>
                <td><input type="text" name="name"
                           placeholder="What's your Name?" required="required"></td>
            </tr>
            <tr>
                <td>Select Your Branch</td>
                <td><select name="branch" id="branch"
                            class="select browser-default" required="required">
                    <option value="ISE">Information Science and Engineering</option>
                    <option value="CSE">Computer Science and Engineering</option>
                </select></td>
            </tr>
            <tr>
                <td>What's your Semester</td>
                <td><select id="semester" name="sem" class="select browser-default" required="required">
                    <option value="1">First Semester</option>
                    <option value="2">Second Semester</option>
                    <option value="3">Third Semester</option>
                    <option value="4">Fourth Semester</option>
                    <option value="5">Fifth Semester</option>
                    <option value="6">Sixth Semester</option>
                    <option value="7">Seventh Semester</option>
                    <option value="8">Eighth Semester</option>
                </select></td>
            </tr>
            <tr>
                <td><input type="email" name="email"
                           placeholder="Active Email Address" required="required"></td>
                <td><input type="number" name="phone"
                           placeholder="Active Contact Number?" min="1000000000"
                           max="9999999999" required="required"></td>


            </tr>
            <tr>
                <td><input type="password" name="password"
                           placeholder="Password?" required="required"></td>
                <td><input type="password" name="confirm"
                           placeholder="Confirm Password?" required="required"></td>
            </tr>
            <tr>
                <td>
                    <button type="submit" class="btn waves-effect waves-light">
                        Register as a Member<i class="material-icons right"></i>
                    </button>
                    <button type="reset" value="Clear"
                            class="btn waves-effect waves-light">Clear
                    </button>
                </td>
            </tr>
        </table>
    </form>
</div>


<!-- Footer Section -->
<footer class="page-footer teal">
    <div class="container">
        <div class="row">
            <div class="col l6 s12">
                <img alt="decoders" src="../images/decoders200141.jpg" width="100px"
                     height="100px" style="border: thick solid;border-radius:10px">
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
                    <li><a class="white-text" href="#!">Data Structures and
                        Algorithms</a></li>
                    <li><a class="white-text" href="#!">Core Java Programming</a></li>
                    <li><a class="white-text" href="#!">Evening Problem
                        Solving Sessions</a></li>
                    <li><a class="white-text" href="#!">Saturday Members'
                        Sessions</a></li>
                </ul>
            </div>
            <div class="col l3 s12">
                <h5 class="white-text">Internal Projects and Events</h5>
                <ul>
                    <li><a class="white-text" href="#!">Reverse Coding</a></li>
                    <li><a class="white-text" href="#!">CSI Hackathon</a></li>
                    <li><a class="white-text" href="#!">Fun Bytes</a></li>
                    <li><a class="white-text" href="#!">Projects</a></li>
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
<script type="text/javascript" src="../js/materialize.js"></script>
<script type="text/javascript" src="../js/materialize.min.js"></script>
<script
        src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.9/angular.min.js"></script>
</body>
</html>
