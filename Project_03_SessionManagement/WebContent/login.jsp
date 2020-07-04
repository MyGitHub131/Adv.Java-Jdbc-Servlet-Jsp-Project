<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Form</title>
<style>
body {
	background-color: LightGray;
}
</style>
</head>
<body>
	<br>
	<br>
	<br>
	<center>
		<h1 style="color: red">Login Form</h1>
	</center>
	<form action="LoginServlet" method="post">
		<table align="center">
			<tr>
				<td>Username :</td>
				<td><input type="text" name="username"
					placeholder="Please Enter Username"></td>
			</tr>

			<tr>
				<td>Password :</td>
				<td><input type="password" name="password"
					placeholder="Please Enter Password"></td>
			</tr>

			<tr>
				<td colspan="2" align="right"><input type="reset" name="cancel"
					value="Cancel"> <input type="submit" name="submit"
					value="Submit"></td>
			</tr>
		</table>

	</form>
</body>
<a href="index.html">Home Page</a>
</html>