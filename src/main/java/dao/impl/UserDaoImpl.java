package dao.impl;

import java.util.List;

import dao.AbstractDao;
import dao.UserDao;
import entities.User;

public class UserDaoImpl extends AbstractDao<User> implements UserDao{

	@Override
	public User findById(Integer id) {
		return super.findById(User.class, id);
	}

	@Override
	public User findByEmail(String email) {
		String sql = "Select o From User o Where o.email = ?0";
		return super.findOne(User.class, sql,email);
	}

	@Override
	public User findByUsername(String username) {
		// TODO Auto-generated method stub
		String sql = "Select o From User o Where o.username = ?0";
		return super.findOne(User.class, sql, username);
	}
	
	@Override
	public User findByUsernameAndPassword(String username, String password) {
		String sql = "Select o From User o Where o.username = ?0 AND o.password = ?1";
		return super.findOne(User.class, sql, username , password);
	}

	@Override
	public List<User> findAll() {
		return super.findAll(User.class, true);
	}
	
	@Override
	public List<User> findAll(int pageNumber,int pageSize) {
		return super.findAll(User.class, true,pageNumber,pageSize);
	}



}
