package Model;

public class OrderItem {
	  private int id;
	  private int  productId;
	  private int  orderId;
	  private int count;
	public OrderItem() {
		super();
		// TODO Auto-generated constructor stub
	}
	public OrderItem(int id, int productId, int orderId, int count) {
		this.id = id;
		this.productId = productId;
		this.orderId = orderId;
		this.count = count;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	@Override
	public String toString() {
		return "OrderItem [id=" + id + ", productId=" + productId + ", orderId=" + orderId + ", count=" + count + "]";
	}
	  

}
