<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<title>发布新帖 | 学生校园网</title>
<link rel="stylesheet" href="css/lrtk.css" type="text/css"/>
<style type="text/css">
		#nav_2{
			color:#3498DB;
		}
		.post{
			margin:20px auto;
			width:700px;
			height: 450px;
		}
		.main_post{
			margin:0px auto;
			width:700px;
			height:50px;
		}
		.main_post span{
			font-size:22px;
			font-weight:bold;
			color:#A53424;
			line-height: 50px;
			padding:10px;
			padding-left:34px;
			background:url("images/send_post.png") 0 8px no-repeat;
		}
		table{
			margin:0px auto;
			width:700px;
			text-align:center;
		}
		.title{
			padding-left:10px;
			width:615px;
			height:30px;
		}
		.content{
			padding:10px;
			font-size:16px;
			margin-top:20px;
		}
		.btn1,.btn2{
			height:45px;
			width:60px;
			background:#A53424;
			border:0px;color:#fff;
			font-size:14px;
			margin-top:10px;
		}
		a{
			text-decoration: none;
		}
		.btn2{
			background:#959595;
		}
		.btn1:hover,.btn2:hover{
			background:#D3442F;
		}
</style>
</head>
<body>
	<!-- 导入顶部导航栏 -->
 	<%@ include file="header.jsp" %>
 	
 	<div class="post">
 	
		<div class="main_post">
 			<span>发表新帖</span>
 		</div>
		<s:form action="postAction" method="post">
			<table border="0" align="center">
			<tr>
				<s:textfield name="title" label="标题**" placeholder="请输入主题..." size="18" class="title"/>
			</tr>
			<tr>
				<s:textarea name="content" label="帖子内容" placeholder="请输入内容..." cols="79" rows="10" size="18" class="content"/>
			</tr>
			<tr colspan="2">
				<td>&nbsp;</td>
				<td>
					<input type="submit" value="发 出" class="btn1">
					<a href="showpost.jsp"><input type="button" value="返 回" class="btn2"></a>
				</td>
			</tr>
		</table>
	 </s:form>
	</div>
	<!-- 导入底部 -->
 	<%@ include file="bottom.jsp" %>
</body>
</html>