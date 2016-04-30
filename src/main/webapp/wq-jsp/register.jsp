<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% 
response.setHeader("Cache-Control","no-store"); 
response.setHeader("Pragrma","no-cache"); 
response.setDateHeader("Expires",0); 
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/secKill.css" rel="stylesheet" type="text/css" />
<title>登录界面</title>
<script type="text/javascript">
	function toValidate() {
		var reg = /^[0-9a-zA-Z]+$/;
		var name = document.getElementById("name").value.replace(
				/(^\s+)|(\s+$)/g, "");
		var pwd = document.getElementById("pwd").value.replace(
				/(^\s+)|(\s+$)/g, "");
		var confirmPwd = document.getElementById("confirmPwd").value.replace(
				/(^\s+)|(\s+$)/g, "")
		var errorName = document.getElementById("error-name");
		var errorPwd = document.getElementById("error-pwd");
		var errorConfirm = document.getElementById("error-confirm")
		
		var submit = true;
		//使用正则表达式
		if (!reg.test(name) || name == null) {
			errorName.style.display = "block";
			submit = false;
		} else {
			errorName.style.display = "none";
		}
		if (pwd.length > 120 || pwd.length <= 0) {
			errorPwd.style.display = "block";
			submit = false;
		}
		if (confirmPwd != pwd) {
			errorConfirm.style.display = "block";
			submit = false;
		} else {
			errorPwd.style.display = "none";
		}
		if(submit == true) {
			document.registerForm.submit();
		}
	}
</script>
</head>
<body>
	<div class="div">
		<div class="above">
			<div style="float: left; margin: 20px;">秒杀平台</div>
			<div>
				<ul>
					<li><a href="login.jsp"> 登录</a></li>
				</ul>
			</div>
		</div>
		<div class="middle">会员注册</div>
		<div class="bottom">
		<form action="register.do" method="post" name="registerForm">
			<table>
				<tr>
					<td>用户名：</td>
					<td>
						<input type="text" name="u_name" class="name" id="name" value="">
						<strong style="color: red">*</strong>
						<div id="error-name" class="error-info">输入的不合法</div>
					</td>
				</tr>
				<tr>
					<td>密码：</td>
					<td>
						<input type="password" name="u_pwd" class="pwd" id="pwd" value="">
						<strong style="color: red">*</strong>
						<div id="error-pwd" class="error-info">输入的不合法</div>
					</td>
				</tr>
				<tr>
					<td>再次输入密码：</td>
					<td>
						<input type="password" name="confirmPwd" id="confirmPwd" value=""> 
						<strong style="color: red">*</strong>
						<div id="error-confirm" class="error-info">两次输入的密码不相同</div>
					</td>
				</tr>
			</table>
		</form>
		</div>
		<div class="bottom"
			style="border-top: 2px solid grey; border-bottom: 2px solid grey; padding: 11px 0 13px 249px;">
			我是卖家：<input type="checkbox" name="u_issell" value=""> <br />
			店铺名称：<input type="text" name="u_store" value="" disabled="disabled"> 
			<strong style="color: red">*</strong><br />
		</div>
		<div class="button">
			<input type="button" name="" value="返回首页">
			<input type="button" name="" onclick="toValidate()" value="登录">
		</div>
	</div>
</body>
</html>