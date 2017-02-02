<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Student_bbs_PO.*" %>
<%@ page import="java.util.List"%>
<html>
<head>
	<meta charset="utf-8">
	<title>论坛社区</title>
	<link rel="stylesheet" href="css/lrtk.css" type="text/css"/>
	<style type="text/css">
		#nav_2{
			color:#3498DB;
		}
		.content{
			margin:30 auto;
			width:1100px;
		}
		.send_post{
			float:right;
			position: fixed;
			top:105px;
			left:1180px;
		}
		.send_post span a{
			text-decoration:none;
			font-weight:bold;
			color:#963021;
			padding:10px;
			padding-left:32px;
			background:url("images/send_post.png") 0 3px no-repeat;
		}
		.send_post span a:hover{
			background:url("images/send_post1.png") 0 3px no-repeat;
			color:#3498DB;
		}
		.post{
			margin:0 auto;
			border-radius:10px 10px 0px 0px;
			width:980px;
			height:50px;
			color:#fff;
			background:#963021;
		}
		.post span{
			background:url("images/post.png") 15px 8px  no-repeat;
			width:150px;
			float:left;
			line-height:50px;
			padding-left:57px;
		}
		table{
			margin:0px auto;
			width:980px;
			background:#FFFFFF;
			border:1px solid red;
			border-color:#963021;
		}
		table tr,td{
			border:1px solid red;
			border-color:#963021;	
		}
		.tab_tr a{
			color:#000;
			text-decoration: none;
		}
		.tab_tr a:hover{
			color:#963021;
			text-decoration: underline;
		}
		.tab_tr:hover{
			background: #f8f8f8;
		}
		.tab_tr .tv1{
			margin-left:10px;
			padding-left:40px;
			background:url("images/every.png") 0 -6px no-repeat;
			}
		.tv1{
			font-size:15px;
			padding-left:20px;
		}
		.tv2{
			font-size:12px;
			color:#000;
		}
	</style>
</head>
<body>
	<!-- 导入顶部导航栏 -->
 	<%@ include file="header.jsp" %>
 	
 	<!-- 所有帖子展示区 -->
 	<div class="content">
 		<!-- 选择发帖 -->
 		<div class="send_post">
 			<span><a href="post.jsp">发帖</a></span>
 		</div>
 		<!-- 帖子顶部区域 -->
 		<div class="post">
 			<span>所有帖子</span>
 	    </div>	
 	    <table>
 			<tr>
 				<td><span class="tv1">话题</span></td>
 				<td align="center"><span class="tv2">发布者 / 发布时间</span></td>
 			</tr>
 		<%
			List list1 = bbs.findAllPost();
			List list2 = bbs.findAllUser();
			PostPO ui = new PostPO();
			for (int i=list1.size()-1;i>=0;i--){
			ui = (PostPO) list1.get(i);
			int postid = ui.getPostid();
			String title = ui.getTitle();
			String publishTime = ui.getPublishTime();
			publishTime = publishTime.substring(0, 19);
			int uid = ui.getUid();
				
				UserPO ui2 = new UserPO();
				for(int j=list2.size()-1;j>=0;j--){
				ui2 = (UserPO) list2.get(j);
				int id = ui2.getId();
				String username = ui2.getUsername();
			if(id==uid){
	
	        %>
	        <tr class="tab_tr">
 					<td><span class="tv1"><a href="show_post.jsp?send_postid=<%=postid %>"><%=title %></a></span></td>
 					<td align="center"><span class="tv2"><%=username %><br><%=publishTime %></span></td>
	        <%
			}}}      
 		%>
 		</table>
 	</div>
 	<!-- 导入底部 -->
 	<%@ include file="bottom.jsp" %>
</body>
</html>