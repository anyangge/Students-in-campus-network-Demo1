<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<meta charset="utf-8">
	<title>商品详情页</title>
	<link rel="stylesheet" href="css/lrtk.css" type="text/css"/>
	<style type="text/css">
		#nav_3{
			color:#3498DB;
		}
		.content{
				margin: 20px auto;
				width: 980px;
				height:550px;
				background:#fff;
				padding-top:25px;
				margin-bottom: 50px;
			}
			.content_left{
				float: left;
				width: 490px;
			}
			.content_left img{
				width: 450px;
				height: 500px;
				padding-left: 20px;
			}
			.content_right{
				float: right;
				width: 480px;
				
			}
			.content_right p:nth-child(1){
				font-size: 20px;
				font-weight: bold;
				height: 60px;
				line-height: 40px;
				padding-left:60px;
			}
			.content_right p:nth-child(2){
				padding-left: 20px;
				height: 40px;
				line-height: 40px;
			}
			.content_right p:nth-child(2) span{
				color: #FF4400;
				font-size: 20px;
			}
			.content_right p:nth-child(3){
				padding-left: 20px;
				height: 40px;
				line-height: 40px;
			}
			.content_right p:nth-child(4){
				padding-left: 20px;
				height: 40px;
				line-height: 40px;
			}
			.content_right p:nth-child(5){
				padding: 20px 20px;
				line-height: 25px;
			}
			.content_right p:nth-child(6){
				padding-left: 20px;
				height: 60px;
				line-height: 60px;
				margin-top: 10px;
			}
			.content_right p:nth-child(6) a{
				text-decoration: none;
			}
			input{
				padding: 10px 70px;
				font-size: 17px;
				border: 0px;
				color: #fff;
				background: #FA5300;
				border-radius: 5px;
			}
			input:hover{
				background: #E37931;
			}
	</style>
</head>
<body>
	<!-- 导入顶部导航栏 -->
 	<%@ include file="header.jsp" %>
 	
 	<%
 		String productid=request.getParameter("send_productid");
		Integer myproductid = Integer.parseInt(productid);
		
	    	List list3 = bbs.findAllProduct();
	    	List list4 = bbs.findAllUser();
			ProductPO ui3 = new ProductPO();
			for (int i=list3.size()-1;i>=0;i--){
			ui3 = (ProductPO) list3.get(i);
			int productid1 = ui3.getProductid();
			String productTitle = ui3.getProductTitle();
			String productContent = ui3.getProductContent();
			String price = ui3.getPrice();
			String photoPath = ui3.getPhotoPath();
			String publishTime = ui3.getPulishTime();
			publishTime = publishTime.substring(0, 16);
			int uid = ui3.getUid();
			UserPO ui2 = new UserPO();
				for(int j=list4.size()-1;j>=0;j--){
				ui2 = (UserPO) list4.get(j);
				int id = ui2.getId();
				String username = ui2.getUsername();
			if(id==uid){
			
	        if(productid1==myproductid){
	%>
	<div class="content">
			<div class="content_left">
				<img src="<%=photoPath%>" />
			</div>
			<div class="content_right">
				<p><%=productTitle %></p>
				<p>转  卖  价：<span>¥<%=price %></span></p>
				<p>发布者：<%=username %></p>
				<p>发布时间：<%=publishTime %> </p>
				<p>详情描述：<br/><%=productContent %></p>
				<p><a href="#" ><input type="button" value="我 要 购 买" /></a></p>
			</div>
		</div>
		<%}} }}%>
			<!-- 导入底部 -->
 	<%@ include file="bottom.jsp" %>
 	
</body>
</html>