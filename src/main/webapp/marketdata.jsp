<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<%@ include file="bootstrap.jsp"%>

<%@ include file="css.jsp"%>
<style>

#data1 .col-sm-3 {
	padding-left: 20px;
	padding-right: 20px;
}

.hezi {
	padding:10px;
	padding-left:45px;
	height:105px;
	border-style:solid;
	border-width:2px;
	border-color:#1E90FF;
	border-top-width:8px;
}

.tit {
	font-size:20px;
 	font-weight:bold;
}

.data {
	font-size:18px;
}
.shadow1{
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
}
</style>
<title>市场数据</title>
</head>
<body>
	<%@ include file="nav.jsp"%>
	<div class="col-sm-11" style="margin: 1rem auto;">
		<h3>基金市场总览<p style="font-size:10px;color:grey;">(2022-12-15更新)</p></h3>
	</div>
	<div class="container-fluid">
		<div class="row" id="data1"
			style="width: 1400px; margin: 0px auto 0px auto;">
			<div class="col-sm-3">
				<div class="hezi shadow1">
					<div style="float: left; margin-right: 10px;">
						<img src="img/icon/housefund.png" height="64" width="68">
					</div>
					<div style="float: left;">
						<p style="font-size: 15px;">总规模(万元)</p>
						<h4>11,132.47</h4>
					</div>
				</div>
			</div>
			<div class="col-sm-3">
				<div class="hezi shadow1">
					<div style="float: left; margin-right: 10px;">
						<img src="img/icon/deals.png" height="64" width="68">
					</div>
					<div style="float: left;">
						<p style="font-size: 15px;">成交量(万份)</p>
						<h4>24,621.62</h4>
					</div>
				</div>
			</div>
			<div class="col-sm-3">
				<div class="hezi shadow1">
					<div style="float: left; margin-right: 10px;">
						<img src="img/icon/refund.png" height="64" width="68">
					</div>
					<div style="float: left;">
						<p style="font-size: 15px;">成交金额(万元)</p>
						<h4>45,529.52</h4>
					</div>
				</div>
			</div>
			<div class="col-sm-3">
				<div class="hezi shadow1">
					<div style="float: left; margin-right: 10px;">
						<img src="img/icon/tradefund.png" height="64" width="68">
					</div>
					<div style="float: left;">
						<p style="font-size: 15px;">挂牌数</p>
						<h4>607</h4>
					</div>
				</div>
			</div>
		</div>
		<div class="row" style="width: 1400px; margin: 40px auto 0px auto;">
			<div class="col-sm-2" style="text-align: center;">
				<p class="tit">基金类型</p>
			</div>
			<div class="col-sm-3" style="text-align: center;">
				<p class="tit">总规模(万元)</p>
			</div>
			<div class="col-sm-2" style="text-align: center;">
				<p class="tit">挂牌数</p>
			</div>
			<div class="col-sm-3" style="text-align: center;">
				<p class="tit">成交量(万份)</p>
			</div>
			<div class="col-sm-2" style="text-align: center;">
				<p class="tit">成交金额(万元)</p>
			</div>
		</div>
		<hr style="width: 1400px;margin-left:66px;"/>
		<div class="row" style="width: 1400px; margin: 0px auto 0px auto;">
			<div class="col-sm-2" style="text-align: center;">
				<p class="data">股票型</p>
			</div>
			<div class="col-sm-3" style="text-align: center;">
				<p class="data">4463.07</p>
			</div>
			<div class="col-sm-2" style="text-align: center;">
				<p class="data">272</p>
			</div>
			<div class="col-sm-3" style="text-align: center;">
				<p class="data">9163.61</p>
			</div>
			<div class="col-sm-2" style="text-align: center;">
				<p class="data">17740.73</p>
			</div>
		</div>
		<hr style="width: 1400px;margin-left:66px;"/>
		<div class="row" style="width: 1400px; margin: 0px auto 0px auto;">
			<div class="col-sm-2" style="text-align: center;">
				<p class="data">债券型</p>
			</div>
			<div class="col-sm-3" style="text-align: center;">
				<p class="data">2105.87</p>
			</div>
			<div class="col-sm-2" style="text-align: center;">
				<p class="data">105</p>
			</div>
			<div class="col-sm-3" style="text-align: center;">
				<p class="data">6537.46</p>
			</div>
			<div class="col-sm-2" style="text-align: center;">
				<p class="data">10267.81</p>
			</div>
		</div>
		<hr style="width: 1400px;margin-left:66px;"/>
		<div class="row" style="width: 1400px; margin: 0px auto 0px auto;">
			<div class="col-sm-2" style="text-align: center;">
				<p class="data">混合型</p>
			</div>
			<div class="col-sm-3" style="text-align: center;">
				<p class="data">4563.53</p>
			</div>
			<div class="col-sm-2" style="text-align: center;">
				<p class="data">230</p>
			</div>
			<div class="col-sm-3" style="text-align: center;">
				<p class="data">8920.55</p>
			</div>
			<div class="col-sm-2" style="text-align: center;">
				<p class="data">17520.98</p>
			</div>
		</div>
		<hr style="width: 1400px;margin-left:66px;"/>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>