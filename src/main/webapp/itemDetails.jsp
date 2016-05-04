<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragrma", "no-cache");
	response.setDateHeader("Expires", 0);
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/x-icon" href="logo/wd.ico" media="screen" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css">
<title>电商秒杀平台—商品详情</title>
<link href="css/itemDetails.css" rel="stylesheet" type="text/css">
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
					<li class="active"><a href="#">商品详情</a></li>
					<li><a href="userItemsList.jsp">我的店铺<br></a></li>
					<li><a href="userCarts.jsp">购物车<br></a></li>
					<li><a href="userOrders.jsp">我的订单<br></a></li>
					<li><a href="#">欢迎${sessionScope.user.u_name}登录<br></a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="section">
		<div class="container"></div>
	</div>
	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-right">
					<a class="btn btn-primary">返回</a>
				</div>
				<div class="row">
					<div class="col-md-12">
						<hr>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<img
						src="picture/exp1.jpeg"
						class="img-responsive">
				</div>
				<div class="col-md-5">
					<h1>这里是商品的标题</h1>
					<h3>价格：100.00</h3>
					<h3>邮费：10.00</h3>
					<h3 class="text-danger">剩余：3件 无货</h3>
					<hr>
					<h3 class="text-right">离开始还剩 30:00</h3>
					<a class="btn btn-default">加入购物车</a><a class="btn btn-default">购买</a>
					<div class="btn-group"></div>
				</div>
				<div class="col-md-1">
					<a class="btn btn-info">秒杀</a>
				</div>
			</div>
		</div>
	</div>
	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<hr>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<p>
						商品描述商品描述商品描述商品描述商品描述商品描述商品描述商品描述<br>商品描述商品描述商品描述商品描述商品描述商品描述商品描述商品描述
					</p>
				</div>
			</div>
		</div>
	</div>
	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<img
						src="picture/exp1.jpeg"
						class="img-responsive">
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
						郑斌&nbsp;&nbsp;王倩倩&nbsp;&nbsp;张静娜&nbsp;&nbsp;王泰隆<br> <br>
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
							<a href="logo/logo.png">
								<img alt="www.baidu.com" src="logo/logo.png">
								<i class="fa fa-3x fa-fw fa-github text-inverse"></i>
							</a>
							<a href="#"><i
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