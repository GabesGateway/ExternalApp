package gabesgateway.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

public class UserDbUtil {
	
	private static DataSource dataSource;
	
	public UserDbUtil(DataSource theDataSource) {
		dataSource = theDataSource;
	}
	
	public List<User> getUsers() throws Exception{
		List<User> users = new ArrayList<>();
		
		Connection myConn = null;
		Statement myStmt = null;
		ResultSet myRs = null;
		
		try {
			//get a connetion
			myConn = dataSource.getConnection();
			
			//create sql statement
			String sql = "select * from useraccount order by lName";
			
			myStmt = myConn.createStatement();
			//exectue query
			myRs = myStmt.executeQuery(sql);
			
			//process result set
			while(myRs.next()) {
				//retrieve data from result set
				String id= myRs.getString("userID");
				String Fname= myRs.getString("fName");
				String Lname= myRs.getString("lName");
				String email= myRs.getString("email");
				String shippingAddress= myRs.getString("shippingAddress");
				//String Password = myRs.getString("Password");
				
				//create new user object
				User tempUser = new User(id, Fname, Lname, email, shippingAddress);
				
				//add to list of users
				users.add(tempUser);
				
			}
			
			
			return users;
		}finally {
			//close JDBC objects
			close(myConn, myStmt, myRs);
		}
	}

	private static void close(Connection myConn, Statement myStmt, ResultSet myRs) {
		try {
			if(myRs!= null) {
				myRs.close();
			}
			if(myStmt!=null) {
				myStmt.close();
			}
			if(myConn!=null) {
				myConn.close();
			}
		}catch(Exception e) {
		e.printStackTrace();
		}
	}

	public static double lookupUser(String email, String password) throws Exception{
		Connection myConn = null;
		PreparedStatement myStmt = null;
		ResultSet myRs = null;
		double valid;
		try {
			myConn = dataSource.getConnection();
			
			String sql = "select count(*) as total from userlogin where email=? and password=?";
			
			myStmt= myConn.prepareStatement(sql);
			
			myStmt.setString(1, email);
			myStmt.setString(2, password);
			
			myRs = myStmt.executeQuery();
			myRs.next();
			
			if(myRs.getInt("total") > 0)
			{
				sql = "select * from userlogin where email=? and password=?";
			
				myStmt=myConn.prepareStatement(sql);
				
				myStmt.setString(1, email);
				myStmt.setString(2, password);
				
				myRs=myStmt.executeQuery();
				myRs.next();
				
				valid = myRs.getDouble("userID");
				
			}
				
			else
				valid = 0;
		}finally {
			close(myConn, myStmt, null);
		}
		
		
		
		return valid;
	}
	
	public static void addUserID(User theUser) throws Exception{
		Connection myConn = null;
		PreparedStatement myStmt = null;
		
		try {
			myConn = dataSource.getConnection();
			
			String sql = "insert into useraccount " + "(userid)" + "values (?)";
			
			myStmt = myConn.prepareStatement(sql);
			
			myStmt.setString(1, theUser.getUserID());
			
			myStmt.execute();
		}finally {
			//clean up JDBC objects
			close(myConn, myStmt, null);
	}
	}
	
	public void addUser(User theUser) throws Exception{
		Connection myConn=null;
		PreparedStatement myStmt=null;
		PreparedStatement myStmt2=null;
		
		try {
			//get db connection
			myConn = dataSource.getConnection();
			
			//create sql for insert
			String sql="insert into useraccount "
					+"(userID, fName, lName, email, shippingAddress, password)"
					+"values (?, ?, ?, ?, ?, ?)";
			
			myStmt = myConn.prepareStatement(sql);
			
			//set param values for student
			myStmt.setString(1, theUser.getUserID());
			myStmt.setString(2, theUser.getFname());
			myStmt.setString(3, theUser.getLname());
			myStmt.setString(4, theUser.getEmail());
			myStmt.setString(5, theUser.getShippingAddress());
			myStmt.setString(6, theUser.getPassword());
			
			//execute sql insert
			myStmt.execute();
			
			String sql2="insert into userlogin " + "(userID, email, password)" + "values (?, ?, ?)";
			
			myStmt2 = myConn.prepareStatement(sql2);
			
			myStmt2.setString(1, theUser.getUserID());
			myStmt2.setString(2, theUser.getEmail());
			myStmt2.setString(3, theUser.getPassword());
			
			myStmt2.execute();
		}
		finally {
			//clean up JDBC objects
			close(myConn, myStmt, null);
		}
		
		
	}

