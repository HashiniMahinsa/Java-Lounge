package servlets;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import entities.User;
import DAO.DAO;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String name=request.getParameter("name");
		String dob=request.getParameter("dob");
	    String gender=request.getParameter("gender");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		
		User us = new User();
		us.setName(name);
		us.setDob(dob);
		us.setGender(gender);
	    us.setEmail(email);
		us.setPhone(phone);
		
		DAO dao = new DAO();
		boolean result = dao.insert(us);
		if(result)
		{
			response.sendRedirect("Start.jsp");
		}
		else
		{
			response.getOutputStream().print("Something went Wrong");
			//response.sendRedirect("student-list.jsp");
		}
	}

}
