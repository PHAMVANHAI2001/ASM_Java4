package service;

import java.util.List;

import entities.User;

public interface UserService {
	User findById(Integer id);

	User findByEmail(String email);

	User findByUsername(String username);

	User login(String username, String password);

	User resetPassword(String email);

	List<User> findAll();

	List<User> findAll(int pageNumber, int pageSize);

	User register(String username, String password, String email, String fullname);
	
	User register(String username, String password, String email, String fullname,boolean isadmin);

	User delete(String username);

	User update(User entity);
}
