
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile Form</title>
<style>
body {
	background-color: LightGray;
}
</style>
</head>
<%
	PrintWriter pw = response.getWriter();
	session = request.getSession(false);

	if (session != null) {
		String userName = (String) session.getAttribute("username");
		pw.println("You are successfully logged in !!!");
		pw.println("Welcome to your profile");
		pw.println("UserName : " + userName);
	} else {
		response.sendRedirect("login.jsp");
	}
	
%>
<body>
	<h1 style="color: blue">Profile Form</h1>
	<p>
		<a href="index.html">Home</a> <br> <br> <a href="logout.jsp">Logout</a>
	</p>
</body>
</html>