<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% 
response.setHeader("Cache-Control","no-store"); 
response.setHeader("Pragrma","no-cache"); 
response.setDateHeader("Expires",0); 
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>支付界面</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/shoppingCart.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="div">
		<div class="above">
			<div style="float: left; margin: 20px;">电商秒杀平台</div>
			<div>
				<ul>
					<li><a href="shopingCart.jsp"> 购物车</a></li>
					<li><a href="payforItems.jsp">我的订单</a></li>
					<li><a href="#"> 欢迎帅哥登录</a></li>
				</ul>
			</div>
		</div>
		<div class="middle-above">收银台</div>
		<div class="middle-middle">
		</div>
		<ul>
			<li>
				<div class="bottom">
					<div class="left-menu">
						<div style="height: 100px; width: 6%; float: left">
							<input type="checkbox">
						</div>
						<div style="height: 100px; float: left">
							<img style="height: 100%; width: 139px;" alt=""
								src="picture/ss.jpg">
						</div>
						<div style="float: right; height: 100%; width: 50%">
							<ul>
								<li>${orders.i_name }</li>
							</ul>
						</div>
					</div>
					<div class="item-infor-right">
						<p class="below"> 价格：${orders.i_price }</p><br>
						 <br> 
						<p class="below"> 邮费： ${orders.i_postage }</p><br><br>
							<p class="below"> 购买件数： ${orders.o_count }</p>
					</div>
				</div>
			</li>
			<li>
				<div class="bottom">
					<div class="left-menu">
						<div style="height: 100px; width: 6%; float: left">
							<input type="checkbox">
						</div>
						<div style="height: 100px; float: left">
							<img style="height: 100%; width: 139px;" alt=""
								src="picture/ss.jpg">
						</div>
						<div style="float: right; height: 100%; width: 50%">
							<ul>
								<li>这个是商品的标题</li>
							</ul>
						</div>
					</div>
					<div class="item-infor-right">
						<a href="#"   class="below"> 价格：100.00</a><br>
						 <br> 
						 邮费：<input type="text"
							class="below" value="10.00"><br><br>
							购买件数：<input type="text"
							class="below" value="10件">
					</div>
				</div>
			</li>
		</ul>
		<div class="blow">
		总金额是：${orders.o_total}<br>
		<input type="button" value="支付">
		</div>
	</div>
</body>
</html>