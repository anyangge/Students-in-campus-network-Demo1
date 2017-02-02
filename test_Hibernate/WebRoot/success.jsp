<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Student_bbs_Dao.StudentBBS_Dao"%>
<%@ page import="Student_bbs_PO.*" %>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录成功</title>
</head>
<body>
	 
<%-- <%
		StudentBBS_Dao info = new StudentBBS_Dao();
			List list = info.findAllUser();
			UserPO ui = new UserPO();
			for(int i=0;i<list.size();i++){
			ui = (UserPO) list.get(i);
			int userid = ui.getId();
			String username = ui.getUsername();
			String password = ui.getPassword();
	%>
			<p>用户id:<%=userid %></p>
			<p>用户名:<%=username %></p>
			<p>用户密码:<%=password %></p>
			<hr>
			<%
			}
	 %>
	 
	 <%
		StudentBBS_Dao info1 = new StudentBBS_Dao();
			List list1 = info.findAllPost();
			PostPO ui1 = new PostPO();
			for (int i=list1.size()-1;i>=0;i--){
			ui1 = (PostPO) list1.get(i);
			int postid = ui1.getPostid();
			String title = ui1.getTitle();
			String content = ui1.getContent();
			String publishTime = ui1.getPublishTime();
			int uid = ui1.getUid();
	%>
			<p>title:<%=title%></p>
			<p>content:<%=content%></p>
			<p>publishTime:<%=publishTime%></p>
			<p>uid:<%=uid%></p>
			<hr>
			<%
			}
	 %>
	 	 
	 	  
	 <%
		StudentBBS_Dao info2 = new StudentBBS_Dao();
			List list2 = info2.findAllReply();
			ReplyPO ui2 = new ReplyPO();
			for (int i=list2.size()-1;i>=0;i--){
			ui2 = (ReplyPO) list2.get(i);
			int replyid = ui2.getReplyid();
			String content = ui2.getContent();
			int uid = ui2.getUid();
			int pid = ui2.getPid();
			String publishTime = ui2.getPublishTime();
	%>
			<p>replyid:<%=replyid%></p>
			<p>content:<%=content%></p>
			<p>uid:<%=uid%></p>
			<p>pid:<%=pid%></p>
			<p>publishTime:<%=publishTime%></p>
			<hr>
			<%
			}
	 %> --%>
	 	 <%
		StudentBBS_Dao info3 = new StudentBBS_Dao();
			List list3 = info3.findAllProduct();
			ProductPO ui3 = new ProductPO();
			for (int i=list3.size()-1;i>=0;i--){
			ui3 = (ProductPO) list3.get(i);
			int productid = ui3.getProductid();
			String productTitle = ui3.getProductTitle();
			String productContent = ui3.getProductContent();
			String price = ui3.getPrice();
			String photoPath = ui3.getPhotoPath();
			String publishTime = ui3.getPulishTime();
			int uid = ui3.getUid();
	%>
			<p>productid:<%=productid%></p>
			<p>productTitle:<%=productTitle%></p>
			<p>productContent:<%=productContent%></p>
			<p>price:<%=price%></p>
			<p>photoPath:<%=photoPath%></p>
			<p>publishTime:<%=publishTime%></p>
			<p>uid:<%=uid%></p>
			<hr>
			<%
			}
	 %>
	 
</body>
</html>