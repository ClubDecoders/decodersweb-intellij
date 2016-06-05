<%@page import="club.decoders.models.Member" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Member Dashboard</title>
</head>
<%
    Member member = new Member();
    Object object = request.getAttribute("member");
    if (object == null)
        response.sendError(404);
    else {
        member = (Member) object;
    }
%>
<body>
<h1>
    Dear
    <%
        out.println(member.getName());
    %>, the member dashboard is still under construction! Thank you for
    your co-operation.
</h1>
</body>
</html>