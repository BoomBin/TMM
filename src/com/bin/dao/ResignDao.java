package com.bin.dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import com.bin.bean.User;
import com.bin.utils.DataSourceUtils;

public class ResignDao {
	
	public int resignDao(String username,String password) {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());

		String sql = "INSERT INTO user (username,password) VALUES(?,?)";

		try {

			return  qr.update(sql,username,password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}
}
