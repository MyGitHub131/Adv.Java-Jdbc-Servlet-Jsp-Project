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
 * Servlet implementation class CollegeInfo
 */
@WebServlet("/CollegeInfo")
public class CollegeInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CollegeInfo() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String sicNo = request.getParameter("sicno");
		String branch = request.getParameter("branch");

		try {
			HttpSession session = request.getSession();
			PrintWriter out = response.getWriter();

			session.setAttribute("sicno", sicNo);
			session.setAttribute("branch", branch);

			out.println("SIC_NO : " + sicNo);
			out.println("Branch : " + branch);

			response.sendRedirect("bookIssue.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
