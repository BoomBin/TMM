<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p align="center">添加教师信息</p>
	<form name="form1" action=addTeacher.jsp method="post">
		<table align="center" border="1">
			<tr>
				<td>教师姓名：<input  type="text" name="TeaName" ></td>
				<td>教师年龄：<input type="text" name="TeaAge"></td>
				<td>教师性别：<input type="text" name="TeaSex"></td>
				<td>删除选项：<input type="button" name="DelMessage"></td>
				
			</tr>

		</table>
		<p></p>
		<div align="center">
				<input type="submit" value="点击确认"></a>
		</div>
	</form>
</body>
</html>