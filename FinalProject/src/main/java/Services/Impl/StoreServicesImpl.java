package Services.Impl;

import java.util.List;

import Connection.Connection;
import DAO.IStoreDAO;
import DAO.Impl.StoreDAOImpl;
import Model.Store;
import Services.IStoreServices;

public class StoreServicesImpl extends Connection implements IStoreServices {
	IStoreDAO storeDAO = new StoreDAOImpl();
	@Override
	public List<Store> finALL() {
		return storeDAO.finALL();
	}
	@Override
	public void Insert(Store store) {
		storeDAO.Insert(store);
	}
	@Override
	public void Delete(int StoreID) {
		storeDAO.Delete(StoreID);
		
	}
	@Override
	public void Edit(Store store) {
		storeDAO.EditStore(store);
	}
	@Override
	public Store FindById(int id) {
		return storeDAO.FindById(id);
	}
	
}
