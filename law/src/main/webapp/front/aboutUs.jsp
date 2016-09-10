<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>法律智慧网</title>
<meta name="keywords"
	content="法律智慧网,法律咨询,法律咨询网,法律在线,法律知识,法律援助,律师在线,中国法律,中法网">
<meta name="description"
	content="法律智慧网是一家在线法律服务门户网站平台，律师在线解答法律咨询，为您提供一站式、便捷、高效的法律服务！">
<link rel="shortcut icon" href="images/logo_ .png">
<link rel="stylesheet" type="text/css" href="css/CssReset.css">
<link rel="stylesheet" type="text/css" id="cssLink">
<link rel="stylesheet" type="text/css" href="css/aboutUs/normalize.css" />
<link rel="stylesheet" type="text/css" href="css/aboutUs/demo.css" />
<link rel="stylesheet" type="text/css" href="css/aboutUs/component.css" />
<script src="js/aboutUs/modernizr.custom.js"></script>
<script src="js/jquery-1.9.1.js" type="text/javascript"></script>
<script type="text/javascript" src="js/readCss.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=67jMQ5DmYTe1TLMBKFUTcZAR"></script>

</head>
<body>
	<!--S=页面-->
	<div id="top">
		<div id="top_page">
			<span>今天是<span id="nowtime"></span></span>
			<ul>
				<li>
				<c:if test="${fuser.usid!=null&&fuser.usid!=''}">
						<a>欢迎您</a>: <a>${fuser.usname }</a>|
						<button onclick="zhuxiao()">注销</button>|
				</c:if> 
				<c:if test="${fuser.usid==null||fuser.usid==''}">
						<li><a href="load.html">登录</a>| <a href="submit.html">免费注册</a>|
				</c:if> 
					<a href="javascript:void(0)" onclick="userCenter(${fuser.usid})">会员中心</a>| <a href="###">收藏本站</a>| <a href="javascript:void(0)" onclick="aboutUs(${fuser.usid})">关于我们</a>
				</li>
			</ul>
		</div>
	</div>
	<!--E=页面-->
	<!--S=logo-->
	<div id="logo">
		<div class="img_logo fl">
			<img src="images/logo.png" />
		</div>
		<div class="form fr">
			<form action="" method="get">
				<input type="text" placeholder="请输入关键字..." name="keyword" /> <input
					type="submit" value="检索" />
			</form>
		</div>
	</div>
	<!--E=logo-->
	<!--S=导航-->
	<div id="nav">
		<div class="nav_page">
			<ul>
				<li><a href="index.jsp">首页</a></li>
				<li><a href="wave/wave.jsp">智慧电波</a>
					<ul class="ull">
						<li><a href="wave/wave.jsp">校园动态</a></li>
						<li><a href="wave/wave2.jsp">社会聚焦</a></li>
						<li><a href="wave/wave3.jsp">新闻调查</a></li>
					</ul></li>
				<li><a href="art/art.jsp">智慧艺苑</a>
					<ul class="ull">
						<li><a href="art/art.jsp">法治视频</a></li>
						<li><a href="art/art2.jsp">法治动漫</a></li>
						<li><a href="art/art3.jsp">法治摄影</a></li>
						<li><a href="art/art4.jsp">法治书画</a></li>
						<li><a href="art/art5.jsp">法治小说</a></li>
					</ul></li>
				<li><a href="school/people.jsp">智慧私塾</a>
					<ul class="ull">
						<li><a href="school/people.jsp">法治名人</a></li>
						<li><a href="school/story.jsp">法治故事</a></li>
						<li><a href="school/story2.jsp">法治典故</a></li>
						<li><a href="school/saying.jsp">法治名言</a></li>
						<li><a href="school/secret.jsp">法治灯谜</a></li>
						<li><a href="school/words.jsp">法治楹联</a></li>
					</ul></li>
				<li><a href="wisdom/wisdom.jsp">智慧讲堂</a>
					<ul class="ull">
						<li><a href="wisdom/wisdom.jsp">法律时评</a></li>
						<li><a href="wisdom/wisdom2.jsp">以案释法</a></li>
						<li><a href="wisdom/wisdom3.jsp">名人说法</a></li>
					</ul></li>
				<li><a href="assis/assis.jsp">智慧助手</a>
					<ul class="ull">
						<li><a href="assis/assis.jsp">法规检索</a></li>
						<li><a href="assis/assis2.jsp">法律e点通</a></li>
						<li><a href="assis/assis3.jsp">法理探索</a></li>
					</ul></li>
				<li><a href="tieba/tieba.jsp">法律智慧贴吧</a></li>
			</ul>
		</div>
	</div>
	<!--E=导航-->
	<!--S=内容-->
	<div id="content">
		<!-- 关于我们主体部分 -->
		<div class="content_showInfo">
			<!-- 导航插件 -->
			<div class="container">
				<ul id="gn-menu" class="gn-menu-main">
					<li class="gn-trigger">
						<a class="gn-icon gn-icon-menu"><span>Menu</span></a>
						<nav class="gn-menu-wrapper">
							<div class="gn-scroller">
								<ul class="gn-menu">
	                            	<li><a class="gn-icon gn-icon-article" href="javascript:void(0)" onclick="showUsInfo()">关于我们</a></li>
									<li><a class="gn-icon gn-icon-help" href="javascript:void(0)" onclick="leaveMsg()">留言反馈</a></li>
	                                <li><a class="gn-icon gn-icon-pictures" href="javascript:void(0)" onclick="showMap()">公司地址</a></li>
								</ul>
							</div><!-- /gn-scroller -->
						</nav>
					</li>
	                <li></li>
				</ul>
				<header>
					<div id="lala" style="height:600px;width:1120px;margin-left:80px;border-right:1px solid #ccc;border-bottom:1px solid #ccc;">
	                	<div style="" id="usInfo_show"></div>
	                	<div style="" id="leaveMsg_fd"></div>
	                	<div style="" id="allmap"></div>
	                </div>
				</header>
			</div><!-- /container -->
		</div>
		<div class="content_footer">
			<span>友情链接</span>
			<table id="friConnEight"></table>
		</div>
	</div>
	<!--E=内容-->
	<!--S=友情链接-->
	<div id="link">
		<div class="contact fl">
			<h2>联系我们</h2>
			<ul>
				<li>官方微信：<br /> <i class="wechat"></i>
				</li>
				<li>客服电话：<span><i class="phone"></i>11022020</span><br />
					官方微博：<a href="###" target="_blank"><i class="weibo"></i></a><br />
					客服在线：<a href="###" target="_blank"><i class="qq"></i></a>
				</li>
			</ul>
		</div>
		<div class="navigation fl">
			<h2>服务导航</h2>
			<ul>
				<li><span>法律在线</span> <a href="">关于我们</a> <a href="">团队管理</a> <a
					href="">板块说明</a> <a href="">加入我们</a></li>
				<li><span>新手帮助</span> <a href="">如何使用</a> <a href="">如何使用</a> <a
					href="">如何使用</a> <a href="">如何使用</a></li>
				<li><span>新手帮助</span> <a href="">如何使用</a> <a href="">如何使用</a> <a
					href="">如何使用</a> <a href="">如何使用</a></li>
				<li><span>律师加盟</span> <a href="">入住流程</a> <a href="">入住协议</a> <a
					href="">排名规则</a> <a href="">招商合作</a></li>
				<li><span>常见问题</span> <a href="">如何服务</a> <a href="">注册流程</a> <a
					href="">忘记密码</a> <a href="">服务政策</a></li>
			</ul>
		</div>
	</div>
	<!--E=友情链接-->
	<!--S=关于我们-->
	<div id="aboutMe">
		<p></p>
		<p id="footInfo"></p>
		<p>业务信箱：电话： <span id="footPho"> </span>&nbsp;&nbsp;邮箱：<span id="footMail"></span></p>
		<p>&copy;版权所有：法律智慧网 www.hnit.com 2012-2015&nbsp;&nbsp; 制作单位：源辰信息有限公司</p>
	</div>
	<!--E=关于我们-->
	<script src="js/time.js" type="text/javascript"></script>
	<script src="js/aboutUs/classie.js"></script>
	<script src="js/aboutUs/gnmenu.js"></script>
	<script>
		new gnMenu( document.getElementById( 'gn-menu' ) );
		showMap();
		function showUsInfo(){
			$("#allmap").attr("style","display:none");
			$("#leaveMsg_fd").attr("style","display:none");
			$("#usInfo_show").attr("style","display:block");
		}
		
		function leaveMsg(){
			$("#usInfo_show").attr("style","display:none");
			$("#allmap").attr("style","display:none");
			$("#leaveMsg_fd").attr("style","display:block");
		}
		
		function showMap(){
			$("#usInfo_show").attr("style","display:none");
			$("#leaveMsg_fd").attr("style","display:none");
			$("#allmap").attr("style","display:block");
		  	// 百度地图API功能
			var map = new BMap.Map("allmap");
			var point = new BMap.Point(116.331398,39.897445);
			map.centerAndZoom(point,12);
			// 创建地址解析器实例
			var myGeo = new BMap.Geocoder();
			// 将地址解析结果显示在地图上,并调整地图视野
			myGeo.getPoint("衡阳市珠晖区衡花路16号", function(point){
				if (point) {
					map.centerAndZoom(point, 16);
					map.addOverlay(new BMap.Marker(point));
				}else{
					alert("您选择地址没有解析到结果!");
				}
			}, "湖南省");
		}
	</script>
</body>
</html>