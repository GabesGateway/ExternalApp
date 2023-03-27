package cmpsc390project.jdbc;

import java.io.IOException;
import java.util.List;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class CreateUserServlet
 */
@WebServlet("/CreateUserServlet")
public class CreateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private UserDbUtil userDbUtil;
	
	@Resource(name="jdbc/cmpsc-390project")
	private DataSource dataSource;

	@Override
	public void init() throws ServletException {
		super.init();
		
		try {
			userDbUtil = new UserDbUtil(dataSource);
			
		} catch(Exception exc) {
			throw new ServletException(exc);
		}
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String theCommand = request.getParameter("command");
			if(theCommand == null) {
				theCommand = "LIST";
			}
			
			switch(theCommand) {
			case "LIST":
				listUsers(request, response);
				break;
			case "ADD":
				addUsers(request, response);
				break;
			}
		}catch(Exception e) {
			throw new ServletException(e);
		}
	}

	private void addUsers(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String Fname = request.getParameter("Fname");
		String Lname = request.getParameter("Lname");
		String email = request.getParameter("email");
		String Password = request.getParameter("Password");
		String ShippingAddress = request.getParameter("ShippingAddress");

		Random rand = new Random();
		int num = rand.nextInt(900) + 100;
		String s = String.valueOf(num);

		String chars = "abcxyz";
		char c = chars.charAt(rand.nextInt(chars.length()));


		char c2 = chars.charAt(rand.nextInt(chars.length()));

		String userID = c +""+ c2 + "" + s;
		
		//create new student object
		User theUser = new User(userID, Fname, Lname, email, ShippingAddress, Password);
		
		//add student to database
		userDbUtil.addUser(theUser);
		
		//send back to main page(student list)
		//listStudents(request, response);
		
	}

	private void listUsers(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// get users from db util
		List<User> users = userDbUtil.getUsers();
				
		//add users to request
		request.setAttribute("USER_LIST", users);
				
		//send to JSP page(view)
		RequestDispatcher dispatcher = request.getRequestDispatcher("/list-users.jsp");
		dispatcher.forward(request, response);
		
	}

}
