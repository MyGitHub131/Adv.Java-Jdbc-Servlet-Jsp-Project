<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PrintOut Details</title>
</head>
<body>
	<h1 style="color: green">Student All Information</h1>
	<form>
		<table>
			<tr>
				<td>Name :</td>
				<td><%=session.getAttribute("name")%></td>
			</tr>

			<tr>
				<td>Email_Id :</td>
				<td><%=session.getAttribute("emailid")%></td>
			</tr>

			<tr>
				<td>PhoneNo :</td>
				<td><%=session.getAttribute("phoneno")%></td>
			</tr>

			<tr>
				<td>Address :</td>
				<td><%=session.getAttribute("address")%></td>
			</tr>

			<tr>
				<td>Id :</td>
				<td><%=session.getAttribute("id")%></td>
			</tr>

			<tr>
				<td>Branch :</td>
				<td><%=session.getAttribute("branch")%></td>
			</tr>

			<tr>
				<td>Course :</td>
				<td><%=session.getAttribute("course")%></td>
			</tr>

		</table>
	</form>
	<p>
		<a href="index.html">Index</a>
	</p>
</body>
</html>