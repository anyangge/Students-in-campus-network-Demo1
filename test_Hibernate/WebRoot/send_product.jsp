<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<title>商品发布</title>
<link rel="stylesheet" href="css/lrtk.css" type="text/css"/>
<style type="text/css">
		#nav_3{
			color:#3498DB;
		}
		.main_post{
			width:760px;
			margin:0px auto;
			height:35px;
			line-height:35px;
			margin-top: 20px;
		}
		.main_post span{
			font-size:22px;
			font-weight:bold;
			background: url(images/sale.png) no-repeat;
			padding-left: 35px;
			color:#963021;
		} 
		table{
			margin:0px auto;width:760px;text-align:center;
		}
		.title{
			width:695px;height:30px;margin-bottom: 5px;padding-left:5px;
		}
		.content{
			padding:5px;
			font-size:15px;
			width: 690px;
			height:150px;
		}
		.btn1{
			height:45px;width:60px;background:#A53424;border:0px;color:#fff;
			font-size:14px;margin-top:10px;
		}
		a{
			text-decoration: none;
		}
		.btn1:hover,.btn2:hover{
			background:#D3442F;
		}
</style>
</head>
<body>
	<!-- 导入顶部导航栏 -->
 	<%@ include file="header.jsp" %>
 	
	<div class="main_post">
 				<span>发布商品</span>
 	</div>
	<s:form action="productAction" method ="POST" enctype ="multipart/form-data">
		<table>
			<tr>
					<s:textfield name="title" label="商品名称" placeholder="输入商品名称" class="title"/>
			</tr>
			<tr>
					<s:file name ="upload" label ="相关图片"  class="title"/><br>
			</tr>
			<tr>
					<s:textfield name="price" label="转卖价格" placeholder="输入要拍卖的价格" size="18" class="title" />
			</tr>
			<tr>
					<s:textarea name="content" label="详情描述" placeholder="输入商品详情介绍..." class="content"/>
			</tr>
			<tr colspan="2">
				<td>&nbsp;</td>
				<td>
					<input type="submit" value="发布" class="btn1">
				</td>
			</tr>
		</table>
	</s:form>
	
</body>
</html>