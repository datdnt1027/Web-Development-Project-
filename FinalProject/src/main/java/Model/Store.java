package Model;

import java.sql.Date;
import java.util.BitSet;


public class Store {
	   private int id;
	   private String name;
	   private String bio;
	   private String slug;
	   private int ownerId;
	   private boolean isActive;
	   private String avatar;
	   private int commissionId ;
	   private float e_wallet;
	   private Date createdAt;
	   private Date updatedAt ;
	public Store() {
	}
	public Store(int id, String name, String bio, String slug, int ownerId, boolean isActive, String avatar,
			int commissionId, float e_wallet, Date createdAt, Date updatedAt) {
		super();
		this.id = id;
		this.name = name;
		this.bio = bio;
		this.slug = slug;
		this.ownerId = ownerId;
		this.isActive = isActive;
		this.avatar = avatar;
		this.commissionId = commissionId;
		this.e_wallet = e_wallet;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBio() {
		return bio;
	}
	public void setBio(String bio) {
		this.bio = bio;
	}
	public String getSlug() {
		return slug;
	}
	public void setSlug(String slug) {
		this.slug = slug;
	}
	public int getOwnerId() {
		return ownerId;
	}
	public void setOwnerId(int ownerId) {
		this.ownerId = ownerId;
	}
	public boolean isActive() {
		return isActive;
	}
	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	public int getCommissionId() {
		return commissionId;
	}
	public void setCommissionId(int commissionId) {
		this.commissionId = commissionId;
	}
	public float getE_wallet() {
		return e_wallet;
	}
	public void setE_wallet(float e_wallet) {
		this.e_wallet = e_wallet;
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
		return "Store [id=" + id + ", name=" + name + ", bio=" + bio + ", slug=" + slug + ", ownerId=" + ownerId
				+ ", isActive=" + isActive + ", avatar=" + avatar + ", commissionId=" + commissionId + ", e_wallet="
				+ e_wallet + ", createdAt=" + createdAt + ", updatedAt=" + updatedAt + "]";
	}

	   
}
