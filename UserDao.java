package com.company.dao;

public interface UserDao {

	static boolean isValidUser(String username, String password) {
		return false;
	}

	boolean addUser(User user);

}
