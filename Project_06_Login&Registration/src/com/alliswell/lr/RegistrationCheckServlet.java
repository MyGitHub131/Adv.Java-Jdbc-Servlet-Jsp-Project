package com.alliswell.lr;

import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class RegistrationCheckServlet extends HttpServlet {

	private static final long serialVersionUID = -1608427482098879803L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) {

		String firstname = request.getParameter("firstName");
		String lastname = request.getParameter("lastName");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String phoneNo = request.getParameter("phone");
		String picUpload = request.getParameter("pic");
		String aboutMe = request.getParameter("aboutme");
		String gender = request.getParameter("gender");
		String Dob = request.getParameter("dob");
		String maritalStatus = request.getParameter("maritalstatus");
		String placeOfBirth = request.getParameter("place");
		String qualification = request.getParameter("qualification");
		String hobbies = request.getParameter("hobby");
		String ambition = request.getParameter("ambition");

		try {
			HttpSession session = request.getSession();
			PrintWriter out = response.getWriter();

			session.setAttribute("firstName", firstname);
			session.setAttribute("lastName", lastname);
			session.setAttribute("email", email);
			session.setAttribute("address", address);
			session.setAttribute("phone", phoneNo);
			session.setAttribute("pic", picUpload);
			session.setAttribute("aboutme", aboutMe);
			session.setAttribute("gender", gender);
			session.setAttribute("dob", Dob);
			session.setAttribute("maritalstatus", maritalStatus);
			session.setAttribute("place", placeOfBirth);
			session.setAttribute("qualification", qualification);
			session.setAttribute("hobby", hobbies);
			session.setAttribute("ambition", ambition);

			out.println("Registration Page");
			out.println("-----------------");
			out.println("FirstName: " + firstname);
			out.println("LastName: " + lastname);
			out.println("Email_Id: " + email);
			out.println("Address: " + address);
			out.println("PhoneNo: " + phoneNo);
			out.println("Pic_Upload: " + picUpload);
			out.println("Aboutme: " + aboutMe);
			out.println("Gender: " + gender);
			out.println("DOB: " + Dob);
			out.println("MaritalStatus: " + maritalStatus);
			out.println("PlaceOfBirth: " + placeOfBirth);
			out.println("Qualification: " + qualification);
			out.println("Hobby: " + hobbies);
			out.println("Ambition: " + ambition);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}

}
