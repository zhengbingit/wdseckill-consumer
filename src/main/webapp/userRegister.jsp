<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% 
	response.setHeader("Cache-Control","no-store"); 
	response.setHeader("Pragrma","no-cache"); 
	response.setDateHeader("Expires",0); 
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>会员注册</title>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="icon" type="image/x-icon" href="logo/wd.ico" media="screen"/>
<script type="text/javascript">
	$(function(){
		if($("#form_u_issell").val() == 0) {
			$("#form_u_store").val("");
		}
	});
	function submitForm() {
		var pass = true;
		if(checkValues(pass)) {
			$("#formRegister").submit();
		}else {
			return ;
		}
	}
	function checkValues(pass) {
		if($("#form_u_name").val() == "") {
			pass = false;
			$("#warn_u_name").attr("style","color: red;");
		}else {
			$("#warn_u_name").attr("style","display: none;");
		}
		if($("#form_u_pwd").val() == "") {
			pass = false;
			$("#warn_u_pwd").attr("style","color: red;");
		}else {
			$("#warn_u_pwd").attr("style","display: none;");
		}
		if($("#form_u_pwd_check").val() != $("#form_u_pwd").val()) {
			pass = false;
			$("#warn_u_pwd_check").attr("style","color: red;");
		}else {
			$("#warn_u_pwd_check").attr("style","display: none;");
		}
		if($("#form_u_issell").val() == 1 && $("#form_u_store").val() == "") {
			pass = false;
			$("#warn_u_store").attr("style","color: red;");
		}else {
			$("#warn_u_store").attr("style","display: none;");
		}
		return pass;
	}
	function userIsSell() {
		if($("#form_u_issell").prop("checked")) {
			$("#form_u_issell").val(1);
			$("#form_u_store").attr("disabled",false);
		} else {
			$("#form_u_issell").val(0);
			$("#form_u_store").attr("disabled",true);
		}
	}
</script>
</head>
<body>
	<div class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#navbar-ex-collapse">
					<span class="sr-only">Toggle navigation</span><span
						class="icon-bar"></span><span class="icon-bar"></span><span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="item/listItem.do"><span>电商秒杀平台</span></a>
			</div>
			<div class="collapse navbar-collapse" id="navbar-ex-collapse">
				<ul class="nav navbar-nav navbar-right">
					<li class="active"><a href="#">注册</a></li>
					<li><a href="user/login.do">登录<br></a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="section" style="padding: 12px 0">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="page-header text-left" style="margin: 50px 0 20px;">
						<h3>会员注册</h3>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-right">
					<form class="form-horizontal text-left" role="form" action="user/register.do" method="post" id="formRegister">
						<div class="form-group has-feedback" style="margin-left: 170px;">
							<div class="col-sm-2" style="text-align: right;">
								<label for="inputEmail3" class="control-label">*用户名：<br></label>
							</div>
							<div class="col-sm-10" style="width: 45%">
								<input type="text" class="form-control checkValue" id="form_u_name"
									name="u_name" placeholder="4-20个字母和数字组成"></input>
									<!-- <span class="fa fa-check form-control-feedback"></span> -->
							</div>
							<div class="col-sm-offset-2 col-sm-10">
								<p id="warn_u_name" class="help-block" style="color:red; display: none;">用户名信息不能为空</p>
							</div>
						</div>
						<div class="form-group has-feedback" style="margin-left: 170px;">
							<div class="col-sm-2" style="text-align: right;">
								<label for="inputEmail3" class="control-label">*密码：</label>
							</div>
							<div class="col-sm-10" style="width: 45%">
								<input type="password" class="form-control checkValue" id="form_u_pwd"
									name="u_pwd" placeholder="最长128个字符"></input>
									<!-- <span class="fa fa-check form-control-feedback"></span> -->
							</div>
							<div class="col-sm-offset-2 col-sm-10">
								<p id="warn_u_pwd" class="help-block" style="color:red; display: none;">密码信息不能为空</p>
							</div>
						</div>
						<div class="form-group has-feedback" style="margin-left: 170px;">
							<div class="col-sm-2" style="text-align: right;">
								<label for="inputEmail3" class="control-label">*再次输入密码：</div>
							<div class="col-sm-10" style="width: 45%">
								<input type="password" class="form-control checkValue" id="form_u_pwd_check"
									name="u_pwd" placeholder="最长128个字符"></input>
									<!-- <span class="fa fa-check form-control-feedback"></span> -->
							</div>
							<div class="col-sm-offset-2 col-sm-10">
								<p id="warn_u_pwd_check" class="help-block" style="color:red; display: none;">两次密码输入不相同</p>
							</div>
						</div>
						<div class="form-group" style="margin-left: 170px;">
							<div class="col-sm-2" style="text-align: right;">
								<label for="inputEmail3" class="control-label">我是卖家：</label>
							</div>
							<div class="col-sm-10">
								<div class="checkbox">
									<label>
										<input id="form_u_issell" type="checkbox" value="0" name="u_issell" onclick="userIsSell();"></input>是<br></br>
									</label>
								</div>
							</div>
						</div>
						<div class="form-group has-feedback" style="margin-left: 170px;">
							<div class="col-sm-2" style="text-align: right;">
								<label for="inputEmail3" class="control-label">店铺名称：</label>
							</div>
							<div class="col-sm-10" style="width: 45%">
								<input name="u_store" type="text" class="form-control" id="form_u_store" placeholder="2-20个汉字" disabled="disabled"></input>
								<!-- <span class="fa fa-check form-control-feedback"></span> -->
							</div>
							<div class="col-sm-offset-2 col-sm-10">
								<p id="warn_u_store" class="help-block" style="color:red; display: none;">店铺名称信息不能为空</p>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6 text-right">
								<a class="btn btn-primary" href="itemsList.jsp">回到首页</a>
							</div>
							<div class="col-md-6">
								<a class="btn btn-primary" onclick="submitForm();">完成注册</a>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<footer class="section section-primary" style="padding: 0px 0;">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<h1>电商秒杀平台</h1>
					<p>
						郑斌&nbsp;&nbsp;王倩倩&nbsp;&nbsp;张静娜&nbsp;&nbsp;王泰隆<br> <br>
					</p>
				</div>
				<!-- <div class="col-sm-6">
					<p class="text-info text-right" style="margin: 0 0 -2px;">
						<br> <br>
					</p>
					<div class="row">
						<div class="col-md-12 hidden-lg hidden-md hidden-sm text-left">
							<a href="#"><i
								class="fa fa-3x fa-fw fa-instagram text-inverse"></i></a> <a
								href="#"><i class="fa fa-3x fa-fw fa-twitter text-inverse"></i></a>
							<a href="#"><i
								class="fa fa-3x fa-fw fa-facebook text-inverse"></i></a> <a href="#"><i
								class="fa fa-3x fa-fw fa-github text-inverse"></i></a>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 hidden-xs text-right">
							<a
								href="../Workspaces/Eclipse-j2EE/wdseckill-consumer/src/main/webapp/logo/logo.png"><i
								class="fa fa-3x fa-fw fa-github text-inverse"></i></a> <a href="#"><i
								class="fa fa-3x fa-fw fa-weibo text-inverse"></i></a> <a href="#"><i
								class="fa fa-3x fa-fw fa-weixin text-inverse"></i></a>
						</div>
					</div>
				</div> -->
			</div>
		</div>
	</footer>
</body>
</html>