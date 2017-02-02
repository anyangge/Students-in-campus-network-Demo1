<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="Student_bbs_PO.*" %>
<%@ page import="java.util.List"%>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" href="css/lrtk.css" type="text/css"/>
	<style type="text/css">
		#nav_2{
			color:#3498DB;
		}
		.content{
			margin:20px auto;
			width:1180px;
		}
		.Post{
			margin: 0 auto;
			width:980px;
			background: #fff;
			border-radius:5px ;
			margin-bottom: 30px;
			padding:20px 0;
		}
		.post_title{
			padding:10px;font-size:26px;font-weight: bold;text-align: center;
		}
		.post_user_time{
			padding:10px;font-size:14px;text-align: center;
		}
		.post_content{
			padding:10px;font-size:18px;
		}
		.show_rep{
			width:960px;background: #fff;margin: 0 auto;font-size: 22px;
			padding:10px;color:#214E89;border-bottom:1px dashed #ccc;clear:both;
		}
		.Reply{
			width: 580px;
			height:40px;
			margin: 30px auto;
			text-align: center;
			padding-left:400px;
		}
		.btn1,.btn2{
			background:#A53424;
			color:#fff;
			float:left;
			font-size:14px;
			padding:10px 15px;
			text-decoration: none;
			margin-bottom: 45px;
			margin-left:10px;
		}
		.btn2{
			background: #ccc;
		}
		.btn1:hover,.btn2:hover{
			background: #ccc;
		}
		.all_reply{
			margin-bottom: 50px;
		}
		.every_reply_news{
			margin-left:30px;width:980px;background: #fff;border-bottom:1px dashed #ccc;
			margin-bottom:10px;margin: 0 auto;
		}
		.rep_photo{
			padding-left:10px;
			float:left;display: block;width:90px;height: 120px;
		}
		.rep_photo img{
			width:80px;height: 80px;margin-top: 5px;
		}
		.rep_name{
			padding:10px;margin-left: 100px;color:#6378B5;
		}
		.rep_content{
			padding:10px;margin-left: 100px;color:#454545;
		}
		.rep_time{
			padding:10px;margin-left: 82%;color:#999999;font-size:14px;
		}
		.news{
			width:980px;background: #fff;height: 100px;margin: 0 auto;
			text-align: center;
		}
		.news p{
			line-height: 100px;
		}
	</style>
<title>帖子详情页</title>
</head>
<body>	
	<!-- 导入顶部导航栏 -->
 	<%@ include file="header.jsp" %>
 	
 		<div class="content">
		<%
		
		String postid=request.getParameter("send_postid");
		Integer mypostid = Integer.parseInt(postid);
		
			List list1 = bbs.findAllPost();
			List list2 = bbs.findAllReply();
			List list3 = bbs.findAllUser();
			List list4 = bbs.findAllUser();
		    PostPO ui1 = new PostPO();
			for (int i=list1.size()-1;i>=0;i--){
	      	ui1 = (PostPO) list1.get(i);
			String title = ui1.getTitle();
			String content = ui1.getContent();
			String publishTime = ui1.getPublishTime();
			int uid = ui1.getUid();
	        publishTime = publishTime.substring(0, 19);
	        
				UserPO ui3 = new UserPO();
				for(int z=list3.size()-1;z>=0;z--){
				ui3 = (UserPO) list3.get(z);
				int id = ui3.getId();
				String username = ui3.getUsername();
			if(id==uid){
	        
	        if(ui1.getPostid()==mypostid){
	        %>
	        <div class="Post">
	        	<div class="post_title"><%=title %></div>
	        	<div class="post_user_time">楼主：<%=username%>&nbsp;&nbsp;&nbsp;发表时间：<%=publishTime %></div>
	        	<div class="post_content">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=content %></div>
	        </div>
	        <div class="Reply">
 				<a href="reply.jsp?send_postid=<%=mypostid%>" class="btn1">评论</a>
 				<a href="showpost.jsp" class="btn2">返回</a>
 			</div>
	        <div class="show_rep">
	        	<p>最新评论</p>
	        </div>
	       <%
	        List list5 = bbs.queryReply(mypostid );
			if(list5.size()==0){%>
	        		<div class="news">
	        			<p>还没有评论，快去抢沙发！</p>
	        		</div>
	        		<%
	        	}
	         %>
	        <div class="all_reply">
	        <%
	        ReplyPO ui2 = new ReplyPO();
	    	for (int j=list2.size()-1;j>=0;j--){
	      	ui2 = (ReplyPO) list2.get(j);
	      	int replyid = ui2.getReplyid();
	      	String content1 = ui2.getContent();
	      	int uid1 = ui2.getUid();
	      	int pid = ui2.getPid();
	      	String publishTime1 = ui2.getPublishTime();
	        publishTime1 = publishTime1.substring(0, 19);
	        
	        UserPO ui4 = new UserPO();
				for(int e=list3.size()-1;e>=0;e--){
				ui4 = (UserPO) list3.get(e);
				int id1 = ui4.getId();
				String username1 = ui4.getUsername();
			if(id1==uid1){
	        
	             if(ui2.getPid()==ui1.getPostid()){
	      %>
	    <div class="every_reply_news">
  			<div class="rep_photo"><img src="images/user.png"/></div>
  			<div class="rep_name"> <%=username1%></div>
  			<div class="rep_content"><%=content1 %></div>
  			<div class="rep_time"><%=publishTime %></div>
  		</div>
	      <%  
	        }}}}}}}
			}	 
 		%></div>
 		</div>
</body>
</html>