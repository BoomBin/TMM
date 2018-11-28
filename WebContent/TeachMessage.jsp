<%@page import="org.apache.tomcat.dbcp.dbcp.DriverManagerConnectionFactory" import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>教师信息</title>
</head>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-2.1.0.min.js">
</script>
<body>
	<div align="center" >
		<img src="images/qiao.jpg">
		<!-- <h2 align="center">教师信息表</h2> -->
	</div>
	
	<table class="table table-hover" >
	<thead>
		<tr class="success">
			<th>教师姓名</th>
			<th>教师年龄</th>
			<th>教师性别</th>
			<th>删除选项</th>
		</tr>
	</thead>
	<%
	request.setCharacterEncoding("utf-8");
	//jdbc注册数据库驱动，连接数据库
	Class.forName("com.mysql.jdbc.Driver");
	String username = "root";//数据库用户名
	String url = "jdbc:mysql://localhost:3306/teamessage?characterEncoding=utf-8";//数据库名字
	String password = "root";//数据库密码
	Connection conn = DriverManager.getConnection(url,username,password);
	String sql = "SELECT * from teachermessage";//编写SQL语句
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	while(rs.next()){
		int id = rs.getInt(1);
	%>
	<tbody>
		<tr class="info">
			<td><%=rs.getString("TeaName")%></td>
			<td><%=rs.getString("TeaAge")%></td>
			<td><%=rs.getString("TeaSex")%></td>
			<td>
				<a  href="TeacherDel.jsp?id=<%= id%>"><!-- 通过主键id值来获取到当前行最后删除> -->
					<input type="button" value="删除" class="btn btn-warning" >
				</a>
			</td>
			
		</tr>
	</tbody>
	<% 
	}
	//关闭流操作，先打开的后关闭
	rs.close();
	stmt.close();
	conn.close();
	%>
	</table>
		<p></p>
		<p></p>
		<div align="center">
			<a href="show.jsp">
				<input type="button" class="btn btn-info btn-lg"value="返回首页">
			</a>
			<a href="add.html">
				<input type="button" id="loadTable" class="btn btn-info btn-lg" value="增加信息" onclick="loadTable()">
			</a> 
		</div>
</body>
<!-- <script type="text/javascript">
	$(function() {
		$("#username").load(function() {
			var url = "TeacherMessage.jsp";
			var args = {
				"TeaName" : TeaName,
				"TeaAge" : TeaAge,
				"TeaSex" : TeaSex
			};
			$.get(url, args, function(data) {
				$("#loadTable").html(data);
			}, 'html');
			return false;
		});

	});
	 function loadTable() {  
	        var name = prompt("请输入教师名字", ""); //将输入的内容赋给变量 name ，  
	        var age = prompt("请输入教师年龄", "");
	        var name = prompt("请输入教师性别", "");
	        //这里需要注意的是，prompt有两个参数，前面是提示的话，后面是当对话框出来后，在对话框里的默认值  
	        /* if(name)//如果返回的有内容  
	        {  
	            alert("欢迎您：" + name)
	        }   */
	  
	    }  
</script> -->
</html>