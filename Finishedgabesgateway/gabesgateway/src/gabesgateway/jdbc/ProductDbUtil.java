package gabesgateway.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.sql.DataSource;

public class ProductDbUtil {

	private static DataSource dataSource;
	
	public ProductDbUtil(DataSource theDataSource) {
		dataSource = theDataSource;
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
			String sql = "select * from products where id=?";
			
			//create prepared statement
			myStmt = myConn.prepareStatement(sql);
			
			//set params
			myStmt.setInt(1, productId);
			
			//execute statement
			myRs = myStmt.executeQuery();
			
			//retrieve data from result set
			if(myRs.next()) {
				String productType = myRs.getString("productType");
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
}
