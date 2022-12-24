package DAO;

import java.util.List;

import Model.Product;

public interface IProductDAO {
	List<Product> findByStore(int idStore);
	List<Product> FindAllPage(int index);
	void Insert(Product product);
	void Delete(int idProduct);
	void Update(Product prduct);
	Product findById(int id);
}
