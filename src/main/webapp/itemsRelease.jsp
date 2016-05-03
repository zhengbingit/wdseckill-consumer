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
<link href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="icon" type="image/x-icon" href="logo/wd.ico" media="screen" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
<title>电商秒杀平台—商品发布</title>
<script type="text/javascript">
	function secKill() {
		if($("#isSecKill").prop("checked")) {
			$("#secKillTime").attr("disabled", false);
		}else {
			$("#secKillTime").attr("disabled", true);
		}
	}
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
					<li class="active"><a href="#">商品发布</a></li>
					<li><a href="#">我的店铺<br></a></li>
					<li><a href="#">购物车<br></a></li>
					<li><a href="#">我的订单<br></a></li>
					<li><a href="#">欢迎XX登录<br></a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="page-header text-left">
						<h3>商品发布</h3>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-12 text-right"></div>
	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-right">
					<form class="form-horizontal text-left" role="form">
						<div class="form-group has-feedback">
							<div class="col-sm-2" style="text-align: right;">
								<label for="inputEmail3" class="control-label">*商品名称：<br></label>
							</div>
							<div class="col-sm-10" style="width: 50%;">
								<input type="text" class="form-control" id="inputEmail3"  onkeyup="value=value.replace(/[^\w\.\/]/ig,'')"
									placeholder="4-20个字母和数字组成">
							</div>
						</div>
						<div class="form-group has-feedback">
							<div class="col-sm-2" style="text-align: right;">
								<label for="inputEmail3" class="control-label">*价格：</label>
							</div>
							<div class="col-sm-10" style="width: 50%;">
								<input type="text" class="form-control" id="inputEmail3" onkeyup="if(isNaN(value))execCommand('undo')" onafterpaste="if(isNaN(value))execCommand('undo')"
									placeholder="最大999999999.99">
							</div>
						</div>
						<div class="form-group has-feedback">
							<div class="col-sm-2" style="text-align: right;">
								<label for="inputEmail3" class="control-label">*邮费：</label>
							</div>
							<div class="col-sm-10" style="width: 50%;">
								<input type="text" class="form-control" id="inputEmail3" onkeyup="if(isNaN(value))execCommand('undo')" onafterpaste="if(isNaN(value))execCommand('undo')"
									placeholder="最大99999.99">
							</div>
						</div>
						<div class="form-group has-feedback">
							<div class="col-sm-2" style="text-align: right;">
								<label for="inputEmail3" class="control-label">*库存：</label>
							</div>
							<div class="col-sm-10" style="width: 50%;">
								<input type="text" class="form-control" id="inputEmail3" onkeyup="if(isNaN(value))execCommand('undo')" onafterpaste="if(isNaN(value))execCommand('undo')"
									placeholder="最大99999">
							</div>
						</div>
					</form>
					<hr>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<h3 contenteditable="true">商品描述：</h3>
					<div class="col-md-12">
						<form class="form-horizontal" role="form">
							<div class="form-group">
								<div class="col-sm-10">
									<textarea class="form-control"></textarea>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<h3>描述图片：</h3>
					<form class="form-horizontal" role="form">
						<div class="form-group">
							<div class="col-sm-10">
								<input type="file">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-10">
								<input type="file">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-10">
								<input type="file">
							</div>
						</div>
					</form>
					<hr>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<form class="form-horizontal text-left" role="form">
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<div class="checkbox">
									<label><input id="isSecKill" type="checkbox" onclick="secKill();">是否秒杀商品</label>
								</div>
							</div>
						</div>
					</form>
					<form class="form-horizontal" role="form">
						<div class="form-group">
							<div class="col-sm-2">
								<label for="inputEmail3" class="control-label">秒杀开始时间：</label>
							</div>
							<div class="col-sm-10" style="width: 50%;">
								<input type="email" class="form-control" id="secKillTime" disabled="disabled"
									placeholder="YYYY-MM-DD HH:mm:ss">
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 text-right">
					<a class="btn btn-primary">回到店铺</a>
				</div>
				<div class="col-md-6">
					<a class="btn btn-primary">完成发布</a>
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