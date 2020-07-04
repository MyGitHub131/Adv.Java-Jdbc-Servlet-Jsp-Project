<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>College Information</title>
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
	<h2 style="color: blue" align="center">College Information</h2>
	<form action="CollegeInfo" method="post">
		<center>
			<table>
				<tr>
					<td>SIC_No :</td>
					<td><input type="text" name="sicno" placeholder="Enter SIC NO">
					</td>
				</tr>

				<tr>
					<td>Branch :</td>
					<td><input type="text" name="branch"
						placeholder="Enter Branch"></td>
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