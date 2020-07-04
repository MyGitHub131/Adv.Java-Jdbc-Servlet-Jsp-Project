
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
	<form action="LoginCheck" method="post">
		<center>
			<table
				style="background-color: red; margin-left: 20px; margin-left: 20px;">
				<br>
				<br>
				<br>
				<br>
				<br>
				<tr>
					<td align="center"><h3 style="color: lightgreen">Login
							Form</h3></td>
				</tr>
				<tr>
					<td>UserName: <input type="text" name="username"
						placeholder="Please Enter UserName" size="20">
					</td>
				</tr>

				<tr>
					<td>Password: <input type="password" name="password"
						placeholder="Please Enter Password" size="20">
					</td>
				</tr>

				<tr>
					<td><input type="reset"
						name="cancel" value="Reset"> <input type="submit"
						name="submit" value="Login">
				</tr>
			</table>
		</center>
	</form>
</body>
</html>
