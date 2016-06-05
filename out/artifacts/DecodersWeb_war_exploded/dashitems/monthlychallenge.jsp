<%@ page import="club.decoders.models.User" %>
<%@ page import="club.decoders.models.Member" %>
<%@ page import="club.decoders.appengine.DatastoreAdmin" %>
<%@ page import="club.decoders.models.Question" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by Anurag Ambuj for Decoders Team Contribution
  Date: 26/5/16
  Time: 4:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Monthly Challenge Problems</title>
    <link rel="stylesheet" href="css/materialize.css">
    <link rel="stylesheet" href="css/bootstrap.css">
</head>
<body>
    <%
        Object boxedUserObject = null;
        Member unboxedUserObject = null;
        if(request.getAttribute("user")==null)
            response.sendError(404);
        else
        {
            boxedUserObject = request.getAttribute("user");
            unboxedUserObject = (Member) boxedUserObject;
        }
    %>
    <h2>Welcome <%=unboxedUserObject.getName()%></h2>
    <h2>Welcome to monthly challenges! Solve the problems and see your progress!</h2>
    <progress max="10" value="<%=unboxedUserObject.getMemberProgress(DatastoreAdmin.getAllQuestions().size())%>" class="progress"></progress>
    Available Questions to Solve
    <%
        ArrayList<Question> questionArrayList = DatastoreAdmin.getAllQuestions();
        if(questionArrayList.size() == unboxedUserObject.getSolvedQNo().size())
            out.println("You have solved it all!If you want, you may solve them again!");
        else
        {
            out.println("You have solved:");
            for(int i:unboxedUserObject.getSolvedQNo())
            {
                out.print("Q"+i+",");
            }

        }
        out.println("Available problems:");
    %>
    <table>
        <%
            for(Question q : DatastoreAdmin.getAllQuestions()) {
                out.println("<tr>");
                out.println(String.format("<td>%d</td>", q.getQid()));
                out.println(String.format("<td>%s</td>", q.getProblem()));
                out.println(String.format("<td><a class = 'btn' href='problemsolver/?qid=%d&usn=%s'>Solve</a></td>", q.getQid(),unboxedUserObject.getUsn()));
                out.println("</tr>");
            }
        %>
    </table>
</body>
</html>
