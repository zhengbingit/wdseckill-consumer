<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<<<<<<< HEAD
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns="http://www.w3.org/1999/xhtml">
=======
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
>>>>>>> 7dcbf46bf926e74e937f4402572f93f63274ad28
<head>
<title>登录界面</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
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
<<<<<<< HEAD
		<c:forEach items="${list_items}" var="item">
=======
			<c:forEach items="${itemList}" var="items">

				<li>
					<div class="bottom">
						<div class="left-menu">
							<div style="height: 100px; width: 50%; float: left">
								<img style="height: 100%; width: 139px; padding: 2px 0 0 21px;"
									alt="" src="picture/ss.jpg">
							</div>
							<div style="float: right; height: 100%; width: 50%">
								<ul>
									<li>${items.i_name}</li>
									<li>价格：${items.i_sales}</li>
									<li>邮费：${items. i_postage}</li>
									<li>剩余件数：${items.i_stock}个</li>
								</ul>
							</div>
						</div>
						<div style="float: right; width: 500px; height: 100px;">
							<a href="#" style="float: right; padding: 2px 49px;"> 编辑商品</a><br>
							<br> <a href="#" style="float: right; padding: 2px 49px;">
								删除商品</a> <br> <br>
							<p style="float: right; padding: 2px 49px;">销售量：${items.i_sales}</p>
						</div>
					</div>
				</li>
			</c:forEach>

>>>>>>> 7dcbf46bf926e74e937f4402572f93f63274ad28
			<li>
				<div class="bottom">
					<div class="left-menu">
						<div style="height: 100px; width: 50%; float: left">
							<img style="height: 100%; width: 139px; padding: 2px 0 0 21px;"
								alt="" src="picture/ss.jpg">
						</div>
						<div style="float: right; height: 100%; width: 50%">
							<ul>
<<<<<<< HEAD
								<li>${item.i_name}</li>
								<li>价格： ${item.i_price}</li>
								<li>邮费：${item.i_postage}</li>
								<li>剩余件数：${item.i_stock}个</li>
=======
								<li>这个是商品的标题</li>
								<li>价格： 100.00</li>
								<li>邮费：10.00</li>
								<li>剩余件数：10个</li>
>>>>>>> 7dcbf46bf926e74e937f4402572f93f63274ad28
							</ul>
						</div>
					</div>
					<div style="float: right; width: 500px; height: 100px;">
						<a href="#" style="float: right; padding: 2px 49px;"> 编辑商品</a><br>
						<br> <a href="#" style="float: right; padding: 2px 49px;">
<<<<<<< HEAD
							删除商品</a> <br>
						<br>
						<p style="float: right; padding: 2px 49px;">销售量：${item.i_sales}个</p>
					</div>
				</div>
			</li>
		</c:forEach>
=======
							删除商品</a> <br> <br>
						<p style="float: right; padding: 2px 49px;">销售量：10个</p>
					</div>
				</div>
			</li>

>>>>>>> 7dcbf46bf926e74e937f4402572f93f63274ad28
		</ul>
		<div class="button">Prev 2 3 6 5 ... 2241 Next</div>
	</div>
</body>
</html>
