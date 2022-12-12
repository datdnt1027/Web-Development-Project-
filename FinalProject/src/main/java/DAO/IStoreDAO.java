package DAO;

import java.util.List;

import Model.Store;

public interface IStoreDAO {
	List<Store> finALL();
	void Insert(Store store);
	void Delete(int storeId);
	void EditCategory(Store store);

}