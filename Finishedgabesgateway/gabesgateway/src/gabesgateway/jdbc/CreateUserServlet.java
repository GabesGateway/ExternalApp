package gabesgateway.jdbc;

import java.io.IOException;
import java.util.List;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
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
	
	@Resource(name="jdbc/gabesgateway")
	private DataSource dataSource;
	
	public double userID;

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
			//set null to homepage
			switch(theCommand) {
			case "LIST":
				listUsers(request, response);
				break;
			case "ADD":
				addUsers(request, response);
				break;
			case "ADDID":
				addUserID(request, response);
				break;
			case "VALIDATE":
				userID = validateUser(request, response);
				break;
			case "LOAD":
				loadUser(request, response);
				break;
			case "LOAD2":
				loadUser2(request, response);
				break;
			case "LOADPRODUCT":
				loadProduct(request, response);
				break;
			case "LOADPRODUCTloggedin":
				loadProductLogged(request, response);
				break;
			case "LOADCART":
				loadCart(request, response);
				break;
			case "ADDCART":
				addToCart(request, response);
			}
		}catch(Exception e) {
			throw new ServletException(e);
		}
	}

	private void loadProductLogged(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//read product id from form data
				String theProductId = request.getParameter("productID");
				
				//get product from db
				Products theProduct = UserDbUtil.getProduct(theProductId);
				
				//place product in request attribute
				request.setAttribute("THE_PRODUCT", theProduct);
				
				//send to jsp page: 1.html->1.jsp
				RequestDispatcher dispatcher = request.getRequestDispatcher("testProductPageSignedIn.jsp");
				dispatcher.forward(request, response);
		
	}

	private void addToCart(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//Get Product ID from page
		String theProductID = request.getParameter("productID");
		
		//Get User ID from Cookies
		String email=null;
		String password=null;
		Cookie[] theCookies = request.getCookies();
		if(theCookies != null) {
			for(Cookie tempCookie : theCookies) {
				if("currEmail".equals(tempCookie.getName())) {
					email = tempCookie.getValue();
				}
				else if("currPassword".equals(tempCookie.getName())) {
					password = tempCookie.getValue();
				}
				
			}
		}			
		double userid = UserDbUtil.lookupUser(email, password);
		
		//Add Product ID to userAccount.productID through UserDbUtil
		UserDbUtil.addProductToCart(userid, theProductID);
		
		//get product from db
		Products theProduct = UserDbUtil.getProduct(theProductID);
				
		//place product in request attribute
		request.setAttribute("THE_PRODUCT", theProduct);
		
		//send to jsp page: 1.html->1.jsp
		RequestDispatcher dispatcher = request.getRequestDispatcher("Cart2.jsp");
		dispatcher.forward(request, response);
				
	}

	private void loadCart(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		String email=null;
		String password=null;
		String productID = null;
		String empty = "0";
		Cookie[] theCookies = request.getCookies();
		if(theCookies != null) {
			for(Cookie tempCookie : theCookies) {
				if("currEmail".equals(tempCookie.getName())) {
					email = tempCookie.getValue();
				}
				else if("currPassword".equals(tempCookie.getName())) {
					password = tempCookie.getValue();
				}
			}
			double userid = UserDbUtil.lookupUser(email, password);
			
			String theUserId= String.valueOf(userid);
				
			User theUser = UserDbUtil.getUser(theUserId);
			System.out.println(theUser.getUserID());	
			productID = theUser.getProductID();
			System.out.println(productID);
			if(productID.compareTo(empty) == 0) {
				System.out.println("productID is null");
				System.out.println(productID);
				RequestDispatcher dispatcher = request.getRequestDispatcher("cartEmptySignedIn.html");
				dispatcher.forward(request, response);
			}
			else {
				Products theProduct = UserDbUtil.getProduct(productID);
				request.setAttribute("THE_PRODUCT", theProduct);
				RequestDispatcher dispatcher = request.getRequestDispatcher("Cart2.jsp");
				dispatcher.forward(request, response);
			}
			//request.setAttribute("THE_USER2", theUser);
				
		}
		else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("cartEmpty.html");
			dispatcher.forward(request, response);
			System.out.println("Cookies Empty");
		}
	}

	private void loadUser2(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		String email=null;
		String password=null;
		Cookie[] theCookies = request.getCookies();
		if(theCookies != null) {
			for(Cookie tempCookie : theCookies) {
				if("currEmail".equals(tempCookie.getName())) {
					email = tempCookie.getValue();
				}
				else if("currPassword".equals(tempCookie.getName())) {
					password = tempCookie.getValue();
				}
				
			}
		}			
		double userid = UserDbUtil.lookupUser(email, password);
			
		String theUserId= String.valueOf(userid);
			
		User theUser = UserDbUtil.getUser(theUserId);
			
		request.setAttribute("THE_USER2", theUser);
			
		RequestDispatcher dispatcher = request.getRequestDispatcher("accountSettingsSignedIn2.jsp");
		dispatcher.forward(request, response);
		}
		

	private void loadProduct(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		//read product id from form data
		String theProductId = request.getParameter("productID");
		
		//get product from db
		Products theProduct = UserDbUtil.getProduct(theProductId);
		
		//place product in request attribute
		request.setAttribute("THE_PRODUCT", theProduct);
		
		//send to jsp page: 1.html->1.jsp
		RequestDispatcher dispatcher = request.getRequestDispatcher("testProductPage.jsp");
		dispatcher.forward(request, response);
		
		
	}
	
	private void loadUser(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//read user id from form data
		String theUserID= request.getParameter("userID");
		
		//get user from db
		User theUser = UserDbUtil.getUser(theUserID);
		
		//place user in request attribute
		request.setAttribute("THE_USER", theUser);
		
		//send to jsp page: settings.html
		RequestDispatcher dispatcher = request.getRequestDispatcher("/navSignedIn.jsp");
		dispatcher.forward(request, response);
		
	}

	private double validateUser(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String theEmail = request.getParameter("Email");
		String thePassword = request.getParameter("Password");
		
		double valid = userDbUtil.lookupUser(theEmail, thePassword);
		//If user isn't found redirect to incorrect login page
		if(valid == 0)
		{
			RequestDispatcher dispatcher = request.getRequestDispatcher("/signInFail.jsp");
			dispatcher.forward(request, response);
			return 0;
		}
		//Else, redirect to logged-in homepage
		else
		{
			Cookie emailCookie = new Cookie("currEmail", theEmail);
			Cookie passwordCookie = new Cookie("currPassword", thePassword);
			response.addCookie(passwordCookie);
			response.addCookie(emailCookie);
			emailCookie.setMaxAge(60*60*24*365);
			passwordCookie.setMaxAge(60*60*24*365);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/homeSignedIn.html");
			dispatcher.forward(request, response);
			return valid;
		}
	}

	private void addUserID(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String theUserID = request.getParameter("userId");
		
		User theUser = new User(theUserID);
		
		UserDbUtil.addUserID(theUser);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/index.html");
		dispatcher.forward(request, response);
		
	}
	
	private void addUsers(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		double userID = 360 * Math.random();
		String theUserID = String.valueOf(userID);
		
		String theFirstName = request.getParameter("Fname");
		String theLastName = request.getParameter("Lname");
		String theEmail = request.getParameter("email");
		String thePassword = request.getParameter("password");
		String theShippingAddress = request.getParameter("ShippingAddress");

		
		//create new student object
		User theUser = new User(theUserID, theFirstName, theLastName, theEmail, theShippingAddress, thePassword);
		
		//add student to database
		userDbUtil.addUser(theUser);
		
		//send back to main page(student list)
		//listStudents(request, response);
		
		
		//Send to homepage
		RequestDispatcher dispatcher = request.getRequestDispatcher("/homeSignedIn.html");
		dispatcher.forward(request, response);
		
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
