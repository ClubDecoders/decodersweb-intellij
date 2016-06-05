<%@page import="club.decoders.models.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	Object object = request.getAttribute("user");
	User user = new User();
	if (object == null) {
		response.sendError(404);
	} else {
		user = (User) request.getAttribute("user");
	}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User Dashboard</title>
</head>
<body>
	<h1>
		Dear
		<%
		out.println(user.getName() + ",");
	%>
		The personalised dashboard is still under construction! Thanks for
		your co-operation.
	</h1>

</body>
</html>