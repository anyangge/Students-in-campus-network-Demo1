<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>学生校园网</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="css/lrtk.css" type="text/css"/>
	<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
	<style type="text/css">
		#nav_1{
			color:#3498DB;
		}
		.pic{
			margin: 2px auto;
			width:1100px;
			height: 362px;
		}
		.all{
			background: #fff;
		}
		.content{
			margin: 0 auto;
			width: 1100px;
			height: 750px;
		}
		.content a{
			text-decoration: none;
			color:#666666;
		}
		.con_left{
			float:left;
			width: 680px;
		}
		.con_right{
			border-radius:5px;
			margin-top:25px;
			float:right;
			width: 360px;
		}
		.con_left_top{
			width: 660px;
			height: 300px;
		}
		.con_left_bottom{
			width: 660px;
			height: 400px;
		}
		.con_left_top p{
			font-size:18px;
			color:#0078B6;
			height: 40px;
			line-height:40px;
			border-bottom: 1px solid #0078B6;
			padding-left:28px;
			background: url(images/good.png) 0 6px no-repeat;
		}
		#mydiv{
			margin:10px 0px;
			width:660px;
			clear: both;
		}
		#mydiv img{
			float:left;
			width:330px;
			height: 235px;
		}
		#mydiv ul{
			float:right;
			width:305px;
			line-height: 30px;
		}
		#mydiv ul li a{
			color: #666666;
			font-size: 15px;
		}
		#mydiv ul li a:hover{
			text-decoration: underline;
			color:#3498DB;
		}
		#newworld{
			font-size:18px;
			color:#0078B6;
			height:40px;
			line-height:40px;
			margin-bottom:20px;
			border-bottom: 1px solid #0078B6;
			padding-left:28px;
			background: url(images/news.png) 0 8px no-repeat;
		}
		.div1{
			float:left;
			width:330px;
			height: 185px;
		}
		.div1 a:hover{
			text-decoration: underline;
			color:#3498DB;
		}
		.div1_left{
			padding-right: 10px;
		}
		.div1 p{
			font-size:16px;
			color:#4C4C4C;
			height:30px;
			line-height:30px;
		}
		.div1 img{
			float:left;
			width: 135px;
			height: 90px;
		}
		.div2{
			float:left;
			width: 180px;
			height: 90px;
			padding:5px 0px 0px 5px;
		}
		.div2 h4{
			font-size:15px;
			font-weight: bold;
			margin-bottom: 10px;
		}
		.div2 span{
			font-size:13px;
			color:#9999A6;
		}
		.div3 ul li{
			line-height: 25px;
			font-size: 14px;
		}
		.con_right img{
			width:360px;
			margin-bottom: 10px;
		}
		.con_right p{
			line-height: 30px;
			color:#333333;
			border-bottom: 1px solid #FFCB18;
		}
		.con_right a:hover{
			text-decoration: underline;
			color:#3498DB;
		}
		#team,#activity{
			margin: 10px 0px;
			font-size:14px;
		}
		#team ul,#activity ul{
			margin: 10px 0px;
		}
		#team p,#activity p{
			background: url(images/news1.png) 0 2px no-repeat;
			padding-left: 28px;
		}
		#team ul li{
			line-height: 30px;
			padding-left: 25px;
		}
		#activity ul li{
			line-height: 25px;
			padding-left: 25px;
		}
	</style>
</head>
<body>
	<!-- 导入顶部导航栏 -->
 	<%@ include file="header.jsp" %>
 	
	<div class="pic">
	<div class="sec bnspic">
	<div class="big_pic">
		<ul>
		<li class="on"><a href="#"><img src="images/5.jpg" /><span class="txt">【毕业季】你总说毕业遥遥无期,才发现时间从不停留</span></a></li>
		<li><a href="#"><img src="images/2.jpg"/><span class="txt">【毕业季】你总说毕业遥遥无期,才发现时间从不停留</span></a></li>
		<li><a href="#"><img src="images/1.jpg"/><span class="txt">【毕业季】你总说毕业遥遥无期,才发现时间从不停留</span></a></li>
		<!-- <li><a href="#"><img src="images/4.jpg"  /><span class="txt">【毕业季】你总说毕业遥遥无期,才发现时间从不停留</span></a></li>
		<li><a href="#"><img src="images/3.jpg" /><span class="txt">【毕业季】你总说毕业遥遥无期,才发现时间从不停留</span></a></li>
		<li><a href="#"><img src="images/6.jpg" /><span class="txt">【毕业季】你总说毕业遥遥无期,才发现时间从不停留</span></a></li> -->
		</ul>
	</div>
	<div class="small_pic clearfix">
		<ul>
			<li class="on"><a href="#"><img src="images/5.jpg"/></a></li>
			<li><a href="#"><img src="images/2.jpg"  /></a></li>
			<li><a href="#"><img src="images/1.jpg" /></a></li>
		<!-- 	<li><a href="#"><img src="images/4.jpg"  /></a></li>
			<li><a href="#"><img src="images/3.jpg" /></a></li>
			<li><a href="#"><img src="images/6.jpg" /></a></li> -->
		</ul>
	</div>
	</div>
