<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加信息</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		//String TeaName = new String(request.getParameter("TeaName").getBytes("iso-8859-1"),"utf-8");
		//System.out.println(request.getParameter("TeaName").getBytes("iso-8859-1"));
		
		/* for(byte b:TeaName.getBytes()){
			System.out.println((int)b);
		} */
		String TeaName = request.getParameter("TeaName");
		String TeaAge = request.getParameter("TeaAge");
		String TeaSex = request.getParameter("TeaSex");
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/teamessage?characterEncoding=utf-8";
		String username = "root";
		String password = "root";
		Connection conn = DriverManager.getConnection(url,username,password);
		String sql = "insert into teachermessage values(null,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);//执行数据库语句
		pstmt.setString(1,TeaName);//TeaName TeaAge,TeaSex插入到数据库表中
		pstmt.setString(2,TeaAge);
		pstmt.setString(3,TeaSex);
		int result = pstmt.executeUpdate();//数据库表的更新
		String msg = "添加失败，单击跳转到教师信息页";
		if(result==1){
			msg = "添加成功，点击回到老师信息首页";
		}
		pstmt.close();
		conn.close();
	%>
	<script>window.alert('<%= msg %>');</script>
	<% 
		 response.setHeader("Refresh","1,url=TeachMessage.jsp"); 
	%>
</body>
</html>