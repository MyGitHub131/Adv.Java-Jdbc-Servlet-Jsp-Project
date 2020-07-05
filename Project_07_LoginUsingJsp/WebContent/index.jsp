<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body {
	background-color: black;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Index Page</title>
</head>
<body>
	<form action="loginCheck.jsp" method="post">
		<center>
			<br> <br> <br>
			<table
				style="background-color: lightgreen; margin-left: 20px; margin-left: 20px">
				<tr>
					<td align="center"><h3 style="color: red">Login Page</h3></td>
				</tr>
				<tr>
					<td>Username: <input type="text" name="username"
						placeholder="Please Enter Username">
					</td>
				</tr>

				<tr>
					<td>Password: <input type="password" name="password"
						placeholder="Please Enter Password">
					</td>
				</tr>


				<tr>
					<td><input type="reset" name="clear" value="Clear"> <input
						type="submit" name="submit" value="Submit">
						<a href="failure.jsp">Registration</a>
					</td>
				</tr>
			</table>
		</center>
	</form>
</body>
</html>