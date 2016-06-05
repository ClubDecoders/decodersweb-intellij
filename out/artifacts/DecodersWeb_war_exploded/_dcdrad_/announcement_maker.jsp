<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0"/>
    <link rel="stylesheet" href="../css/materialize.css"/>
    <link rel="stylesheet" href="../css/materialize.min.css"/>
    <title>Announcer</title>
    <script type="text/javascript">
        window.history.forward();
    </script>
</head>
<body>
<nav class="light-blue lighten-1" role="navigation">
    <div class="nav-wrapper container">
        <a id="logo-container" href="index.html" class="brand-logo">Decoders
            Admin Console: Announcer</a>
        <ul class="right hide-on-med-and-down">
            <li><a href="regiscan.jsp">Show Registrations</a></li>
        </ul>
    </div>
</nav>

<!-- Body Below -->
<div align="center" class="container">
    <form action="/bulletinserv" method="post">
        <table>
            <tr>
                <td>
                    <input type="text" name="anId" placeholder="A unique Announcement ID?">
                <td>
            <tr>
                <td>Announcement Date(Give Today's Date!): <input type="date"
                                                                  placeholder="Current Date" name="andate"
                                                                  placeholder="Annoncement Date(Probably Today,but anyway!!)"
                                                                  required="required">
                </td>

            </tr>
            <tr>
                <td><input type="text" name="antitle"
                           placeholder="Enter Announcement Title" required="required">
                </td>
            </tr>
            <tr>
                <td><input type="text" name="antext"
                           placeholder="Enter Announcement Text?" required="required">
                </td>
            </tr>
            <tr>
                <td><input type="url" name="anurl"
                           placeholder="Enter links related to announcement, if any?">
                </td>
            </tr>
            <tr>
                <td><input type="text" name="anperson"
                           placeholder="Announcer's Name?" required="required"></td>
            <tr>
        </table>
        <p align="center">
            <button type="submit" class="btn waves-effect waves-light">Announce<i class="material-icons right"></i>
            </button>
            <button type="reset" value="Clear" class="btn waves-effect waves-light">Clear</button>
        </p>
    </form>
</div>
<!--  Footer Section Below -->
<footer class="page-footer teal">
    <div class="footer-copyright" align="center">Organizers:
        Decoders Final Years | WebApp Dev & Admin: Anurag Ambuj | Powered by:
        Google App Engine
    </div>
</footer>
<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="js/materialize.js"></script>
<script type="text/javascript" src="js/materialize.min.js"></script>
</body>
</html>