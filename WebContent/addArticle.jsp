<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		request.setCharacterEncoding("utf-8");
		String authArticle = request.getParameter("authArticle");
		String titleArticle = request.getParameter("titleArticle");
		String prizeArticle = request.getParameter("prizeArticle");
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/teamessage?characterEncoding=utf-8";
		String username = "root";
		String password = "root";
		Connection conn = DriverManager.getConnection(url,username,password);
		String sql = "insert into article values(null,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);//执行数据库语句
		pstmt.setString(1,authArticle);//TeaName TeaAge,TeaSex插入到数据库表中
		pstmt.setString(2,titleArticle);
		pstmt.setString(3,prizeArticle);
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
	 response.setHeader("Refresh","1,url=articleMessage.jsp"); 
	%>
</body>
</html>