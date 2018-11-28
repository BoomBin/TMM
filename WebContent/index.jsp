<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>登陆</title>
<style type="text/css">
.wrapper {
	background: url("images/backround.png") no-repeat;
	height: 1000px;
	/* margin-top: 100px; */
}

.wrapper1 {
	margin-top: 0px;
}

.table {
	margin-left: 100px;
	margin-top: 100px;
}

.ziti {
	font-size: 25px;
	font-weight: blod;
	color: white;
	margin-bottom: 20px;
}

.manager {
	color: white;
}
</style>
</head>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-2.1.0.min.js">
	
</script>
<!-- 给注册按钮加一个事件 通过事件来获得username和password，
将获得的参数一层一层传下去，最后实现数据库的动态插入语句，从而实现注册功能-->
<script type="text/javascript">
	function regist(){
		$username = $("#username").val();
		$password = $("#password").val();
		location.href="http://localhost:8080/TMM/rs?username="+$username+"&"+"password="+$password;
	}
</script>
<body>
	<div class="wrapper">
		<div class="wrapper1">
			<img alt="" src="images/logo.png">
		</div>

		<form name="form1" class="table" action="ls" method="post">
			<div class="ziti">&nbsp&nbsp&nbsp&nbsp管理员登录页面</div>
			<table width="400" height="200" border="1" bordercolor="#A0A0A0">
				<!--   -->
				<tr>
					<th class="manager">管理员账号：</th>
					<td>
						<input type="text" name="username" id="username"
							value="请输入用户名" maxlength="16"
							onfocus="if(this.value == '请输入用户名') this.value =''">
					</td>
					<td>
						<span id="username_msg"></span>
					</td>
				</tr>
				<tr>
					<th class="manager">请输入密码：</th>
					<td>
						<input type="password" id="password" name="password"
							value="请输入密码" maxlength="20"
							onfocus="if(this.value == '请输入密码') this.value =''"> 
					</td>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						name="submit" value="登       录"> 
						<a> 
							<!-- 给按钮添加一个点击事件 -->
							<input
								type="button" value="注        册" id="sub" onclick="regist()">
						</a>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
<script type="text/javascript">
	
	$(function() {
		$("#username").blur(function() {
			var url = "as";
			var username = document.form1.username.value;
			var args = {
				"username" : username
			};
			$.get(url, args, function(data) {
				$("#username_msg").html(data);
			}, 'html');
			return false;
		});

	});
</script>
<!-- <script type="text/javascript">
	function checkUsername(obj){
		//alert(obj.value);
		//1.创建核心对象
		xmlhttp = null;
		if (window.XMLHttpRequest) {// code for IE7, Firefox, Opera, etc.
			xmlhttp = new XMLHttpRequest();
		} else if (window.ActiveXObject) {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		//2.编写回调函数
		xmlhttp.onreadystatechange=function(){
			//请求服务器，返回相应的操作  回调函数
			//alert(xmlhttp.readyState);
			if(xmlhttp.readyState==4&&xmlhttp.status==200){
				//成功响应
				//alert("ok");
				//alert(xmlhttp.responseText);
				if(xmlhttp.responseText==1){
					//用户名可用
					
					document.getElementById("username_msg").innerHTML = "<font color='green'>用户名可以使用<font>";
					document.getElementById("sub").disabled=false;

				} else {
					//用户名不可用
					document.getElementById("username_msg").innerHTML = "<font color='red'>用户名已经被占用<font>";
					document.getElementById("sub").disabled=true;
				}

			}

		}
		//3.open
		xmlhttp.open("post", "/TMM/check");
		//设置请求头
		xmlhttp.setRequestHeader("content-type",
				"application/x-www-form-urlencoded");
		//4.send
		xmlhttp.send("username=" + obj.value);

	}
</script> -->
</html>