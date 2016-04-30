<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% 
response.setHeader("Cache-Control","no-store"); 
response.setHeader("Pragrma","no-cache"); 
response.setDateHeader("Expires",0); 
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>购物车系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/shoppingCart.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
	function checkall() {
		var checkAll = document.getElementById("checkAll");
		//全选于不选
	}
	var reduce = document.getElementById("reduce");
	var J_IptAmount = document.getElementById("amount");
	var add = document.getElementById("add");
	function add() {
		alert(J_IptAmount);
		//添加一个加一的操作
		//J_IptAmount.value=J_IptAmount.value+1;
	}
	function reduce() {
		alert(J_IptAmount);
		//添加一个加一的操作
		//add.value=add.value-1;
	}
</script>
</head>
<body>
	<div class="div">
		<div class="above">
			<div style="float: left; margin: 20px;">电商秒杀平台</div>
			<div>
				<ul>
					<li><a href="#"> 我的店铺</a></li>
					<li><a href="#"> 购物车</a></li>
					<li><a href="#">我的订单</a></li>
					<li><a href="#"> 欢迎帅哥登录</a></li>
				</ul>
			</div>
		</div>
		<div class="middle-above">购物车</div>
		<div class="middle-middle">
			<input type="checkbox" style="float: left;" value="" id="checkAll">全选
		</div>
		<ul>
			<li>
				<div class="bottom">
					<div class="left-menu">
						<div style="height: 100px; width: 6%; float: left">
							<input type="checkbox" class="check">
						</div>
						<div style="height: 100px; float: left">
							<img style="height: 100%; width: 139px;" alt=""
								src="picture/ss.jpg">
						</div>
						<div style="float: right; height: 100%; width: 50%">
							<ul>
								<li>${item.i_name}</li>
								<li>价格： ${item.i_price}</li>
								<li>邮费：${item.i_postage}</li>
								<li>购买件数：1</li>
								<span> <a href="javascript:void(0);" id="reduce" class=""
									onclick="add()">-</a> <input id="amount" type="text"
									style="width: 20px" value="1" title="请输入购买量"> <a
									href="javascript:void(0); id=" add" onclick="reduce()">+</a>件
								</span>
							</ul>
						</div>
					</div>
					<div style="float: right; width: 500px; height: 100px;">
						<a href="#" style="float: right; padding: 2px 49px;"> 进入小美店铺</a><br>
						<br> <br> <input type="button"
							style="margin: 40px 350px; padding: 2px 40px;" value="购买">
					</div>
				</div>
			</li>
			<li>
				<div class="bottom">
					<div class="left-menu">
						<div style="height: 100px; width: 6%; float: left">
							<input type="checkbox" class="check">
						</div>
						<div style="height: 100px; float: left">
							<img style="height: 100%; width: 139px;" alt=""
								src="picture/ss.jpg">
						</div>
						<div style="float: right; height: 100%; width: 50%">
							<ul>
								<li>这个是商品的标题</li>
								<li>价格： 100.00</li>
								<li>邮费：10.00</li>
								<li>购买件数：10个</li>
							</ul>
						</div>
					</div>
					<div style="float: right; width: 500px; height: 100px;">
						<a href="#" style="float: right; padding: 2px 49px;"> 进入小美店铺</a><br>
						<br> <br> <input type="button"
							style="margin: 40px 350px; padding: 2px 40px;" value="购买">
					</div>
				</div>
			</li>
		</ul>
	</div>
	<div class="button">Prev 2 3 6 5 ... 2241 Next</div>
</body>
</html>