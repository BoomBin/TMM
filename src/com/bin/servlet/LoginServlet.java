package com.bin.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bin.bean.User;
import com.bin.service.UserService;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		//接受来自页面的用户名和参数
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		//2.调用service层
		UserService service = new UserService();
		User user = service.login(username, password);
		PrintWriter out = response.getWriter();
		//3.判断用户是否存在
		if(user == null){
			//如果用户不存在，则重新登陆
			//如存在则输出欢迎回来
			out.print("此管理员未注册，请先注册！！！");
			response.setHeader("refresh", "3;url=/TMM/index.jsp");
			
		}else{
			out.print(user.getUsername()+":<font color='green'>欢迎您回来！！！<font>");
			response.setHeader("refresh", "3;url=/TMM/show.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
