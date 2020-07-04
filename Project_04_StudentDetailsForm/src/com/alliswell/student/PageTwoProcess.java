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
 * Servlet implementation class PageTwoProcess
 */
@WebServlet("/PageTwoProcess")
public class PageTwoProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PageTwoProcess() {
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

		String id = request.getParameter("id");
		String branch = request.getParameter("branch");
		String course = request.getParameter("course");

		try {
			HttpSession session = request.getSession();

			session.setAttribute("id", id);
			session.setAttribute("branch", branch);
			session.setAttribute("course", course);

			out.println("Id : " + id);
			out.println("Branch : " + branch);
			out.println("Course : " + course);

			response.sendRedirect("printout.jsp");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
