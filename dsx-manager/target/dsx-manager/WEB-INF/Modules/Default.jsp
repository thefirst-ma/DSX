<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta content="科大校园智能点菜系统" name="keywords" />
<meta content="科大校园智能点菜系统" name="description" />
<title>科大校园智能点菜系统</title>
<link rel="Stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/Styles/bridging.css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/Scripts/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/Scripts/common.js"></script>
</head>

<body>
	<form id="form1" >
		<!--====这里放主导航====-->
		<div class="header">
			<div class="header_top">
				<header>
					<div class="header_logo">
						<h1>科大校园点菜系统</h1>
					</div>
					<div class="header_tab">
						<ul>
							<li><h2 class="version"></h2></li>
							<li><span class="header_hi">Hi,</span><span
								class="header_usename">${sessionScope.user.name}</span>!</li>
							<form action="${pageContext.request.contextPath}/user/outLogin.do" method="post">
								<input type="submit" value="注销"></input>
							</form>
							<li class="rel"><a href="#" class="system_infor"
								id="system_infor" onclick="showMe4ssageList();">系统消息(0)</a>
								<div id="Div1" class="dn"></div></li>
							<li class="password_nav"><a href="#"
								class="change_password nav_current otherNavigation">修改密码</a></li>
							<li><a href="#">帮助中心</a></li>
						</ul>
						<div class="cf"></div>
					</div>
					<div class="cf"></div>
				</header>
			</div>
			<div class="header_nav">
				<nav>
					<ul id="showMainNav" class="fix">
						<li class="navContent nav_current">
							<a href="#" class="showNav" id="user" data-name="main_iframe"
							onclick="Common.switchNavigation(this);"
							data-url="${pageContext.request.contextPath}/user/manage.do">菜品</a>
						</li>
						<li class="navContent">
							<a href="#" class="showNav" id="order" data-name="main_iframe"
							   onclick="Common.switchNavigation(this);"
							   data-url="${pageContext.request.contextPath}/order/info.do">订单信息</a>
						</li>
						<li class="navContent">
							<a href="#" class="showNav" id="department" data-name="main_iframe"
							   onclick="Common.switchNavigation(this);"
							   data-url="${pageContext.request.contextPath}/vegetable/info.do">菜品评价</a>
						</li>
<%--						<li class="navContent">--%>
<%--							<a href="#" class="showNav" id="employee" data-name="main_iframe"--%>
<%--							onclick="Common.switchNavigation(this);"--%>
<%--							data-url="${pageContext.request.contextPath}/employee/manage.do">员工管理</a>--%>
<%--						</li>--%>
<%--						<li class="navContent">--%>
<%--							<a href="#" class="showNav" id="salary" data-name="main_iframe"--%>
<%--							   onclick="Common.switchNavigation(this);"--%>
<%--							   data-url="${pageContext.request.contextPath}/salary/manage.do">定单管理</a>--%>
<%--						</li>--%>
					</ul>
				</nav>
			</div>
		</div>
		
		<!--====下面是主要内容区域====-->
		<div id="main_iframe"
			class="index_mainIfram_position  mainIfram_position">
			<iframe class="main_iframe" id="home_iframe" frameborder="0"
				border="0" src="${pageContext.request.contextPath}/user/manage.do"></iframe>
		</div>
		
		<!--====下面是页脚====-->
		<div class="footer">
			<footer>
				<p>  版权所有 @ 2020大三下课设 </p>
			</footer>
		</div>
	</form>
</body>
</html>
