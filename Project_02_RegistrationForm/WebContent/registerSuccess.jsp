<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Success</title>
<style>
body {
	background-color: LightGray;
}
</style>
</head>
<%
	String firstname = request.getParameter("firstName");
	String lastname = request.getParameter("lastName");
	String email = request.getParameter("email");
	String address = request.getParameter("address");
	String phoneNo = request.getParameter("phone");
	String uploadPic = request.getParameter("pic");
	String aboutme = request.getParameter("aboutme");
	String gen = request.getParameter("gender");
	String dob = request.getParameter("dob");
	String ms = request.getParameter("maritalstatus");
	String place = request.getParameter("place");
	String qualification = request.getParameter("qualification");
	String hob = request.getParameter("hobby");
	String ambition = request.getParameter("ambition");
%>
<body>
	<br>
	<br>
	<center>
		<form>
			<table>
				<tr>
					<td align="center"><h2 style="color: blue">Registration Success Page</h2></td>
				</tr>
				<tr>
					<td>First Name :</td>
					<td><%=firstname%></td>
				</tr>

				<tr>
					<td>Last Name :</td>
					<td><%=lastname%></td>
				</tr>

				<tr>
					<td>Email :</td>
					<td><%=email%></td>
				</tr>

				<tr>
					<td>Address :</td>
					<td><%=address%></td>
				</tr>

				<tr>
					<td>Phone no :</td>
					<td><%=phoneNo%></td>
				</tr>

				<tr>
					<td>UploadPic :</td>
					<td><%=uploadPic%></td>
				</tr>

				<tr>
					<td>About me :</td>
					<td><%=aboutme%></td>
				</tr>


				<tr>
					<td>Gender :</td>
					<td><%=gen%></td>
				</tr>

				<tr>
					<td>DOB :</td>
					<td><%=dob%></td>
				</tr>

				<tr>
					<td>MaritalStatus :</td>
					<td><%=ms%></td>
				</tr>

				<tr>
					<td>Place Of Birth :</td>
					<td><%=place%></td>
				</tr>

				<tr>
					<td>Qualification :</td>
					<td><%=qualification%></td>
				</tr>

				<tr>
					<td>Hobbies :</td>
					<td><%=hob%></td>
				</tr>

				<tr>
					<td>Ambition :</td>
					<td><%=ambition%></td>
				</tr>
			</table>
		</form>
	</center>
</body>
<a href="index.jsp">Home</a>
</html>