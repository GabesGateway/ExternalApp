package com.app;


import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationServlet() {
        super();
        // TODO Auto-generated constructor stub
        
        
        
        
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
	    String firstName = request.getParameter("firstName");
	    String lastName = request.getParameter("lastName");
	    
	    PrintWriter out = response.getWriter();
	    String gender = request.getParameter("gender");
	    String email = request.getParameter("email");
	    
	    PrintWriter out = response.getWriter();
	    String password = request.getParameter("password");
	    String number = request.getParameter("number");
	    
	    
	    
	    out.print("FirstName: "+firstName);
	    out.print("LastName: "+lastName);
	    out.print("Gender: "+gender);
	    out.print("Email: "+email);
	    out.print("Password: "+password);
	    out.print("Number: "+number);
	}

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
