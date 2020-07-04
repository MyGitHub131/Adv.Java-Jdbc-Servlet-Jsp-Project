<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Form</title>
<style>
body {
	background-color: lightgray;
}
</style>
</head>
<body>
	<form action="RegistrationCheckServlet" method="post">
		<br> <br> <br>
		<center>
			<table>
				<tr>
					<td align="center"><h2 style="color: red;">Registration
							Form</h2></td>
				</tr>
				<tr>
					<td>First Name :</td>
					<td><input type="text" name="firstName"
						placeholder="Please Enter First Name"></td>
				</tr>

				<tr>
					<td>Last Name :</td>
					<td><input type="text" name="lastName"
						placeholder="Please Enter Last Name"></td>
				</tr>


				<tr>
					<td>Email :</td>
					<td><input type="text" name="email"
						placeholder="Please Enter Email"></td>
				</tr>


				<tr>
					<td>Address :</td>
					<td><input type="text" name="address"
						placeholder="Please Enter Address"></td>
				</tr>


				<tr>
					<td>Phone no :</td>
					<td><input type="text" name="phone"
						placeholder="Please Enter Phone no"></td>
				</tr>

				<tr>
					<td>UploadPic :</td>
					<td><input type="file" name="pic" /></td>
				</tr>

				<tr>
					<td>Enter About Your self :</td>
					<td>Comment <textarea name="aboutme" rows="5" col="15"></textarea>
					</td>
				</tr>

				<tr>
					<td>Gender :</td>
					<td>Male<input type="radio" name="gender" value="Male">
						Female<input type="radio" name="gender" value="Female">
					</td>
				</tr>


				<tr>
					<td>DOB :</td>
					<td><input type="text" name="dob" placeholder="Date Of Birth"></td>
				</tr>


				<tr>
					<td>MaritalStatus :</td>
					<td>Married<input type="checkbox" name="maritalstatus"
						value="Married"> UnMarried<input type="checkbox"
						name="maritalstatus" value="UnMarried">
					</td>
				</tr>


				<tr>
					<td>Place Of Birth :</td>
					<td><select name="place">
							<option>Others</option>
							<option>Kolkata</option>
							<option>Mumbai</option>

							<option>Pune</option>
							<option>Bangalore</option>
							<option>Indore</option>
							<option>Ahemadbad</option>
							<option>Bhubaneswar</option>
							<option>Gowalier</option>
					</select></td>
				</tr>


				<tr>
					<td>Qualification :</td>
					<td><select name="qualification">
							<option>Others</option>
							<option>MCA</option>
							<option>M.Tech</option>
							<option>Ph.D</option>
					</select></td>
				</tr>


				<tr>
					<td>Hobbies :</td>
					<td>Cricket<input type="checkbox" name="hobby" value="Cricket">
						Swimming<input type="checkbox" name="hobby" value="Swimming">
						Dance<input type="checkbox" name="hobby" value="Dance">
					</td>
				</tr>

				<tr>
					<td>Ambition :</td>
					<td><select name="ambition">
							<option>Others</option>
							<option>Engineer</option>
							<option>Doctor</option>
							<option>Scientist</option>
							<option>Professor</option>
							<option>BusinessMan</option>
							<option>Politician</option>
					</select></td>
				</tr>

				<tr>
					<td><input type="reset" name="clear" value="Clear"> <input
						type="submit" name="submit" value="Submit"></td>
				</tr>
			</table>
		</center>
	</form>
</body>
<a href="index.jsp">Home</a>
</html>