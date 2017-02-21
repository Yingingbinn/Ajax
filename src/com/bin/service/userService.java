package com.bin.service;

import java.sql.SQLException;

import com.bin.dao.userDao;
import com.bin.pojo.User;

public class userService {
	


	public User CheckuserName4Ajax(String username) throws SQLException {
		// TODO Auto-generated method stub
		return new userDao().getusernameByUsername(username);
	}}
