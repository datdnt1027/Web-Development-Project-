package DAO;

import java.util.List;

import Model.Order;

public interface IOrderDAO {
	List<Order> findByStore(int idStore); 
	List<Order> findByStoreWithStatus(int idStore, String status); 
}
