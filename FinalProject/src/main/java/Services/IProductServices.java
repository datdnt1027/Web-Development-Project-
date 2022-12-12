package Services;

import java.util.List;

import Model.Product;

public interface IProductServices {
	List<Product> findByStore(int idStore);

}
