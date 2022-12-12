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
}
