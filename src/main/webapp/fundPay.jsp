<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<%@ include file="bootstrap.jsp"%>

<%@ include file="css.jsp"%>
<style>
.shadow1{
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
}
</style>
<title>基金购买</title>
</head>
<body>

	<%@ include file="nav.jsp"%>
	<div class="container-fluid" style="padding: 0px;">
		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm-6" style="padding: 30px;">
				<div class="hezi shadow1">
					<div id="chart" style="height: 360%;"></div>
					<script type="text/javascript">
						var dom = document.getElementById("chart");
						var myChart = echarts.init(dom);
						var app = {};
						option = null;
						option = {
							title : {
								text : '近1周净值走势'
							},
							tooltip : {},
							xAxis : {
								type : 'category',
								data : [ '2022-12-11', '2022-12-12',
										'2022-12-13', '2022-12-14',
										'2022-12-15', '2022-12-16',
										'2022-12-17' ]
							},
							yAxis : {
								type : 'value'
							},
							series : [ {
								name : '单位净值',
								data : [],
								type : 'line',
								lineStyle : {
									normal : {
										color : 'blue'
									}
								},
								itemStyle : {
									normal : {
										color : 'blue'
									}
								}
							} ]
						};
						for (let i = 0; i < 7; i++) {
							option.series[0].data.push((Math.random() * 3 + 2)
									.toFixed(2));
						}
						if (option && typeof option === "object") {
							myChart.setOption(option, true);
						}
					</script>
				</div>
			</div>
			<div class="col-sm-4" style="padding: 30px 100px 30px 30px;">
				<div class="hezi shadow1"
					style="padding: 10px; height: 363px;">
					<div style="margin-bottom: 5px;">${date}</div>
					<hr />
					<h3 style="margin-bottom: 20px;">${fund.fname}
						&nbsp<span style="font-size: 15px; color: grey;">${fund.ftype}
							| ${fund.fxtype}</span>
					</h3>
					<div>基金代码${fund.fnum}</div>
					<table style="text-align: center; margin: 5px auto;">
						<tr>
							<td class="strongtext"
								style="font-size: 35px; padding: 10px 10px 0px 10px;">${fund.fval}</td>
							<td
								class="rzzl strongtext <c:if test='${fund.fday>0}'>redtext</c:if><c:if test='${fund.fday<0}'>greentext</c:if>"
								style="font-size: 35px; padding: 10px 10px 0px 10px;">
								${fund.fday}%</td>
						</tr>
						<tr>
							<td>单位净值</td>
							<td>日涨跌幅</td>
						</tr>
					</table>
					<div style="margin-top: 30px; margin-bottom: 25px;">成立日:${fund.fstart}</div>
					<div style="margin-bottom: 20px;">基金管理人:${fund.fmanager}</div>
				</div>
			</div>
			<div class="col-sm-1"></div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<form action="AddOrderServlet" method="post">
					<div class="card">
						<input type="hidden" name="fnum" value="${fund.fnum}"> <input
							type="hidden" name="otype" value="买入"> <input
							type="hidden" name="uname" value="${user==null? "null" :user.uname}">

						<h3 class="card-title pricing-card-title" style="text-align:center;">
							购买金额:<input class="form-control w-25" type="text" name="fprice"
								style="display: inline-block;"> <small
								class="text-muted"> 元 (1元起购)</small>
						</h3>
						<ul class="list-unstyled mt-3 mb-4">
							<li style="text-align:center;">费率：<span class="strongtext">${fund.fbuyrate}%</span>
							</li>
						</ul>
						<div class="row">
							<div class="col-sm-3">
							</div>
							<div class="col-sm-3" style="text-align:center;">
								<button type="submit" class="btn btn-warning">立即购买</button>
							</div>
							<div class="col-sm-3" style="text-align:center;">
								<button type="submit" class="btn btn-primary">立即定投</button>
							</div>
							<div class="col-sm-3">
							</div>
						</div>
					</div>
				</form>

			</div>
			<div class="col-sm-3"></div>
		</div>
	</div>

	<%@ include file="footer.jsp"%>
</body>
</html>