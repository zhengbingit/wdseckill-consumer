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
<link rel="icon" type="image/x-icon" href="../logo/wd.ico"
	media="screen" />
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<link href="../css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<title>电商秒杀平台—店铺商品列表</title>
<link href="../css/userItemsList.css" rel="stylesheet" type="text/css">
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
					<li class="active"><a href="userItemsList.jsp">我的店铺</a></li>
					<li><a href="userCarts.jsp">购物车</a></li>
					<li><a href="userOrders.jsp">我的订单</a></li>
					<li><a href="#">欢迎${sessionScope.user.u_name}登录</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="section" style="padding: 12px 0">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="page-header text-left" style="margin: 50px 0 20px;">
						<h3>${storeName}</h3>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 text-right">
					<c:if test="${storeId == sessionScope.user.u_id}">
						<a class="btn btn-sm btn-success">发布新商品<br></a>
					</c:if>
				</div>
			</div>
		</div>
	</div>

	<c:forEach items="${list_items}" var="item">
		<div style="padding: 10px 0;">
			<div class="container">
				<div class="row" style="border-bottom: 1px solid #eeeeee;">
					<div class="col-md-2">
						<img src="picture/exp1.jpeg" class="img-responsive">
					</div>
					<div class="col-md-2">
						<h5 contenteditable="false">${item.i_name}</h5>
						<h5>价格：${item.i_price}</h5>
						<h5>邮费：${item.i_postage}</h5>
						<c:if test="${item.i_stock != 0}">
							<h5>剩余：${item.i_stock}件</h5>
						</c:if>
						<c:if test="${item.i_stock == 0}">
							<h5 class="text-danger">无货</h5>
						</c:if>
					</div>
					<div class="col-md-5">
						<c:if test="${item.i_iskill == 1}">
							<a class="btn btn-info btn-xs">秒杀<br></a>
						</c:if>
					</div>
					<div class="col-md-3" style="text-align: right;">
						<c:if test="${item.user.u_id == sessionScope.user.u_id}">
							<h5 class="text-primary text-right">
								<a href="#">编辑商品</a>
							</h5>
							<h5 class="text-primary text-right">
								<a href="deleteItem.do?u_id=${item.user.u_id}&i_id=${item.i_id}">删除商品</a>
							</h5>
						</c:if>
						<c:if test="${item.i_iskill == 1}">
							<h5 class="text-right">离开始还剩 30:00</h5>
						</c:if>
						<h3 class="text-right"></h3>
						<c:if test="${item.i_iskill == 1}">
							<button type="button" class="btn btn-default" style="color: #AF3030;">刷新</button>
						</c:if>
						<c:if test="${item.i_stock != 0 && item.i_iskill != 1}">
							<button type="button" class="btn btn-default" onclick="">加入购物车</button>
						</c:if>
						<c:if test="${item.i_stock == 0 && item.i_iskill != 1}">
							<button type="button" class="btn btn-default" disabled="disabled">加入购物车</button>
						</c:if>
						<h5 class="text-right">销量：${item.i_sales}件</h5>
					</div>
				</div>
			</div>
		</div>
	</c:forEach>

	<div style="padding: 10px 0;">
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