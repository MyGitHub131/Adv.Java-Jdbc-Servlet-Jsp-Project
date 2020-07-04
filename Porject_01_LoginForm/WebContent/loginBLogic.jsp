<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Check</title>
</head>
<%
	String userName = request.getParameter("username");
	String password = request.getParameter("password");

	if (userName.equals("bibhuti") && password.equals("b123")) {

		//response.sendRedirect("loginSuccess.jsp");

		RequestDispatcher rd = request.getRequestDispatcher("loginSuccess.jsp");
		rd.forward(request, response);

	} else {

		//response.sendRedirect("loginFailed.jsp");

		RequestDispatcher rd = request.getRequestDispatcher("loginFailed.jsp");
		rd.forward(request, response);

	}
%>
<body>
	<form>
		<table>
			<tr>
				<td>User Name :</td>
				<td><%=userName%></td>
			</tr>

			<tr>
				<td>Password :</td>
				<td><%=password%></td>
			</tr>
		</table>
	</form>
</body>
</html>