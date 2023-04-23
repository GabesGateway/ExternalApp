package gabesgateway.jdbc;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class ProductsServlet
 */
@WebServlet("/ProductsServlet")
public class ProductsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private UserDbUtil userDbUtil;
	
	@Resource(name="jdbc/gabesgateway")
	private DataSource dataSource;
	
	public String userName;

	@Override
	public void init() throws ServletException {
		super.init();
		
		try {
			userDbUtil = new UserDbUtil(dataSource);
			
		} catch(Exception exc) {
			throw new ServletException(exc);
		}
	}
    
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String theCommand = request.getParameter("command");
			
			switch(theCommand) {
			
			case "LOAD":
				loadProduct(request, response);
				break;
			}
		}
		catch(Exception exc) {
			throw new ServletException(exc);
		}
	}

	
	
	
	
	private void loadProduct(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		//read product id from form data
		String theProductId = request.getParameter("productID");
		
		//get product from db
		Products theProduct = ProductDbUtil.getProduct(theProductId);
		
		//place product in request attribute
		request.setAttribute("THE_PRODUCT", theProduct);
		
		//send to jsp page: 1.html->1.jsp
		RequestDispatcher dispatcher = request.getRequestDispatcher("1.jsp");
		dispatcher.forward(request, response);
		
		
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
