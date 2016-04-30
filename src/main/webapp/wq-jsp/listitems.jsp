<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% 
response.setHeader("Cache-Control","no-store"); 
response.setHeader("Pragrma","no-cache"); 
response.setDateHeader("Expires",0); 
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>登录界面</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/shoppingCart.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div class="div">
		<div class="above">
			<div style="float: left; margin: 20px;">秒杀平台</div>
			<div>
				<ul>
					<li><a href="#"> 我的店铺</a></li>
					<li><a href="shopingCart.jsp"> 购物车</a></li>
					<li><a href="#">我的订单</a></li>
					<li><a href="#"> 欢迎帅哥登录</a></li>
				</ul>
			</div>
		</div>
		<div class="middle-above">帅哥店铺</div>
		<div class="middle-middle">
			<input type="button" style="float: right;" value="发布新商品">
		</div>
		<ul>
		<c:forEach items="${list_items}" var="item">
			<li>
				<div class="bottom">
					<div class="left-menu">
						<div style="height: 100px; width: 50%; float: left">
							<img style="height: 100%; width: 139px; padding: 2px 0 0 21px;"
								alt="" src="picture/ss.jpg">
						</div>
						<div style="float: right; height: 100%; width: 50%">
							<ul>
								<li>${item.i_name}</li>
								<li>价格： ${item.i_price}</li>
								<li>邮费：${item.i_postage}</li>
								<li>剩余件数：${item.i_stock}个</li>
							</ul>
						</div>
					</div>
					<div style="float: right; width: 500px; height: 100px;">
						<a href="#" style="float: right; padding: 2px 49px;"> 编辑商品</a><br>
						<br> <a href="#" style="float: right; padding: 2px 49px;">
							删除商品</a> <br>
						<br>
						<p style="float: right; padding: 2px 49px;">销售量：${item.i_sales}个</p>
					</div>
				</div>
			</li>
		</c:forEach>
		</ul>
		<div class="button">Prev 2 3 6 5 ... 2241 Next</div>
	</div>
</body>
</html>
