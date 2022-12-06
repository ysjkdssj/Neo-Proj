package vo;

public class CartVO {
	private int cart_id;
	private int cart_count;
	private ProductVO product;
	private String member_id;
	
	public CartVO() {
		
	}
	
	public CartVO(int cart_id, int cart_count, ProductVO product, String member_id) {
		super();
		this.cart_id = cart_id;
		this.cart_count = cart_count;
		this.product = product;
		this.member_id = member_id;
	}
	public int getCart_id() {
		return cart_id;
	}
	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}
	public int getCart_count() {
		return cart_count;
	}
	public void setCart_count(int cart_count) {
		this.cart_count = cart_count;
	}
	public ProductVO getProduct() {
		return product;
	}
	public void setProduct(ProductVO product) {
		this.product = product;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	
}
