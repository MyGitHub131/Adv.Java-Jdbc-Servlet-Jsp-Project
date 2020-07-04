<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logout Form</title>
<style>
body {
	background-color: LightGray;
}
</style>
</head>
<%
	PrintWriter pw = response.getWriter();
	session = request.getSession(false);

	session.invalidate();
	pw.println("You are successfully logged out !!!");
%>
<body>
	<h1 style="color: blue">Logout Form</h1>
	<p>
		
		<a href="login.jsp">Login</a>
		<br>
		<br>
		<a href="index.html">Home</a>
	</p>
</body>
</html>