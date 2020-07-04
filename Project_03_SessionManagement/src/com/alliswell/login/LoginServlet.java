package com.alliswell.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userName = request.getParameter("username");
		String password = request.getParameter("password");

		HttpSession session = request.getSession(false);

		if (password.equals("admin")) {
			session.setAttribute("username", userName);
			response.sendRedirect("profile.jsp");
		} else {
			response.sendRedirect("error.jsp");
		}

		/*if (userName.equals("Bibhuti") && password.equals("admin")) {
			session.setAttribute("username", userName);
			session.setAttribute("passWord", password);
			response.sendRedirect("profile.jsp");
		} else {
			response.sendRedirect("login.jsp");
		}*/

	}

}
