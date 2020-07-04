package com.alliswell.library;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class StudentInfo
 */
@WebServlet("/StudentInfo")
public class StudentInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public StudentInfo() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String phoneNO = request.getParameter("phoneno");

		try {
			HttpSession session = request.getSession();
			PrintWriter out = response.getWriter();

			session.setAttribute("name", name);
			session.setAttribute("address", address);
			session.setAttribute("phoneno", phoneNO);

			out.println("Name : " + name);
			out.println("Address : " + address);
			out.println("Phone NO : " + phoneNO);
			
			response.sendRedirect("collegeInfo.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
