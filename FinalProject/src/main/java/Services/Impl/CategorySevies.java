package Services.Impl;

import java.util.List;

import DAO.ICategoryDAO;
import DAO.Impl.CategoryDAO;
import Model.Category;
import Services.ICategoryServices;

public class CategorySevies implements ICategoryServices {
	ICategoryDAO categoryDAO = new CategoryDAO();
	@Override
	public List<Category> findAll() {
		return categoryDAO.findAll();
	}
	
}
