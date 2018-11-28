package com.bin.dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import com.bin.bean.User;
import com.bin.utils.DataSourceUtils;

public class UserDao {
	//匹配当前注册的用户名与数据库中的用户名是否一致
	public User getUserByName(String username) {
		
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		
		String sql = "select * from user where username=?";
		try {
			
			return qr.query(sql, new BeanHandler<>(User.class),username);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	public User getUser(String username,String password){
		
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		
		User user = null;
		String sql = "select * from user where username=? and password=?";
		try {
			
			user = qr.query(sql, new BeanHandler<User>(User.class),username,password);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
		
		
	}

}
