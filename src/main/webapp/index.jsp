<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<%@ include file="bootstrap.jsp"%>

<%@ include file="css.jsp"%>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<style>
* {
	margin: 0;
	padding: 0;
}

html, body {
	width: 100%;
	height: 70%;
}

#main {
	width: 100%;
	height: 100%;
}

.info {
	color:#4F4F4F;
}

.tit {
	color:#363636;
	font-size:18px;
}
.shadow1{
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
}
</style>
<title>首页</title>
</head>
<body style="background: #EFEFEF;">
	<%@ include file="nav.jsp"%>
	<!-- 轮播图 -->
	<div id="demo" class="carousel slide" data-ride="carousel">

		<!-- 指示符 -->
		<ul class="carousel-indicators">
			<li data-target="#demo" data-slide-to="0" class="active"></li>
			<li data-target="#demo" data-slide-to="1"></li>
			<li data-target="#demo" data-slide-to="2"></li>
		</ul>

		<!-- 轮播图片 -->
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img decoding="async" src="img/round1.jpg"
					style="width: 100%; height: 400px;">
			</div>
			<div class="carousel-item">
				<img decoding="async" src="img/round2.jpg"
					style="width: 100%; height: 400px;">
			</div>
			<div class="carousel-item">
				<img decoding="async" src="img/round3.jpg"
					style="width: 100%; height: 400px;">
			</div>
		</div>

		<!-- 左右切换按钮 -->
		<a class="carousel-control-prev" href="#demo" data-slide="prev"> <span
			class="carousel-control-prev-icon"></span>
		</a> <a class="carousel-control-next" href="#demo" data-slide="next">
			<span class="carousel-control-next-icon"></span>
		</a>

	</div>
	<!-- 市场数据 最新基金-->
	<div class="row" style="margin-top: 40px;">
		<div class="col-sm-6">
			<div class="row" style="background: #EFEFEF;margin-bottom:15px;">
				<div class="col-sm-6">
					<h2>市场数据</h2>
				</div>
				<div class="col-sm-6">
					<a href="marketdata.jsp" style="float:right;margin-top:10px;">查看更多</a>
				</div>
			</div>
			<div class="row shadow1" style="height:490px;">
				<div class="col-sm-12" style="background: white;">
					<div class="row">
						<div class="col-sm-12">
							<h4 style="text-align:center;margin:40px 0px 10px 0px;">基金市场总览</h4>
							<hr />
						</div>
					</div>
					<div class="row" style="margin:25px 0px 10px 0px;">
						<div class="col-sm-6">
							<h5 style="text-align:center;margin:0;background:no-repeat url(img/icon/housefund.png) 70px;background-size: 9%">总规模(万元)</h5>
							<p style="text-align:center;margin:0;font-size:20px;">11,132.47</p>
						</div>
						<div class="col-sm-6">
							<h5 style="text-align:center;margin:0;background:no-repeat url(img/icon/deals.png) 70px;background-size: 9%">成交量(万份)</h5>
							<p style="text-align:center;margin:0;font-size:20px;">24,621.62</p>
						</div>
					</div>
					<br/>
					<div class="row" style="margin:25px 0px 10px 0px;">
						<div class="col-sm-6">
							<h5 style="text-align:center;margin:0;background:no-repeat url(img/icon/refund.png) 68px;background-size: 9%">成交金额(万元)</h5>
							<p style="text-align:center;margin:0;font-size:20px;">45,529.52</p>
						</div>
						<div class="col-sm-6">
							<h5 style="text-align:center;margin:0;background:no-repeat url(img/icon/tradefund.png) 70px;background-size: 9%">挂牌数</h5>
							<p style="text-align:center;margin:0;font-size:20px;">607</p>
						</div>
					</div>
					<div class="row" style="margin:80px 0px 0px 0px;">
						<div class="col-sm-12">
							<p style="font-size:5px;">注：1.成交金额与成交量为今年以来累计数据</p>
							<p style="font-size:5px;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp2.总规模数据每交易日23:00更新。</p>
						</div>
					</div>
					<div class="row" style="margin:0px 0px 0px 0px;">
						<div class="col-sm-12">
							<p style="font-size:5px;">数据日期:2022-12-14</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-6">
			<div class="row" style="background: #EFEFEF;margin-bottom:15px;">
				<div class="col-sm-6">
					<h2>最新基金</h2>
				</div>
				<div class="col-sm-6">
					<a href="Fund?ftype=0" style="float:right;margin-top:10px;">查看更多</a>
				</div>
			</div>
			<div class="row shadow1" style="height:490px;">
				<div class="col-sm-12" style="background: white;">
					<div class="row" style="margin-top:10px;">
						<div class="col-sm-2" style="text-align: center;">
							<p class="tit">基金代码</p>
						</div>
						<div class="col-sm-3" style="text-align: center;">
							<p class="tit">基金名称</p>
						</div>
						<div class="col-sm-3" style="text-align: center;">
							<p class="tit">基金管理人</p>
						</div>
						<div class="col-sm-2" style="text-align: center;">
							<p class="tit">发行日期</p>
						</div>
						<div class="col-sm-2" style="text-align: center;">
							<p class="tit">操作</p>
						</div>
					</div>
					<hr/>
					<c:set var="startIndex" value="${fn:length(funds)-1}"></c:set> 
					<c:forEach items="${funds}" var="f" begin="0" end="5" varStatus="status">
							<div class="row">
								<div class="col-sm-2" style="text-align: center;">
									<p class="info">${funds[startIndex - status.index].fnum}</p>
								</div>
								<div class="col-sm-3" style="text-align: center;">
									<p class="info">${funds[startIndex - status.index].fname}</p>
								</div>
								<div class="col-sm-3" style="text-align: center;">
									<p class="info">${funds[startIndex - status.index].fmanager}</p>
								</div>
								<div class="col-sm-2" style="text-align: center;">
									<p class="info">${funds[startIndex - status.index].fstart}</p>
								</div>
								<div class="col-sm-2" style="text-align: center;">
									<a href="FundPay?fnum=${funds[startIndex - status.index].fnum}" style="color:gold;">详情 </a>
								</div>
							</div>
							<hr/>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>