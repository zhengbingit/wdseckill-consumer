<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<html>

<head>
<link href="css/secKill.css" rel="stylesheet" type="text/css" />
<title>商品发布界面</title>


</head>
<body>



	<div class="div">
		<div class="above">
			<div style="float: left; margin: 20px;">秒杀平台</div>
			<div>
				<ul>

					<li><a href="index.jsp"> 登录</a></li>
					<li><a href="#"> 注册</a></li>

				</ul>
			</div>




		</div>


		<div class="middle">商品发布</div>

		<div class="bottom">

			<table>

				<tr>

					<td>商品名称：</td>
					<td><input type="text" name="name" class="name" id="name"
						value=""><strong style="color: red">*</strong>
					<div id="error-name" class="error-info">输入的不合法</div></td>

				</tr>
				<tr>

					<td>价格：</td>
					<td><input type="password" name="pwd" class="pwd" id="pwd"
						value=""> <strong style="color: red">*</strong>
					<div id="error-pwd" class="error-info">输入的不合法</div></td>

				</tr>
				<tr>

					<td>邮费：</td>
					<td><input type="password" name="confirmPwd" id="confirmPwd"
						value=""> <strong style="color: red">*</strong>
					<div id="error-confirm" class="error-info">两次输入的密码不相同</div></td>
				</tr>

				<tr>

					<td>库存：</td>
					<td><input type="password" name="confirmPwd" id="confirmPwd"
						value=""> <strong style="color: red">*</strong>
					<div id="error-confirm" class="error-info">两次输入的密码不相同</div></td>
				</tr>
			</table>


		</div>


		<div class="bottom"
			style="border-top: 2px solid grey; border-bottom: 2px solid grey; padding: 11px 0 13px 249px;">
			商品描述：<br>
			<textarea rows="10" cols="60" placeholder="最多输入2000汉字">
			
			
			</textarea><br>
			<p style="float:left;">描述图片：<p>
			<table>
			
			<tr><td><input type="file"></td></tr>
			<tr><td><input type="file"></td></tr>
			<tr><td><input type="file"></td></tr>
			</table>
			



		</div>
		<div style="height: 30px; float: left;">

			<div style="width: 100%;">
				<input type="checkbox"> 是否秒杀商品<br>
				<br> 秒杀开始时间：<input type="text" style="width: 200px"><br>
				<br>
				<br>
			</div>
			<div style="padding: 0 30px 50px 380px;">

				<input type="button" name="" value="返回店铺"> <input
					type="button" name="" onclick="toValidate()" value="完成发布">
			</div>
		</div>
	</div>




</body>
</html>
