package DAO;

import Model.User;

public interface IUserDAO {
	public User findById(int id);
	public User findByUserName(String username);

}
