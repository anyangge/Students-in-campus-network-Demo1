<%@page import="Student_bbs_Dao.StudentBBS_Dao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="java.util.List"%>
<%@ page import="Student_bbs_PO.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="favicon.ico" rel="shortcut icon"/>
	<link rel="stylesheet" href="css/header.css" type="text/css"/>
</head>
<body>
<div class="header">
			<div class="myheader">
				<div class="logo"><img src="images/logo.png" /></div>
				<div class="nav">
					<ul>
						<li><a href="mainpage.jsp" id="nav_1">首页</a></li>
						<li><a href="showpost.jsp" id="nav_2">论坛社区</a></li>
						<li><a href="showproduct.jsp" id="nav_3">闲鱼市场</a></li>
					</ul>
				</div>
			<div class="login_register">
				<%
					StudentBBS_Dao bbs = new StudentBBS_Dao();
					String user =(String)session.getAttribute("username");
					if(user!=null){%>
				 <p class="myspan"><%=user %><a class="exit" href="login.jsp"></a></p> 
				<% }else{%>
						<ul>
						<li><a href="login.jsp" class="login">登 录</a></li>
						<li><a href="register.jsp" style="background: #3498DB;color: #fff;" >注 册</a></li>
					</ul>
					<%}%>
			</div>
				
			</div>
		</div>
</body>
</html>