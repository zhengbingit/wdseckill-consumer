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
<link href="../css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="icon" type="image/x-icon" href="../logo/wd.ico"
	media="screen" />
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<link href="../css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<title>电商秒杀平台—我的订单</title>
</head>
<body>
	<div class="navbar navbar-default ">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#navbar-ex-collapse">
					<span class="sr-only">Toggle navigation</span><span
						class="icon-bar"></span><span class="icon-bar"></span><span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="../item/listItem.do"><span>电商秒杀平台</span></a>
			</div>
			<div class="collapse navbar-collapse" id="navbar-ex-collapse">
				<ul class="nav navbar-nav navbar-right">
					<li class="active"><a href="#">我的订单</a></li>
					<li><a
						href="../cart/listCart.do?u_id=${sessionScope.user.u_id}">购物车<br></a></li>
					<li><a
						href="../item/listStoreItem.do?u_id=${sessionScope.user.u_id}">我的店铺<br></a></li>
					<li><a href="#">欢迎${sessionScope.user.u_name}登录<br></a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="page-header text-left">
						<h3>我的订单</h3>
					</div>
				</div>
			</div>
		</div>
	</div>
	<c:forEach items="${list_orders}" var="order">
		<div class="section" style="padding: 15px 0;">
			<div class="container">
				<div class="row" style="border-bottom: 1px solid #eeeeee;">
					<div class="col-md-2">
						<a href="../item/getItem.do?i_id=${order.item.i_id}">
							<img src="../upload/${order.item.i_img1}" class="img-responsive" ></img>
						</a>
					</div>
					<div class="col-md-7">
						<h5 contenteditable="false">${order.item.i_name}</h5>
						<h5>价格：${order.item.i_price}</h5>
						<h5>邮费：${order.item.i_postage}</h5>
						<h5>已购买：${order.o_count}件</h5>
					</div>
					<div class="col-md-3 text-right">
						<a class="text-primary text-right" href="../item/listStoreItem.do?u_id=${order.item.user.u_id}">进入${order.item.user.u_store}店铺</a>
						<h3 class="text-right"></h3>
					</div>
				</div>
			</div>
		</div>
	</c:forEach>
	<div class="section" style="padding: 15px 0;">
		<div class="container">
			<div class="row" style="border-bottom: 1px solid #eeeeee;">
				<div class="col-md-2">
					<img src="picture/exp1.jpeg" class="img-responsive">
				</div>
				<div class="col-md-7">
					<h5 contenteditable="true">这里是商品的标题</h5>
					<h5>价格：100.00</h5>
					<h5>邮费：10.00</h5>
					<h5>已购买：10件</h5>
				</div>
				<div class="col-md-3">
					<h5 class="text-primary text-right">进入XX店铺</h5>
					<h3 class="text-right"></h3>
				</div>
			</div>
		</div>
	</div>
	<div class="section" style="padding: 15px 0;">
		<div class="container">
			<div class="row" style="border-bottom: 1px solid #eeeeee;">
				<div class="col-md-2">
					<img src="picture/exp1.jpeg" class="img-responsive">
				</div>
				<div class="col-md-7">
					<h5 contenteditable="true">这里是商品的标题</h5>
					<h5>价格：100.00</h5>
					<h5>邮费：10.00</h5>
					<h5>已购买：10件</h5>
				</div>
				<div class="col-md-3">
					<h5 class="text-primary text-right">进入XX店铺</h5>
					<h3 class="text-right"></h3>
				</div>
			</div>
		</div>
	</div>
	<div class="section" style="padding: 15px 0;">
		<div class="container">
			<div class="row" style="border-bottom: 1px solid #eeeeee;">
				<div class="col-md-2">
					<img src="picture/exp1.jpeg" class="img-responsive">
				</div>
				<div class="col-md-7">
					<h5 contenteditable="true">这里是商品的标题</h5>
					<h5>价格：100.00</h5>
					<h5>邮费：10.00</h5>
					<h5>已购买：10件</h5>
				</div>
				<div class="col-md-3">
					<h5 class="text-primary text-right">进入XX店铺</h5>
					<h3 class="text-right"></h3>
				</div>
			</div>
		</div>
	</div>
	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-right">
					<ul class="pagination">
						<li class=""><a href="#">Prev</a></li>
						<li class="active"><a href="#">1</a></li>
						<li class=""><a href="#">2</a></li>
						<li class=""><a href="#">3</a></li>
						<li class=""><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">Next</a></li>
					</ul>
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