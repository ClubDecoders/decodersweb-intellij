<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0"/>
    <link rel="stylesheet" href="../css/materialize.css"/>
    <link rel="stylesheet" href="../css/materialize.min.css"/>
    <title>Insert Question</title>
</head>
<body>
<nav class="light-blue lighten-1" role="navigation">
    <div class="nav-wrapper container">
        <a id="logo-container" href="index.html" class="brand-logo">Decoders
            Admin Console: Problem and Solution Insertion</a>
    </div>
</nav>
<div class="container">
    <%
        Object o = request.getAttribute("status");
        if (o == null) {

        } else {
            out.println(o.toString());
        }
    %>
    <form action="/probsol" method="post">
        <table>
            <tr>
                <td>
                    <input type="number" placeholder="Queston Id (number), unique?" name="qid" required="required">
                </td>
            </tr>
            <tr>
                <td>
                    <input type="text" placeholder="Enter Problem Statement?" name="problem" required="required">
                </td>
            </tr>
            <tr>
                <td>
                    <textarea rows="100" cols="100" name="solution" placeholder="Code here"
                              required="required"></textarea>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <button type="submit">Submit Problem</button>
                    &nbsp;&nbsp;
                    <button type="reset">Clear</button>
                </td>
            </tr>
        </table>

    </form>
</div>

<footer class="page-footer teal">
    <div class="footer-copyright" align="center">Administrators:
        Decoders Final Years | Powered by:
        Google Cloud Platform
    </div>
</footer>
<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="js/materialize.js"></script>
<script type="text/javascript" src="js/materialize.min.js"></script>
</body>
</html>