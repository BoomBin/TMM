<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>删除页面</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String url="jdbc:mysql://localhost:3306/teamessage?characterEncoding=utf-8";
	String username = "root";
	String password = "root";
	Connection conn = DriverManager.getConnection(url,username,password);
	String sql = "delete from teachermessage where id=?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setInt(1,Integer.parseInt(id)); 
	int result = pstmt.executeUpdate();
	String msg = "删除失败，单击点击跳转到老师信息页面";
	if(result==1){
		msg = "删除成功，跳转到老师信息页面";
	}
	pstmt.close();
	conn.close();
	%>
	<script>window.alert('<%= msg %>');</script>
	<% 
	response.setHeader("Refresh","2;url=TeachMessage.jsp");
	%>
</body>
</html>