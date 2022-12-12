package DAO.Impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Connection.Connection;
import DAO.IUserDAO;
import Model.User;

public class UserDAOImpl extends Connection implements IUserDAO {

	@Override
	public User findById(int id) {
		String sql = "select * from _User where id =?";
		try {
		java.sql.Connection con = super.getConnection();
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, id);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
		User user = new User();
		user.setId(rs.getInt("id"));
		user.setId_role(rs.getInt("id_role"));
		
		user.setFull_name(rs.getString("full_name"));
		user.setSlug(rs.getString("slug"));
		user.setId_card(rs.getString("id_card"));
		user.setPhone(rs.getString("phone"));
		user.setPassword(rs.getString("password"));
		user.setAvatar(rs.getString("avatar"));
		user.setActive(rs.getBoolean("isActive"));
		return user;
		}} catch (Exception e) {
		e.printStackTrace();}
		return null;
	}
	

}
