package com.dao;

import com.dto.User;

public interface UserDao {
	int insertUser(User usr);
	boolean login(User usr);
	//void viewUser(User usr);
}
