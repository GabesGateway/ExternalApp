package cmpsc390project.jdbc;

public class User {
	
	private String userID;
	private String Fname;
	private String Lname;
	private String email;
	private String ShippingAddress;
	private String Password;
	
	public User(String userID, String fname, String lname, String email, String shippingAddress, String password) {
		this.userID = userID;
		Fname = fname;
		Lname = lname;
		this.email = email;
		ShippingAddress = shippingAddress;
		Password = password;
	}

	public User(String fname, String lname, String email, String shippingAddress, String password) {
		Fname = fname;
		Lname = lname;
		this.email = email;
		ShippingAddress = shippingAddress;
		Password = password;
	}

	public String getPassword() {
		return Password;
	}
	public void setPassword(String Password) {
		this.Password = Password;
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
		Fname = fname;
	}

	public String getLname() {
		return Lname;
	}

	public void setLname(String lname) {
		Lname = lname;
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
		ShippingAddress = shippingAddress;
	}

	@Override
	public String toString() {
		return "User [userID=" + userID + ", Fname=" + Fname + ", Lname=" + Lname + ", email=" + email
				+ ", ShippingAddress=" + ShippingAddress + ", Password=" + Password + "]";
	}

	
	
	
	
}
