<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragrma", "no-cache");
	response.setDateHeader("Expires", 0);
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8"></meta>
<meta name="viewport" content="width=device-width, initial-scale=1"></meta>
<link href="../css/bootstrap.css" rel="stylesheet" type="text/css"></link>
<link rel="icon" type="image/x-icon" href="../logo/wd.ico"
	media="screen"></link>
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<link href="../css/font-awesome.min.css" rel="stylesheet"
	type="text/css"></link>
<title>电商秒杀平台—收银台</title>
</head>
<body>
	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="page-header text-left">
						<h3>收银台</h3>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="navbar navbar-default navbar-fixed-top">
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
					<li class="active"><a href="#">收银台</a></li>
					<c:if test="${sessionScope.user.u_issell == 1}">
						<li><a href="../item/listStoreItem.do?u_id=${sessionScope.user.u_id}">我的店铺</a></li>
					</c:if>
					<li><a
						href="../cart/listCart.do?u_id=${sessionScope.user.u_id}">购物车<br></a></li>
					<li><a
						href="../order/listOrder.do?u_id=${sessionScope.user.u_id}">我的订单<br></a></li>
					<li><a href="#">欢迎${sessionScope.user.u_name}登录<br></a></li>
				</ul>
			</div>
		</div>
	</div>
	<form action="${formPath}" method="post" name="payForm">
		<!-- 买家id -->
		<input type="hidden" name="buyer_id" value="${sessionScope.user.u_id}"></input>
		<c:forEach items="${list_carts}" var="cart">
			<div class="section" style="padding: 15px 0;">
				<div class="container">
					<div class="row" style="border-bottom: 1px solid #eeeeee;">
						<div class="col-md-2">
							<a href="../item/getItem.do?i_id=${cart.item.i_id}"> <img
								src="../upload/${cart.item.i_img1}" class="img-responsive"></img>
							</a>
						</div>
						<div class="col-md-8">
							<h3 contenteditable="false">${cart.item.i_name}</h3>
						</div>
						<div class="col-md-2">
							<h4>价格：${cart.item.i_price}</h4>
							<h4>邮费：${cart.item.i_postage}</h4>
							<h4>购买件数：${cart.c_count}件</h4>
							<!-- 商品id -->
							<input type="hidden" name="item_id" value="${cart.item.i_id}"></input>
							<!-- 下单数量 -->
							<input type="hidden" name="quantity" value="${cart.c_count}"></input>
							<input type="hidden" name="c_id" value="${cart.c_id}"></input>						
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</form>
	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h3 class="text-right" contenteditable="true">总金额：${amount}</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 text-right">
					<a class="btn btn-primary" href="javascript:document.payForm.submit();">支付</a>
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
						郑斌&nbsp;&nbsp;王倩倩&nbsp;&nbsp;张静娜&nbsp;&nbsp;王泰隆<br></br> <br></br>
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