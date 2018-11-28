package com.bin.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bin.bean.User;
import com.bin.service.UserService;


public class AjaxServlet extends HttpServlet {
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		//接受来自页面的用户名和参数
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		//2.调用service层
		UserService service = new UserService();
		User user = service.checkUserName(username);
		PrintWriter pw = response.getWriter();
		//3.判断用户是否存在
		if(user != null){
			pw.write("<font color='green'>此用户已存在，请直接登录<font>");
		}else{
			pw.write("<font color='red'>此用户不存在，请先注册!!!<font>");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