	public static User getUser(String theUserID) throws Exception{
		User theUser = null;
		
		Connection myConn = null;
		PreparedStatement myStmt = null;
		ResultSet myRs = null;
		double userID;
		
		try {
			//convert student id to int
			userID = Double.parseDouble(theUserID);
			
			//get connection to db
			myConn = dataSource.getConnection();
			
			//create sql to get user
			String sql = "select * from useraccount where userID=?";
			
			//create prepared statement
			myStmt = myConn.prepareStatement(sql);
			
			//set params
			myStmt.setDouble(1, userID);
			
			//execute statement
			myRs = myStmt.executeQuery();
			
			//retrieve data from resultSet
			if(myRs.next()) {
				String fName = myRs.getString("fName");
				String lName = myRs.getString("lName");
				String email = myRs.getString("email");
				String shippingAddress = myRs.getString("shippingAddress");
				String password = myRs.getString("password");
				String productID = myRs.getString("productID");
				
				//user info for new student object
				theUser = new User(theUserID, fName, lName, email, shippingAddress, password, productID);
			}
			else {
				throw new Exception("Could not find user id: " + theUserID);
			}
			
			return theUser;
			
		}finally {
			//clean up JDBC
			close(myConn, myStmt, myRs);
		}

	}
	
	public static Products getProduct(String theProductId) throws Exception{
		
		Products theProduct = null;
		
		Connection myConn = null;
		PreparedStatement myStmt = null;
		ResultSet myRs = null;
		int productId;
		
		try {
			//convert id to int
			productId = Integer.parseInt(theProductId);
			
			//get connection to db
			myConn = dataSource.getConnection();
			
			//create sql to get product
			String sql = "select * from products where productID=?";
			
			//create prepared statement
			myStmt = myConn.prepareStatement(sql);
			
			//set params
			myStmt.setInt(1, productId);
			
			//execute statement
			myRs = myStmt.executeQuery();
			
			//retrieve data from result set
			if(myRs.next()) {
				String productTYPE = myRs.getString("productType");
				String productType = productTYPE.split("[\\(\\)]")[1];
				String imageLink = myRs.getString("imageLink");
				String productDescription = myRs.getString("productDescription");
				String productPrice = myRs.getString("productPrice");
				
				theProduct = new Products(theProductId, productType, imageLink, productDescription, productPrice);
			}
			else {
				throw new Exception("Could not find product id: " + productId);
			}
			
		}finally {
			close(myConn, myStmt, myRs);
		}
		
		return theProduct;
	}

	public static void addProductToCart(double userid, String theProductID) throws Exception{
		// TODO Auto-generated method stub
		Connection myConn = null;
		PreparedStatement myStmt = null;
		ResultSet myRs = null;
		String useridString = String.valueOf(userid);
		try {
			//get connection to db
			myConn = dataSource.getConnection();
			
			//create sql to get user
			String sql = "update useraccount set productID=? where(userID=?)";
			
			//create prepared statement
			myStmt = myConn.prepareStatement(sql);
			
			//set params
			myStmt.setString(1, theProductID);
			myStmt.setString(2, useridString);
			
			//execute statement
			myStmt.executeUpdate(); 
		}finally {
			close(myConn, myStmt, myRs);
		}
	}
}
