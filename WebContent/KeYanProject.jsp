<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p align="center">教师信息表</p>
	<table align="center" width="50%" border="1">
	<tr>
		<th>课设项目</th>
		<th>完成时间</th>
		<th>项目作者</th>
		<th>删除选项</th>
	</tr>
	<%
		request.setCharacterEncoding("utf-8");
		Class.forName("com.mysql.jdbc.Driver");
		String username = "root";
		String url = "jdbc:mysql://localhost:3306/teamessage?characterEncoding=utf-8";
		String password = "root";
		Connection conn = DriverManager.getConnection(url,username,password);
		String sql = "SELECT * from keyanproject";
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		while(rs.next()){
			int id = rs.getInt(1);
		
	%>
	<tr>
		<td><%=rs.getString("projectName")%></td>
		<td><%=rs.getString("projectDate")%></td>
		<td><%=rs.getString("projectAuthor")%></td>
	</tr>
	<%
		}
		rs.close();
		stmt.close();
		conn.close();
	%>
	</table>
	<p></p>
	<p></p>
		<div align="center">
			<a href="index.jsp">
				<input type="button" value="返回首页">
			</a>
			<a href="">
				<input type="button" value="增加信息">
			</a>
		
		</div>
</body>
</html>