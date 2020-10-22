package com.service;

import com.dto.User;

public interface UserService {
	int registerUser(User usr);
	boolean login(User usr);
}
