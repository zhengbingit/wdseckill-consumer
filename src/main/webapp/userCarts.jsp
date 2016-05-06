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
<link href="../css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="icon" type="image/x-icon" href="../logo/wd.ico" media="screen" />
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css">
<title>电商秒杀平台—购物车</title>
<script type="text/javascript">
	function checkAll() {
		if ($("#checkAllButton").prop("checked")) {
			$(".checkBoxs").each(function() {
				$(this).prop("checked", true);
			});
		} else {
			$(".checkBoxs").each(function() {
				$(this).prop("checked", false);
			});
		}
	}
	$(function() {
		$(".checkBoxs").change(function() {
			if (!$(this).prop("checked")) {
				$("#checkAllButton").prop("checked", false);
			}
			var a = 0;
			var b = 0;
			$(".checkBoxs").each(function() {
				a++;
				if ($(this).prop("checked")) {
					b++;
				}
			});
			if (a == b) {
				$("#checkAllButton").prop("checked", true);
			}
		});
	});
</script>
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
					<li class="active"><a href="#">购物车</a></li>
					<li><a
						href="../item/listStoreItem.do?u_id=${sessionScope.user.u_id}">我的店铺<br></a></li>
					<li><a
						href="../order/listOrder.do?u_id=${sessionScope.user.u_id}">我的订单<br></a></li>
					<li><a href="#">欢迎${sessionScope.user.u_name}登录<br></a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="section" style="padding: 12px 0">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="page-header text-left" style="margin: 50px 0 20px;">
						<h3>购物车</h3>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12" style="width: 17%;">
					<form class="form-horizontal" role="form">
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10" style="margin-left: 1.6%;">
								<div class="checkbox">
									<label><input id="checkAllButton" type="checkbox"
										onclick="checkAll();">全选&nbsp;</label>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<c:forEach items="${list_carts}" var="cart">
		<div style="padding: 10px 0;">
			<div class="container">
				<div class="row" style="border-bottom: 1px solid #eeeeee;">
					<div class="col-md-1" style="width: 1.3%;">
						<form class="form-horizontal" role="form">
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<div class="checkbox">
										<label><input type="checkbox" class="checkBoxs"></label>
									</div>
								</div>
							</div>
						</form>
					</div>
					<div class="col-md-3" style="width: 20%;">
						<img src="picture/exp1.jpeg" class="img-responsive">
					</div>
					<div class="col-md-5">
						<h5 contenteditable="false">${cart.item.i_name}</h5>
						<h5>价格：${cart.item.i_price}</h5>
						<h5>邮费：${cart.item.i_postage}</h5>
						<h5>购买件数：${cart.c_count}件</h5>
					</div>
					<div class="col-md-3 text-right" style="width: 35%;">
						<a class="text-primary text-right" href="../item/listStoreItem.do?u_id=${cart.item.user.u_id}">进入${cart.item.user.u_store}店铺</a>
						<h3 class="text-right"></h3>
						<h5 class="text-right">销量：${cart.item.i_sales}件</h5>
						<a class="btn btn-info btn-sm">购买</a>
					</div>
				</div>
			</div>
		</div>
	</c:forEach>
	<div style="padding: 10px 0;">
		<div class="container">
			<div class="row" style="border-bottom: 1px solid #eeeeee;">
				<div class="col-md-1" style="width: 1.3%;">
					<form class="form-horizontal" role="form">
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<div class="checkbox">
									<label><input type="checkbox" class="checkBoxs"></label>
								</div>
							</div>
						</div>
					</form>
				</div>
				<div class="col-md-3" style="width: 20%;">
					<img src="picture/exp1.jpeg" class="img-responsive">
				</div>
				<div class="col-md-5">
					<h5 contenteditable="false">这里是商品的标题</h5>
					<h5>价格：100.00</h5>
					<h5>邮费：10.00</h5>
					<h5>购买件数：10件</h5>
				</div>
				<div class="col-md-3 text-right" style="width: 35%;">
					<h5 class="text-primary text-right">进入XX店铺</h5>
					<h3 class="text-right"></h3>
					<h5 class="text-right">销量：10件</h5>
					<a class="btn btn-info btn-sm">购买</a>
				</div>
			</div>
		</div>
	</div>
	<div style="padding: 10px 0;">
		<div class="container">
			<div class="row" style="border-bottom: 1px solid #eeeeee;">
				<div class="col-md-1" style="width: 1.3%;">
					<form class="form-horizontal" role="form">
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<div class="checkbox">
									<label><input type="checkbox" class="checkBoxs"></label>
								</div>
							</div>
						</div>
					</form>
				</div>
				<div class="col-md-3" style="width: 20%;">
					<img src="picture/exp1.jpeg" class="img-responsive">
				</div>
				<div class="col-md-5">
					<h5 contenteditable="false">这里是商品的标题</h5>
					<h5>价格：100.00</h5>
					<h5>邮费：10.00</h5>
					<h5>购买件数：10件</h5>
				</div>
				<div class="col-md-3 text-right" style="width: 35%;">
					<h5 class="text-primary text-right">进入XX店铺</h5>
					<h3 class="text-right"></h3>
					<h5 class="text-right">销量：10件</h5>
					<a class="btn btn-info btn-sm">购买</a>
				</div>
			</div>
		</div>
	</div>
	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-right">
					<a class="btn btn-primary">一起购买</a>
				</div>
			</div>
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