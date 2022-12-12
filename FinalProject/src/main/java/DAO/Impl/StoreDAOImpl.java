package DAO.Impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Connection.Connection;
import DAO.IStoreDAO;
import Model.Store;

public class StoreDAOImpl extends Connection implements IStoreDAO {

	@Override
	public List<Store> finALL() {
		List<Store> stores = new ArrayList<Store>();
		String sql = "select * from Store";
		try {
			java.sql.Connection conn = super.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Store store = new Store();
				store.setId(rs.getInt("id"));
				store.setName(rs.getString("name"));
				store.setBio(rs.getString("bio"));
				store.setSlug(rs.getString("slug"));
				store.setOwnerId(rs.getInt("ownerId"));
				store.setActive(rs.getBoolean("isActive"));
				store.setAvatar(rs.getString("avatar"));
				store.setCommissionId(rs.getInt("commissionId"));
				store.setE_wallet(rs.getFloat("e_wallet"));
				store.setCreatedAt(rs.getDate("createdAt"));
				store.setUpdatedAt(rs.getDate("updatedAt"));
				stores.add(store);
			}} catch (Exception e) {
				e.printStackTrace();}
		return stores;
	}

	@Override
	public void Insert(Store store) {
		String sql = "insert into Store (name,bio,slug,ownerId,isActive,avatar,commissionId,e_wallet) values (?,"
				+ "?,?,?,?,?,?,?)";
		try {
			java.sql.Connection conn = super.getConnection(); 
			PreparedStatement ps = conn.prepareStatement(sql);

			ps.setString(1, store.getName());
			ps.setString(2, store.getBio());
			ps.setString(3, store.getSlug());
			ps.setInt(4, store.getOwnerId());
			ps.setBoolean(5, store.isActive());
			ps.setString(6, store.getAvatar());
			ps.setInt(7, store.getCommissionId());
			ps.setFloat(8, store.getE_wallet());
//			ps.setDate(9, store.getCreatedAt()); 
//			ps.setDate(10, store.getUpdatedAt());
			ps.execute();
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void Delete(int storeId) {
		String sql = "delete from Store where id = ?";
		try {
		java.sql.Connection con = super.getConnection();
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, storeId);
		ps.executeUpdate();
		} catch (Exception e) {
		e.printStackTrace();
		}
	}

	@Override
	public void EditStore(Store store) {
		String sql= "UPDATE Store SET name = ?, bio = ?, avatar = ? WHERE id  = ?;";
		try {
			java.sql.Connection con = super.getConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1,store.getName());
			ps.setString(2, store.getBio());
			ps.setString(3, store.getAvatar());
			ps.setInt(4, store.getId());
			ps.executeUpdate();
			} catch(Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public Store FindById(int id) {
		Store store = new Store();
		String sql = "select * from Store where id=" + id;
		try {
			java.sql.Connection conn = super.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				store.setId(rs.getInt("id"));
				store.setName(rs.getString("name"));
				store.setBio(rs.getString("bio"));
				store.setSlug(rs.getString("slug"));
				store.setOwnerId(rs.getInt("ownerId"));
				store.setActive(rs.getBoolean("isActive"));
				store.setAvatar(rs.getString("avatar"));
				store.setCommissionId(rs.getInt("commissionId"));
				store.setE_wallet(rs.getFloat("e_wallet"));
				store.setCreatedAt(rs.getDate("createdAt"));
				store.setUpdatedAt(rs.getDate("updatedAt"));
			}} catch (Exception e) {
				e.printStackTrace();}
		return store;
	}
	
	public static void main(String[] args) {
		IStoreDAO storeDAO = new StoreDAOImpl();
		storeDAO.FindById(11);
	}

}
