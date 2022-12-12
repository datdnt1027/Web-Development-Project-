package DAO;

import java.util.List;

import Model.Product;

public interface IProductDAO {
	List<Product> findByStore(int idStore);

}
