package gabesgateway.jdbc;

public class Products {

	private String productID;
	private String productType;
	private String imageLink;
	private String productDescription;
	private String productPrice;
	
	public Products() {
		super();
	}

	public Products(String productID, String productType, String imageLink, String productDescription,
			String productPrice) {
		super();
		this.productID = productID;
		this.productType = productType;
		this.imageLink = imageLink;
		this.productDescription = productDescription;
		this.productPrice = productPrice;
	}

	public Products(String productType, String imageLink, String productDescription, String productPrice) {
		super();
		this.productType = productType;
		this.imageLink = imageLink;
		this.productDescription = productDescription;
		this.productPrice = productPrice;
	}

	public String getProductID() {
		return productID;
	}

	public void setProductID(String productID) {
		this.productID = productID;
	}

	public String getProductType() {
		return productType;
	}

	public void setProductType(String productType) {
		this.productType = productType;
	}

	public String getImageLink() {
		return imageLink;
	}

	public void setImageLink(String imageLink) {
		this.imageLink = imageLink;
	}

	public String getProductDescription() {
		return productDescription;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}

	public String getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}

	@Override
	public String toString() {
		return "Products [productID=" + productID + ", productType=" + productType + ", imageLink=" + imageLink
				+ ", productDescription=" + productDescription + ", productPrice=" + productPrice + "]";
	}
	
	
	
}
