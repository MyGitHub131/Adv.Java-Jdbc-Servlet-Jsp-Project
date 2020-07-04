package com.alliswell.library;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

/**
 * Servlet implementation class LoginProcess
 */
@WebServlet("/LoginProcess")
public class LoginProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginProcess() {
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

		String userName = request.getParameter("username");
		String password = request.getParameter("password");

		HttpSession session = request.getSession();

		try {
			/*
			 * if(userName.equals("Bibhuti") && password.equals("admin")){
			 * response.sendRedirect("studentInfo.jsp"); }else {
			 * response.sendRedirect("invalid.jsp"); }
			 */
			// Changed by bibhuti
			if (password.equals("admin")) {
				session.setAttribute("username", userName);
				// response.sendRedirect("studentInfo.jsp");

				// Changed by bibhuti
				RequestDispatcher rd = request.getRequestDispatcher("studentInfo.jsp");
				rd.include(request, response);
				rd.forward(request, response);
			} else {
				response.sendRedirect("invalid.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}