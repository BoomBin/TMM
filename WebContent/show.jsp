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
<title>信息首页</title>
</head>
<body >
<!-- bgcolor="#FFB5C5" -->
	<h2 align="center">燕山大学计算机教师信息管理系统</a></p>
	<table align="center" class="table table-hover">
	<tr>
		<td><a href="">教师个人信息</a></td>
		<td>
			<!-- 通过点击按钮，来跳转到教师信息页面 -->
			<a href="TeachMessage.jsp">
				<input type="button" class = "btn btn-info btn-lg" value="查看信息">
				
			</a>
		</td>
		
	</tr>
	<tr>
		<td><a href="" >论文成果信息</a></td>
		<td>
			<!-- 通过点击按钮，来跳转到作品信息页面 -->
			<a href="articleMessage.jsp">
				<input type="button" class = "btn btn-info btn-lg"value="查看信息">
			</a>
		</td>
		
	</tr>
	<tr>
		<td><a href="">科研项目信息</a></td>
		<td>
			<!-- 通过点击按钮，来跳转到科研信息页面 -->
			<a href="KeYanProject.jsp">
				<input type="button" class = "btn btn-info btn-lg" value="查看信息">
			</a>
		</td>
		
	</tr>
	<tr>
		<td><a href="">授课信息</a></td>
		<td>
			<a href="TeachClass.jsp">
				<input type="button"  class = "btn btn-info btn-lg"value="查看信息">
			</a>
		</td>
		
	</tr>
</body>
</html>