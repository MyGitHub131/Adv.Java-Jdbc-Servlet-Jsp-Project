<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Form</title>
<style>
body {
	background-color: black;
}
</style>
</head>
<body>
	<form action="LoginCheckServlet" method="post">
		<br> <br> <br>
		<center>
			<table
				style="background-color: lightgreen; margin-left: 20px; margin-left: 20px">
				<tr>
					<td align="center"><h3 style="color: red;">Login Form</h3></td>
				</tr>

				<tr>
					<td>UserName: <input type="text" name="username"
						placeholder="Please Enter UserName">
					</td>
				</tr>

				<tr>
					<td>Password: <input type="password" name="password"
						placeholder="Please Enter Password">
					</td>
				</tr>

				<tr>
					<td colspan="2" align="right"><input type="submit"
						name="submit" value="Submit"> <a href="register.jsp">Registration</a></td>
				</tr>
			</table>
			
		</center>
	</form>
</body>
</html>