</div>
	
	<div class="all">
	<div class="content">
		<div class="con_left">
			<div class="con_left_top">
				<p>最新推荐</p>
				<div id="mydiv">
					<img src="images/bird.jpg">
					<ul>
						<li><a href="http://www.woshipm.com/it/353745.html">如何用读书构建你的思维世界</a></li>
						<li><a href="http://www.woshipm.com/zhichang/354061.html">改变做事效率的8种思维</a></li>
						<li><a href="http://www.7mart.cn/2016/03/%E5%A4%A7%E5%AD%A6%E7%94%9F%E5%88%9D%E6%AC%A1%E5%88%9B%E4%B8%9A%E9%81%BF%E5%85%8D%E5%9B%9B%E5%A4%A7%E5%88%9B%E4%B8%9A%E9%A3%8E%E9%99%A9.html">大学生初次创业避免四大创业风险</a></li>
						<li><a href="http://www.woshipm.com/operate/353711.html">上线24天就估值过亿美金的分答做对了什么？</a></li>
						<li><a href="http://www.guokr.com/question/628497/">进入一所好大学是否很重要？</a></li>
						<li><a href="http://www.guokr.com/article/441501/">学了三年的东西，为什么高考完就忘了？</a></li>
						<li><a href="http://www.7mart.cn/2016/04/%E5%B0%8F%E9%BA%A6%E5%85%AC%E7%A4%BE%EF%BC%9A%E5%A6%82%E4%BD%95%E6%9E%84%E7%AD%91%E5%BC%80%E6%94%BE%E7%9A%84%E6%A0%A1%E5%9B%ADo2o%E7%94%9F%E6%80%81%E5%9C%88%EF%BC%9F-%E8%91%97%E4%BD%9C%E6%9D%83.html">小麦公社：如何构筑开放的校园O2O生态圈？</a></li>
						<li><a href="http://www.7mart.cn/2016/04/%E6%A0%A1%E5%9B%AD020%EF%BC%9A%E6%8F%AD%E7%A7%98%E9%AB%98%E6%A0%A1%E6%B6%88%E8%B4%B9%E5%B8%82%E5%9C%BA%E7%9A%84%E7%AA%81%E7%A0%B4%E5%8F%A3%E5%9C%A8%E5%93%AA%E9%87%8C%EF%BC%9F.html">校园O2O：高校消费市场的突破口在哪里？</a></li>
					</ul>
				</div>
			</div>
			
			<div class="con_left_bottom" >
				<p id="newworld">校园天地</p>
				<div class="div1">
					<p>创业·就业</p>
					<img src="images/div1_1.jpg">
					<div class="div2">
						<h4><a href="http://www.7mart.cn/2016/04/%E6%A0%A1%E5%9B%AD%E5%88%9B%E4%B8%9A%E8%BE%BE%E4%BA%BA%E5%91%8A%E8%AF%89%E4%BD%A0%EF%BC%9A%E5%88%9B%E4%B8%9A%E5%A5%BD%E9%A1%B9%E7%9B%AE%E8%BA%AB%E8%BE%B9%E6%89%BE.html" style="color:#3498DB;">校园创业达人告诉你：创业好项目身边找</a></h4>
						<span>在互联网文化的冲击下，青葱学子都在追寻BAT的足迹...</span>
					</div>
						<div class="div3">
						<ul>
							<li><a href="http://www.7mart.cn/2016/04/%E5%B0%8F%E9%BA%A6%E5%85%AC%E7%A4%BE%EF%BC%9A%E5%A6%82%E4%BD%95%E6%9E%84%E7%AD%91%E5%BC%80%E6%94%BE%E7%9A%84%E6%A0%A1%E5%9B%ADo2o%E7%94%9F%E6%80%81%E5%9C%88%EF%BC%9F-%E8%91%97%E4%BD%9C%E6%9D%83.html">小麦公社：如何构筑开放的校园O2O生态圈？</a></li>
							<li><a href="http://www.7mart.cn/2016/04/%E6%A0%A1%E5%9B%AD020%EF%BC%9A%E6%8F%AD%E7%A7%98%E9%AB%98%E6%A0%A1%E6%B6%88%E8%B4%B9%E5%B8%82%E5%9C%BA%E7%9A%84%E7%AA%81%E7%A0%B4%E5%8F%A3%E5%9C%A8%E5%93%AA%E9%87%8C%EF%BC%9F.html">校园O2O：高校消费市场的突破口在哪里？</a></li>
						</ul>
					</div>
				</div>
				
			<div class="div1">
					<p>学习·生活</p>
					<img src="images/div1_2.jpg">
					<div class="div2">
						<h4><a href="#" style="color:#3498DB;">计划书推荐：我的创业计划书</a></h4>
						<span>大学生创业，是现在的趋势。越来越多的大学生都选择了...</span>
					</div>
						<div class="div3">
						<ul>
							<li><a href="#">良好的考研环境的重要性</a></li>
							<li><a href="#"> 考研英语单词怎样记忆 </a></li>
						</ul>
					</div>
				</div> 
			<div class="div1">
					<p>心理·情感</p>
					<div>
					<img src="images/div1_3.png">
					<div class="div2">
						<h4><a href="#" style="color:#3498DB;">就业、情感成为大学生心理杀手</a></h4>
						<span>大学生的心理问题日渐突出，与中小学生和成年人相比...</span>
					</div>
					</div>
						<div class="div3">
						<ul>
							<li><a href="#">大学生与家庭情感困扰</a></li>
							<li><a href="#">心情压抑？大学生舒缓心情有新招</a></li>
						</ul>
					</div>
				</div>	
		
		<div class="div1">
					<p>考研·留学</p>
					<img src="images/div1_4.jpg">
					<div class="div2">
						<h4><a href="#" style="color:#3498DB;">中国留学现状观察 国家和专业选择趋于理性</a></h4>
						<span>目前，中国留学生群体在心态和留学选择上有何变化...</span>
					</div>
						<div class="div3">
						<ul>
							<li><a href="#">良好的考研环境的重要性</a></li>
							<li><a href="#"> 考研英语单词怎样记忆 </a></li>
						</ul>
					</div>
				</div>	
				
			</div>
		</div>
		<div class="con_right">
			<img src="images/top.png">
			<div id="team">
			<p>校园动态</p>
			<ul>
				<li><a href="http://www.gzpyp.edu.cn/news/newsDetail.do?news.numId=10332" style="color:#FF6600;">教信中心：启动信息系统运行维护项目启动会</a></li>
				<li><a href="http://www.gzpyp.edu.cn/news/newsDetail.do?news.numId=10331">2项目获广东省自然科学基金项目立项 </a></li>
				<li><a href="http://www.gzpyp.edu.cn/news/newsDetail.do?news.numId=10327">财经学子获全国会计技能大赛团体二等奖</a></li>
				<li><a href="http://www.gzpyp.edu.cn/news/newsDetail.do?news.numId=10314">广东音乐团沙湾青萝乐坊做客青山湖学堂</a></li>
			</ul>
			</div>
			<div id="activity">
			<p>社区热点 </p>
			<ul>
				<li><a href="http://www.tuicool.com/articles/RBB3eay" style="color:#FF6600;">谷歌开发通用量子计算机取得重要突破</a></li>
				<li><a href="http://www.cngulu.com/49511.html">手机还没做好 罗永浩又开始捣鼓VR了</a></li>
				<li><a href="http://www.tuicool.com/articles/U3YJ32m">没有技术硬实力，VR只能成为虚拟的空中楼阁</a></li>
				<li><a href="http://www.tuicool.com/articles/RBB3eay">谷歌开发通用量子计算机取得重要突破</a></li>
			</ul>
			</div>
		</div>
	</div>
</div>
<!-- 导入底部导航栏 -->
<%@ include file="bottom.jsp" %>
	
	
<script type="text/javascript">
	$(".small_pic li").mouseover(function(){
		$(this).siblings().removeClass("on");
		$(this).addClass("on");
		var preNumber=$(this).prevAll().size()+1;
		$(".big_pic li").removeClass("on");
		$(".big_pic li:nth-child("+preNumber+")").addClass("on");
	});
</script>
</body>
</html>