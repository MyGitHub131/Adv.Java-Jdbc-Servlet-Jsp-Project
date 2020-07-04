package com.alliswell.register;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class RegistrationCheck
 */
@WebServlet("/RegistrationCheck")
public class RegistrationCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegistrationCheck() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		// PrintWriter out = response.getWriter();

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

		session.setAttribute("firstName", firstname);
		session.setAttribute("lastName", lastname);
		session.setAttribute("email", email);
		session.setAttribute("address", address);
		session.setAttribute("phone", phoneNo);
		session.setAttribute("pic", uploadPic);
		session.setAttribute("aboutme", aboutme);
		session.setAttribute("gender", gen);
		session.setAttribute("dob", dob);
		session.setAttribute("maritalstatus", ms);
		session.setAttribute("place", place);
		session.setAttribute("qualification", qualification);
		session.setAttribute("hobby", hob);
		session.setAttribute("ambition", ambition);

		response.sendRedirect("RegistrationSuccess");

	}

}
