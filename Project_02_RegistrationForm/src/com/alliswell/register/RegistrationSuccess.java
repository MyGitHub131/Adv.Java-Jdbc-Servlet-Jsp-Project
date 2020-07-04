package com.alliswell.register;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class RegistrationSuccess
 */
@WebServlet("/RegistrationSuccess")
public class RegistrationSuccess extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegistrationSuccess() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();

		out.println("Registration Success");
		out.println("--------------------");
		out.println("First Name : " + session.getAttribute("firstName"));
		out.println("Last Name : " + session.getAttribute("lastName"));
		out.println("Email_Id : " + session.getAttribute("email"));
		out.println("Address : " + session.getAttribute("address"));
		out.println("Gender : " + session.getAttribute("gender"));
		out.println("Phone no : " + session.getAttribute("phone"));
		out.println("UploadPic : " + session.getAttribute("pic"));
		out.println("About me : " + session.getAttribute("aboutme"));
		out.println("DOB : " + session.getAttribute("dob"));
		out.println("MaritalStatus : " + session.getAttribute("maritalstatus"));
		out.println("Place Of Birth : " + session.getAttribute("place"));
		out.println("Qualification : " + session.getAttribute("qualification"));
		out.println("Hobbies : " + session.getAttribute("hobby"));
		out.println("Ambition : " + session.getAttribute("ambition"));
	}

}
