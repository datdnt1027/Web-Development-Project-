package DAO.Impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Connection.Connection;
import DAO.ICategoryDAO;
import Model.Category;

public class CategoryDAO extends Connection implements  ICategoryDAO {

	@Override
	public List<Category> findAll() {
		List<Category> categories = new ArrayList<Category>();
		String sql = "SELECT * FROM Category";
		try {
			java.sql.Connection conn = super.getConnection(); 
			PreparedStatement ps = conn.prepareStatement(sql); 
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Category category = new Category();
				category.setId(rs.getInt("id"));
				category.setName(rs.getString("name"));
				category.setImage(rs.getString("image"));
				category.setSlug(rs.getString("slug"));
				categories.add(category);
			}} catch (Exception e) {
				e.printStackTrace();}
		return categories;
	}
	
}
