<%@page import="com.sun.jndi.cosnaming.IiopUrl.Address"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PrintOut Page</title>
<style>
body {
	background-color: lightgray;
}
</style>
</head>
<body>
	<br>
	<br>
	<br>
	<h2 style="color: blue" align="center">Student Detail Information</h2>
	<form>
		<center>
			<table border="2">
				<tr>
					<td>Name:</td>
					<td><%=session.getAttribute("name")%></td>
				</tr>

				<tr>
					<td>Address:</td>
					<td><%=session.getAttribute("address")%></td>
				</tr>

				<tr>
					<td>Phone NO:</td>
					<td><%=session.getAttribute("phoneno")%></td>
				</tr>

				<tr>
					<td>SIC_NO:</td>
					<td><%=session.getAttribute("sicno")%></td>
				</tr>

				<tr>
					<td>Branch:</td>
					<td><%=session.getAttribute("branch")%></td>
				</tr>

				<tr>
					<td>Book Name:</td>
					<td><%=session.getAttribute("bookname")%></td>
				</tr>

				<tr>
					<td>Author:</td>
					<td><%=session.getAttribute("author")%></td>
				</tr>

				<tr>
					<td>Date Of Issue:</td>
					<td><%=session.getAttribute("dateOfIssue")%></td>
				</tr>

				<tr>
					<td>Date Of Return:</td>
					<td><%=session.getAttribute("dateOfReturn")%></td>
				</tr>
			</table>
		</center>
	</form>
</body>
<a href="index.jsp">Home</a>
</html>