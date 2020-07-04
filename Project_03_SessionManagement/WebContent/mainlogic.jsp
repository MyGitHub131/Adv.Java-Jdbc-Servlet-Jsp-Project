<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<%
	String usernamevalid = "45789710";
	String passwordvalid = "password";

	String userName = request.getParameter("username");
	String password = request.getParameter("password");

	if (userName == null)
		userName = "";
	if (password == null)
		password = "";

	if (userName.equals(usernamevalid) && password.equals(passwordvalid)) {
		session.setAttribute("Pranati", "Sahoo");
		session.setAttribute("Ali", "Raula");
		session.setAttribute("Manisha", "Mohapatra");
		session.setAttribute("Joshna", "Biswal");
		session.setAttribute("Sangha Mitra", "Ghatual");
	}
%>
<body>

</body>
</html>