package com.bin.service;

import com.bin.bean.User;
import com.bin.dao.UserDao;

public class UserService {
	public User checkUserName(String username){
		//这层，被AjaxServlet调用，调用dao层，
		return new UserDao().getUserByName(username);
	}
	public User login(String username,String password){
		UserDao dao = new UserDao();
		return dao.getUser(username, password);	
	}
}
