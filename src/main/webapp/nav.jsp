<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<link rel="stylesheet" type="text/css" href="css/nav.css">
<nav class="navbar navbar-expand-lg navbar-light" style="background: #EFEFEF;">
	<a class="navbar-brand" href="Index"><img src="img/fundicon1.png"
		alt="" width="22%" height="22%" style="margin-bottom:3px;margin-right:5px">基遇基金</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item ${nav_item == 'Index'?'active':''}" style="margin-left: 100px;"><a class="nav-link"
				href="Index">首页 <span class="sr-only">(current)</span></a></li>
			<li class="nav-item ${nav_item == 'Fund'?'active':''}"><a class="nav-link" href="Fund?ftype=0">基金列表</a>
			</li>
			<li class="nav-item ${nav_item == 'FundBuy'?'active':''}"><a class="nav-link" href="marketdata.jsp">市场数据</a>
			</li>
			<li class="nav-item ${nav_item == 'Invest'?'active':''}"><a class="nav-link" href="Invest">新闻资讯</a>
			</li>
			<li class="nav-item ${nav_item == 'About'?'active':''}"><a class="nav-link" href="UserCenter">个人中心</a>
			</li>
			<li class="nav-item" style="margin-left: 300px;">
				<a class="nav-link" href="${user==null?'Login': 'UserCenter'}">
					${user==null?"请登录": user.uname}
				</a>
			</li>
			<li class="nav-item" style="margin-left: 0px;">
				<a class="nav-link" href="LogoutServlet">
					${user==null?"": "退出登录"}
				</a>
			</li>
		</ul>
		
	</div>
</nav>
