<%@page import="com.sun.xml.internal.txw2.Document"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Student_bbs_PO.*" %>
<%@ page import="java.util.List"%>
<html>
<head>
	<meta charset="utf-8">
	<title>闲鱼市场</title>
	<link rel="stylesheet" href="css/lrtk.css" type="text/css"/>
	<style type="text/css">
#nav_3 {
	color: #3498DB;
}

.search {
	margin: 20px auto;
	width: 1060px;
	height: 60px;
}

.search_left {
	float: left;
	width: 300px;
	height: 60px;
}

.search_left a {
	text-decoration: none;
	line-height: 60px;
	color: #fff;
	background: #8FBFDC;
	padding: 10px 30px;
	border-radius: 18px;
}

.search_left a:hover {
	background: #3498DB;
}

.search_right {
	float: right;
	width: 500px;
	height: 60px;
	text-align: center;
}

.search_right {
	width: 410px;
	height: 35px;
	line-height: 60px;
	border: 1px solid #8FBFDC;
	margin-top: 12px;
	float: right;
}

#search {
	width: 310px;
	height: 35px;
	float: left;
	font-size: 14px;
	border: 0;
	padding-left: 10px;
	outline: none;
	color: #757575;
}

#btn {
	width: 100px;
	height: 35px;
	border: 0px;
	background-color: #8FBFDC;
	color: #ffffff;
	font-size: 14px;
	float: right;
}

#btn:hover {
	background-color: #3498DB;
}

.all_product {
	margin: 0 auto;
	width: 1060px;
	border-bottom: 1px solid #ccc;
}

.content {
	margin: 0 auto;
	width: 1080px;
}

.mycontent {
	width: 248px;
	height: 350px;
	border: 1px solid #D9D9D9;
	float: left;
	margin: 10px;
}

.mycontent:hover {
	border: 1px solid #F85300;
}

.pic {
	width: 248px;
	height: 250px;;
}

.pic img {
	width: 248px;
	height: 250px;
}

.info {
	width: 248px;
	height: 98px;
}

.info_p:nth-child(1) {
	width: 238px;
	height: 38px;
	line-height: 38px;
	padding-left: 10px;
	font-size: 18px;
	color: #FF4400;
}

.info_p:nth-child(2) {
	display: inline-block;
	width: 238px;
	height: 30px;
	padding-left: 10px;
	line-height: 30px;
	text-decoration: none;
	font-size: 14px;
	color: #000;
}

.info_p:nth-child(3) {
	width: 238px;
	height: 30px;
	line-height: 30px;
	padding-left: 10px;
	font-size: 12px;
	color: #888888;
}

#mail {
	margin-left: 5px;
	background: #F85300;
	color: #fff;
	font-size: 15px;
}

#pb_time {
	float: right;
	padding-right: 10px;
}
</style>
</head>
<body>
	<!-- 导入顶部导航栏 -->
 	<%@ include file="header.jsp" %>
 	<div class="search">
		<div class="search_left">
			<a href="send_product.jsp">发布我的闲置</a>
		</div>
	<div class="search_right">
		<s:form action="findAction" method="post">
		<div>
			<s:textfield name="productTitle" placeholder="输入要搜索的商品" id="search" />
			<input type="submit" id="btn" value="查询"> 
		</div>
		</s:form>
	</div>
	</div>
	<div class="all_product">
		<%
		String title =(String)session.getAttribute("title"); 
		List list3 = bbs.findProduct("productTitle","%"+title+"%");
		int size = list3.size();
		 %>
		<span>搜索到&nbsp;<%=size%>&nbsp;条记录</span>
	</div>
	<div class="content">
		<%
			List list4 = bbs.findAllUser();
			ProductPO ui3 = new ProductPO();
			for (int i=list3.size()-1;i>=0;i--){
			ui3 = (ProductPO) list3.get(i);
			int productid = ui3.getProductid();
			String productTitle = ui3.getProductTitle();
			String productContent = ui3.getProductContent();
			String price = ui3.getPrice();
			String photoPath = ui3.getPhotoPath();
			String publishTime = ui3.getPulishTime();
			publishTime = publishTime.substring(0, 19);
			int uid = ui3.getUid();
			
			UserPO ui2 = new UserPO();
				for(int j=list4.size()-1;j>=0;j--){
				ui2 = (UserPO) list4.get(j);
				int id = ui2.getId();
				String username = ui2.getUsername();
			if(id==uid){
	%>
		<div class="mycontent" >
				<div class="pic">
					<a href="show_product.jsp?send_productid=<%=productid %>" target="_blank"><img src="<%=photoPath %>"/></a>
				</div>
				<div class="info">
						<p class="info_p">¥<strong> <%=price %></strong><a href="#" id="mail">包邮</a></p>
						<a href="show_product.jsp?send_productid=<%=productid %>" class="info_p" ><%=productTitle %></a>
						<p class="info_p">发布者：<%=username %><span id="pb_time"><%=publishTime %></span></p>
				</div>
			</div>
	<%
	        }}}
	        %>
	</div>
	<!-- 导入底部 -->
 	<%@ include file="bottom.jsp" %>
</body>
</html>