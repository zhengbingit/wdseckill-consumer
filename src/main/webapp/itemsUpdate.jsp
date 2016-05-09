<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
<link rel="icon" type="image/x-icon" href="../logo/wd.ico"
	media="screen" />
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<link href="../css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<title>电商秒杀平台—商品发布</title>
<script type="text/javascript">
	$(function() {
		if ($("#isSecKill").prop("checked")) {
			$("#isSecKill").val(1);
			$("#secKillTime").attr("disabled", false);
		}
	});
	function secKill() {
		if ($("#isSecKill").prop("checked")) {
			$("#isSecKill").val(1);
			$("#secKillTime").attr("disabled", false);
		} else {
			$("#isSecKill").val(0);
			$("#secKillTime").attr("disabled", true);
		}
	}
	function formCheck() {
		$("#itemForm").submit();
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
				<a class="navbar-brand" href="../item/listItem.do"><span>电商秒杀平台</span></a>
			</div>
			<div class="collapse navbar-collapse" id="navbar-ex-collapse">
				<ul class="nav navbar-nav navbar-right">
					<li class="active"><a href="#">商品编辑</a></li>
					<c:if test="${sessionScope.user.u_issell == 1}">
						<li><a href="../item/listStoreItem.do?u_id=${sessionScope.user.u_id}">我的店铺</a></li>
					</c:if>
					<li><a href="../cart/listCart.do?u_id=${sessionScope.user.u_id}">购物车<br></a></li>
					<li><a href="../order/listOrder.do?u_id=${sessionScope.user.u_id}">我的订单<br></a></li>
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
						<h3>商品编辑</h3>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-12 text-right"></div>
	<div class="section">
		<div class="container">
			<form class="form-horizontal text-left" id="itemForm"
				action="../item/updateItem.do" method="post"
				enctype="multipart/form-data">
				<input name="i_id" value="${item.i_id}" type="hidden"></input>
				<input name="u_id" value="${item.u_id}" type="hidden"></input>
				<div class="row">
					<div class="col-md-12 text-right">
						<div class="form-group has-feedback">
							<div class="col-sm-2" style="text-align: right;">
								<label for="inputEmail3" class="control-label">*商品名称：<br></label>
							</div>
							<div class="col-sm-10" style="width: 50%;">
								<input type="text" class="form-control" id="inputEmail3"
									onkeyup="value=value.replace(/[^\w\.\/]/ig,'')" name="i_name"
									value="${item.i_name}" placeholder="4-20个字母和数字组成" ></input>
							</div>
						</div>
						<div class="form-group has-feedback">
							<div class="col-sm-2" style="text-align: right;">
								<label for="inputEmail3" class="control-label">*价格：</label>
							</div>
							<div class="col-sm-10" style="width: 50%;">
								<input type="text" class="form-control" id="inputEmail3"
									onkeyup="if(isNaN(value))execCommand('undo')"
									onafterpaste="if(isNaN(value))execCommand('undo')"
									name="i_price" value="${item.i_price}"
									placeholder="最大999999999.99"></input>
							</div>
						</div>
						<div class="form-group has-feedback">
							<div class="col-sm-2" style="text-align: right;">
								<label for="inputEmail3" class="control-label">*邮费：</label>
							</div>
							<div class="col-sm-10" style="width: 50%;">
								<input type="text" class="form-control" id="inputEmail3"
									onkeyup="if(isNaN(value))execCommand('undo')"
									onafterpaste="if(isNaN(value))execCommand('undo')"
									name="i_postage" value="${item.i_postage}"
									placeholder="最大99999.99"></input>
							</div>
						</div>
						<div class="form-group has-feedback">
							<div class="col-sm-2" style="text-align: right;">
								<label for="inputEmail3" class="control-label">*库存：</label>
							</div>
							<div class="col-sm-10" style="width: 50%;">
								<input type="text" class="form-control" id="inputEmail3"
									onkeyup="if(isNaN(value))execCommand('undo')"
									onafterpaste="if(isNaN(value))execCommand('undo')"
									name="i_stock" value="${item.i_stock}" placeholder="最大99999"></input>
							</div>
						</div>
						<hr></hr>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<h3 contenteditable="false">商品描述：</h3>
						<div class="col-md-12">
							<div class="form-group">
								<div class="col-sm-10">
									<textarea class="form-control" name="i_content">${item.i_content}</textarea>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<h3>描述图片：</h3>
						<div class="form-group">
							<div class="col-sm-10">
								<input type="file" name="files" value="${item.i_img1}"></input>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-10">
								<input type="file" name="files" value="${item.i_img2}"></input>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-10">
								<input type="file" name="files" value="${item.i_img3}"></input>
							</div>
						</div>
						<hr>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<div class="checkbox">
									<label> <input name="i_iskill" id="isSecKill"
										type="checkbox" onclick="secKill();"
										<c:if test="${item.i_iskill == 1}">checked="checked"</c:if>></input>是否秒杀商品
									</label>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-2">
								<label for="inputEmail3" class="control-label">秒杀开始时间：</label>
							</div>
							<div class="col-sm-10" style="width: 50%;">
								<input type="email" class="form-control" id="secKillTime"
									disabled="disabled" name="i_killtime"
									value="<fmt:formatDate value="${item.i_killtime}" pattern="yyyy-MM-dd HH:mm:ss"/>" placeholder="YYYY-MM-DD HH:mm:ss"></input>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6 text-right">
						<a class="btn btn-primary"
							href="../item/listStoreItem.do?u_id=${sessionScope.user.u_id}">回到店铺</a>
					</div>
					<div class="col-md-6">
						<a class="btn btn-primary" onclick="formCheck();">完成编辑</a>
					</div>
				</div>
			</form>
		</div>
	</div>
	<footer class="section section-primary" style="padding: 0px 0;">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<h1>电商秒杀平台</h1>
					<p>
						郑斌&nbsp;&nbsp;王倩倩&nbsp;&nbsp;张静娜&nbsp;&nbsp;王泰隆<br/></br> <br></br>
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
								href="Workspaces/Eclipse-j2EE/wdseckill-consumer/src/main/webapp/logo/logo.png"><i
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