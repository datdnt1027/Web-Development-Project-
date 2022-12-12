package Services;

import java.util.List;

import Model.Store;

public interface IStoreServices {
	List<Store> finALL();
	void Insert(Store store);
	void Delete(int StoreID);
	void Edit(Store store);
	Store FindById(int id);
}
