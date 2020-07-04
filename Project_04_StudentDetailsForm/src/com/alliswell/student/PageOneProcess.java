package com.alliswell.student;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class PageOneProcess
 */
@WebServlet("/PageOneProcess")
public class PageOneProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PageOneProcess() {
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

		PrintWriter out = response.getWriter();

		String name = request.getParameter("name");
		String emailId = request.getParameter("emailid");
		String phoneNo = request.getParameter("phoneno");
		String address = request.getParameter("address");

		try {
			HttpSession session = request.getSession();

			session.setAttribute("name", name);
			session.setAttribute("emailid", emailId);
			session.setAttribute("phoneno", phoneNo);
			session.setAttribute("address", address);

			out.println("Name : " + name);
			out.println("Email_Id : " + emailId);
			out.println("PhoneNo : " + phoneNo);
			out.println("Address : " + address);

			response.sendRedirect("pageTwo.html");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
