package service.Impl;

import java.util.List;

import dao.UserDao;
import dao.impl.UserDaoImpl;
import entities.User;
import service.UserService;

public class UserServiceImpl implements UserService{
	private UserDao dao;
	
	public UserServiceImpl() {
		dao = new UserDaoImpl();
	}

	@Override
	public User findById(Integer id) {
		// TODO Auto-generated method stub
		return dao.findById(id);
	}

	@Override
	public User findByEmail(String email) {
		// TODO Auto-generated method stub
		return dao.findByEmail(email);
	}

	@Override
	public User findByUsername(String username) {
		// TODO Auto-generated method stub
		return dao.findByUsername(username);
	}

	@Override
	public User login(String username, String password) {
		// TODO Auto-generated method stub
		return dao.findByUsernameAndPassword(username, password);
	}

	@Override
	public User resetPassword(String email) {
		User existUser = findByEmail(email);
		if(existUser!=null) {
			String newPass = String.valueOf((Math.random() *((9999-1000) +1)) +1000);
			existUser.setPassword(newPass);
			return dao.update(existUser); 
		}
		return null;
	}

	@Override
	public List<User> findAll() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}

	@Override
	public List<User> findAll(int pageNumber, int pageSize) {
		// TODO Auto-generated method stub
		return dao.findAll(pageNumber,pageSize);
	}

	@Override
	public User register(String username, String password, String email,String fullname) {
		// TODO Auto-generated method stub
		User entity = new User();
		entity.setUsername(username);
		entity.setPassword(password);
		entity.setEmail(email);
		entity.setFullname(fullname);
		entity.setIsAdmin(Boolean.FALSE);
		entity.setIsActive(Boolean.TRUE);
		return dao.create(entity);
	}

	@Override
	public User delete(String username) {
		// TODO Auto-generated method stub
		User entity = dao.findByUsername(username);
		entity.setIsActive(Boolean.FALSE);
		return dao.update(entity);
	}

	@Override
	public User update(User entity) {
		// TODO Auto-generated method stub
		return dao.update(entity);
	}

	@Override
	public User register(String username, String password, String email, String fullname, boolean isadmin) {
		// TODO Auto-generated method stub
		User entity = new User();
		entity.setUsername(username);
		entity.setPassword(password);
		entity.setEmail(email);
		entity.setFullname(fullname);
		entity.setIsAdmin(Boolean.FALSE);
		entity.setIsActive(Boolean.TRUE);
		return dao.create(entity);
	}

}
