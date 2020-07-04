<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book Issue Form</title>
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
	<h2 style="color: blue" align="center">Book Issue Information</h2>
	<form action="BookIssue" method="post">
		<center>
			<table>
				<tr>
					<td>Book Name :</td>
					<td><input type="text" name="bookname"
						placeholder="Enter Book Name"></td>
				</tr>

				<tr>
					<td>Author :</td>
					<td><input type="text" name="author"
						placeholder="Enter Author"></td>
				</tr>

				<tr>
					<td>Date Of Issue :</td>
					<td><input type="text" name="dateOfIssue"
						placeholder="Enter Date Of Issue"></td>
				</tr>

				<tr>
					<td>Date Of Return :</td>
					<td><input type="text" name="dateOfReturn"
						placeholder="Enter Date Of Return"></td>
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