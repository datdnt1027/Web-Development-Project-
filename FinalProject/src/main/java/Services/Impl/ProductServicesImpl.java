package Services.Impl;

import java.util.List;

import DAO.IProductDAO;
import DAO.Impl.ProductDAOImpl;
import Model.Product;
import Services.IProductServices;

public class ProductServicesImpl implements IProductServices {
	IProductDAO productDAO = new ProductDAOImpl();
	@Override
	public List<Product> findByStore(int idStore) {
		return productDAO.findByStore(idStore);
	}

}
