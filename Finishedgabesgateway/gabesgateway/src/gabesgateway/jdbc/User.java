package gabesgateway.jdbc;

public class User {
	
	private String userID;
	private String Fname;
	private String Lname;
	private String email;
	private String ShippingAddress;
	private String Password;
	private String productID;
	
	public User(String userID) {
		this.userID = userID;
	}
	
	public User(String userID, String fname, String lname, String email, String shippingAddress, String password,
			String productID) {
		super();
		this.userID = userID;
		Fname = fname;
		Lname = lname;
		this.email = email;
		ShippingAddress = shippingAddress;
		Password = password;
		this.productID = productID;
	}

	public User(String userID, String fname, String lname, String email, String shippingAddress, String password) {
		this.userID = userID;
		this.Fname = fname;
		this.Lname = lname;
		this.email = email;
		this.ShippingAddress = shippingAddress;
		this.Password = password;
	}

	public User(String userID, String fname, String lname, String shippingAddress, String password) {
		this.userID = userID;
		this.Fname = fname;
		this.Lname = lname;
		this.ShippingAddress = shippingAddress;
		this.Password = password;
	}

	public String getProductID() {
		return productID;
	}

	public void setProductID(String productID) {
		this.productID = productID;
	}

	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		this.Password = password;
	}
	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getFname() {
		return Fname;
	}

	public void setFname(String fname) {
		this.Fname = fname;
	}

	public String getLname() {
		return Lname;
	}

	public void setLname(String lname) {
		this.Lname = lname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getShippingAddress() {
		return ShippingAddress;
	}

	public void setShippingAddress(String shippingAddress) {
		this.ShippingAddress = shippingAddress;
	}

	@Override
	public String toString() {
		return "User [userID=" + userID + ", Fname=" + Fname + ", Lname=" + Lname + ", email=" + email
				+ ", ShippingAddress=" + ShippingAddress + ", Password=" + Password + "]";
	}

	
	
	
	
}
