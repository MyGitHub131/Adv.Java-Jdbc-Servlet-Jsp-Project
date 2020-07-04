package com.alliswell.lr;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginCheckServlet extends HttpServlet {

	private static final long serialVersionUID = 1190671091149608308L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) {
		
		String userName = request.getParameter("username");
		String password  =request.getParameter("password");
		
		try {
			if(userName.equals("Admin") && password.equals("admin")){
				response.sendRedirect("loginSuccess.jsp");
			}
			else {
				response.sendRedirect("loginFailed.jsp");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}

