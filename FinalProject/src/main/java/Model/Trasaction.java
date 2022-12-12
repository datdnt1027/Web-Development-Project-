package Model;

import java.sql.Date;

public class Trasaction {
	  private int id ;
	  private int  userId;
	  private int StoreId;
	  private boolean isUp;
	  private float amount;
	  private Date createdAt;
	  private Date updatedAt;
	public Trasaction() {

	}
	public Trasaction(int id, int userId, int storeId, boolean isUp, float amount, Date createdAt, Date updatedAt) {
		this.id = id;
		this.userId = userId;
		StoreId = storeId;
		this.isUp = isUp;
		this.amount = amount;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getStoreId() {
		return StoreId;
	}
	public void setStoreId(int storeId) {
		StoreId = storeId;
	}
	public boolean isUp() {
		return isUp;
	}
	public void setUp(boolean isUp) {
		this.isUp = isUp;
	}
	public float getAmount() {
		return amount;
	}
	public void setAmount(float amount) {
		this.amount = amount;
	}
	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	public Date getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}
	@Override
	public String toString() {
		return "Trasaction [id=" + id + ", userId=" + userId + ", StoreId=" + StoreId + ", isUp=" + isUp + ", amount="
				+ amount + ", createdAt=" + createdAt + ", updatedAt=" + updatedAt + "]";
	}
	  

}
