package com.service;

import com.dao.UserDao;
import com.dao.UserDaoImple;
import com.dto.User;

public class UserServiceImple implements UserService {
	private UserDao userDao;
	
	public UserServiceImple() {
		userDao = new UserDaoImple();
	}

	@Override
	public int registerUser(User usr) {
		System.out.println(usr);
		return userDao.insertUser(usr);
	}

	@Override
	public boolean login(User usr) {
		return userDao.login(usr); 
	}

}
