package cmpsc390project.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

public class UserDbUtil {
	
	private DataSource dataSource;
	
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
			String sql = "select * from useraccount order by Lname";
			
			myStmt = myConn.createStatement();
			//exectue query
			myRs = myStmt.executeQuery(sql);
			
			//process result set
			while(myRs.next()) {
				//retrieve data from result set
				String id= myRs.getString("userID");
				String Fname= myRs.getString("Fname");
				String Lname= myRs.getString("Lname");
				String email= myRs.getString("email");
				String shippingAddress= myRs.getString("ShippingAddress");
				String Password = myRs.getString("Password");
				
				//create new user object
				User tempUser = new User(id, Fname, Lname, email, shippingAddress, Password);
				
				//add to list of users
				users.add(tempUser);
				
			}
			
			
			return users;
		}finally {
			//close JDBC objects
			close(myConn, myStmt, myRs);
		}
	}

	private void close(Connection myConn, Statement myStmt, ResultSet myRs) {
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

	public void addUser(User theUser) throws Exception{
		Connection myConn=null;
		PreparedStatement myStmt=null;
		try {
			//get db connection
			myConn = dataSource.getConnection();
			
			//create sql for insert
			String sql="insert into useraccount "
					+"(userID, Fname, Lname, email, ShippingAddress, Password) "
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
		}
		finally {
			//clean up JDBC objects
			close(myConn, myStmt, null);
		}
		
		
	}
}
