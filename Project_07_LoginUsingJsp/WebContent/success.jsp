<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body {
	background-color: lightgray;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Success Page</title>
</head>
<body>
	<%
		PrintWriter pw = response.getWriter();
		session = request.getSession(false);

		if (session != null) {
			String userName = (String) session.getAttribute("username");
			String passWord = (String) session.getAttribute("password");

			pw.println("<html><h3>You are successfully logged in !!!</h3></html>");
			pw.println("<html><h4>Welcome to you login profile</h4></html>");
			pw.println("UserName: " + userName);
			pw.println("Password: " + passWord);
			
		} else {
			response.sendRedirect("index.jsp");
		}
	%>
</body>
<a href="index.jsp">Click here go to home page</a>
</html>