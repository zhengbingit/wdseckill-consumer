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
<script type="text/javascript"
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<script type="text/javascript"
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css"
	rel="stylesheet" type="text/css">
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
				<a class="navbar-brand" href="#"><span>电商秒杀平台</span></a>
			</div>
			<div class="collapse navbar-collapse" id="navbar-ex-collapse">
				<ul class="nav navbar-nav navbar-right">
					<li class="active"><a href="#">登录</a></li>
					<li><a href="#">注册<br></a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="col-md-12"></div>
	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="page-header text-left">
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
					<form class="form-horizontal text-left" role="form">
						<div class="form-group has-feedback">
							<div class="col-sm-2">
								<label for="inputEmail3" class="control-label">*用户名：<br></label>
							</div>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="inputEmail3"
									placeholder="4-20个字母和数字组成"><span
									class="fa fa-check form-control-feedback"></span>
							</div>
							<div class="col-sm-offset-2 col-sm-10">
								<p class="help-block">Example block-level help text here.</p>
							</div>
						</div>
						<div class="form-group has-feedback">
							<div class="col-sm-2">
								<label for="inputEmail3" class="control-label">*密码：</label>
							</div>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="inputEmail3"
									placeholder="最长128个字符"><span
									class="fa fa-check form-control-feedback"></span>
							</div>
							<div class="col-sm-offset-2 col-sm-10">
								<p class="help-block">Example block-level help text here.</p>
							</div>
						</div>
						<div class="form-group has-feedback">
							<div class="col-sm-2">
								<label for="inputEmail3" class="control-label">*再次输入密码：</label>
							</div>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="inputEmail3"
									placeholder="最长128个字符"><span
									class="fa fa-check form-control-feedback"></span>
							</div>
							<div class="col-sm-offset-2 col-sm-10">
								<p class="help-block">Example block-level help text here.</p>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<div class="checkbox">
									<label><input type="checkbox">是<br></label>
								</div>
							</div>
						</div>
						<div class="form-group has-feedback">
							<div class="col-sm-2">
								<label for="inputEmail3" class="control-label">店铺名称：</label>
							</div>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="inputEmail3"
									placeholder="2-20个汉字"><span
									class="fa fa-check form-control-feedback"></span>
							</div>
							<div class="col-sm-offset-2 col-sm-10">
								<p class="help-block">Example block-level help text here.</p>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-10 col-sm-offset-2 text-center">
								<button type="submit" class="btn btn-default disabled">回到首页</button>
								<button type="submit" class="btn btn-default">完成注册</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<footer class="section section-primary">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<h1>电商秒杀平台</h1>
					<p>
						郑斌，王倩倩，张静娜<br>
						<br>
					</p>
				</div>
				<div class="col-sm-6">
					<p class="text-info text-right">
						<br>
						<br>
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
				</div>
			</div>
		</div>
	</footer>
</body>
</html>