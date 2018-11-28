package com.bin.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bin.bean.User;
import com.bin.service.ResignService;

/**
 * Servlet implementation class ResignServlet
 */
public class ResignServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//获取到来自页面的用户名和密码
		response.setContentType("text/html;charset=utf-8");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		System.out.println(username);
		System.out.println(password);
		ResignService rs = new ResignService();
		int user = rs.resignService(username,password);
		System.out.println(user);
		PrintWriter out = response.getWriter();
		out.println("<font color='green'>恭喜您，"
				+ "注册成功，3秒后自动跳转到登录首页....<font>");
		response.setHeader("refresh", "3;url=/TMM/index.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
