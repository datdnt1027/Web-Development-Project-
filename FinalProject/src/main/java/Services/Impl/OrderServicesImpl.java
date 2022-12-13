package Services.Impl;

import java.util.List;

import DAO.IOrderDAO;
import DAO.Impl.OrderDAOImpl;
import Model.Order;
import Services.IOrderServices;

public class OrderServicesImpl implements IOrderServices{
	IOrderDAO orderDAO = new OrderDAOImpl();
	@Override
	public List<Order> findByStore(int storeId) {
		return orderDAO.findByStore(storeId);
	}
	@Override
	public List<Order> findByStoreWithStatus(int idStore, String status) {
		// TODO Auto-generated method stub
		return orderDAO.findByStoreWithStatus(idStore, status);
	}
}