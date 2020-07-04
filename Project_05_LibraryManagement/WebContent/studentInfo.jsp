<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Information</title>
<style>
body {
	background-color: lightgray;
}
</style>
<%
//Changed by bibhuti
	PrintWriter pw = response.getWriter();
	session = request.getSession(false);

	if (session != null) {
		String userName = (String) session.getAttribute("username");
		pw.println(" Welcome To Library Management System : " + userName);
	}
%>
</head>
<body>
	<br>
	<br>
	<br>
	<h2 style="color: blue" align="center">Student Information</h2>
	<form action="StudentInfo" method="post">
		<center>
			<table>
				<tr>
					<td>Name :</td>
					<td><input type="text" name="name" placeholder="Enter Name">
					</td>
				</tr>

				<tr>
					<td>Address :</td>
					<td><input type="text" name="address"
						placeholder="Enter Address"></td>
				</tr>

				<tr>
					<td>Phone No :</td>
					<td><input type="text" name="phoneno"
						placeholder="Enter Phone No"></td>
				</tr>

				<tr>
					<td colspan="2" align="right"><input type="reset" name="reset"
						value="Clear"> <input type="submit" name="submit"
						value="Submit"></td>
				</tr>
			</table>
		</center>
	</form>
</body>
<a href="index.jsp">Home</a>
</html>