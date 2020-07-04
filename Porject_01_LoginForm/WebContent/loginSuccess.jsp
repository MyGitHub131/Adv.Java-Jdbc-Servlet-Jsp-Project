<%@page import="org.apache.catalina.Session"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Success</title>
<style>
body {
	background-color: lightgray;
}
</style>
<%
	PrintWriter pw = response.getWriter();
	session = request.getSession(false);
	
	if(session !=null){
		String username = (String) session.getAttribute("username");
		pw.println(" Welcome To Login Page : " + username);
	}
%>
</head>
<body>
	<br>
	<br>
	<br>
	<center>
		<h2 style="color: blue">Login Success</h2>
		<h3 style="color: red">
			<i>Welcome to login form !!!</i>
		</h3>
	</center>
</body>
<td><a href="login.jsp">Home</a></td>
</html>