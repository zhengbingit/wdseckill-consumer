<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% 
response.setHeader("Cache-Control","no-store"); 
response.setHeader("Pragrma","no-cache"); 
response.setDateHeader("Expires",0); 
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>商品详情</title>
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
		<div style="height: 50%; width: 100%; border-bottom: 2px solid gray; padding: 60px 0px 26px 23px;">
			<div style="float: left; width: 50%; height: 100%; background: red">
				<img alt="" src="">
			</div>
			<div
				style="float: right; width: 45%; height: 60%; border-bottom: 2px solid gray;">
				<ul>
					<li>${item.i_name}（秒杀）</li>
					<li>价格：${item.i_price}</li>
					<li>邮费：${item.i_postage}</li>
					<li>剩余：${item.i_price}</li>
				</ul>
			</div>
			<div
				style="float: right; width: 45%; height: 45%; ">
				<div style="width: 95%; height: 50px">
					<p style="float: right;  padding:0px 10px 0xp 0xp;">开始时间还有：${item.i_killtime}</p>
				</div>
				<input type="button" name="" value="加入我的购物车"> <input
					type="button" name="" value="购买">
			</div>
		</div>
		<div style="width: 100%;height: 10%;float: left;">
		${item. i_content}
		</div>
    <div>
		<img style="width: 70%;height: 40%;float: left; background: green;  margin: 1px 72px 28px 109px" alt="" src="picture/ss.jpg">
		</div>
	</div>
</body>
</html>