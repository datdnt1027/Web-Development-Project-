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
		// TODO Auto-generated method stub
		
	}

	@Override
	public void Delete(int storeId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void EditCategory(Store store) {
		// TODO Auto-generated method stub
		
	}
	

}
