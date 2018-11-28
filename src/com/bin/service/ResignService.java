package com.bin.service;

import com.bin.bean.User;
import com.bin.dao.ResignDao;

public class ResignService {
	public int resignService(String username,String password) {
		return new ResignDao().resignDao(username,password);
	}

}
