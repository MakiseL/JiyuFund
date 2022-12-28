<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<style>
	.nav-pills a:hover{
		background-color:#FFDEAD;
		color:#778899;
	}
	.nav-pills a {
		color:#778899;
	}
	.shadow1{
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
}
</style>
<meta charset="utf-8">

<%@ include file="bootstrap.jsp"%>

<%@ include file="css.jsp"%>

<title>基金列表</title>
</head>
<body>

	<%@ include file="nav.jsp"%>

	<div class="col-sm-10" style="margin: 1rem auto;padding-left: 112px;">
		<p style="float: left; font-size: 18px; margin: 15px 10px 0px 0px;">基金类型:</p>
		<ul class="nav nav-pills" role="tablist" style="padding-top:6px;">
			<li class="nav-item" style="margin-left:15px;"><a class="nav-link" href="Fund?ftype=0" style="font-size: 18px;">不限</a></li>
			<li class="nav-item" style="margin-left:20px;"><a class="nav-link" href="Fund?ftype=1" style="font-size: 18px;">股票型</a></li>
			<li class="nav-item" style="margin-left:20px;"><a class="nav-link" href="Fund?ftype=3" style="font-size: 18px;">债券型</a></li>
			<li class="nav-item" style="margin-left:20px;"><a class="nav-link" href="Fund?ftype=2" style="font-size: 18px;">混合型</a></li>
		</ul>
	</div>

	<div class="container">
		<table class="table table-hover shadow1" style="text-align: center;">
			<thead class="thead-light">
				<tr>
					<th>基金代码</th>
					<th>基金名称</th>
					<th>单位净值</th>
					<th>日涨跌幅</th>
					<th>近1月</th>
					<th>近1年</th>
					<th>手续费</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${funds}" var="item">
					<tr style="line-height: 2em;">
						<td>${item.fnum}</td>
						<td><a
							href="FundPay?fnum=${item.fnum}" class="text-dark">${item.fname}</a></td>
						<td class="thinth"><span class="strongtext">${item.fval}</span></td>
						<td
							class="rzzl strongtext <c:if test='${item.fday>0}'>redtext</c:if><c:if test='${item.fday<0}'>greentext</c:if>">
							${item.fday}%</td>
						<td
							class="strongtext <c:if test='${item.fmonth1>0}'>redtext</c:if><c:if test='${item.fmonth1<0}'>greentext</c:if>">
							${item.fmonth1}%</td>
						<td
							class="strongtext <c:if test='${item.fmonth12>0}'>redtext</c:if><c:if test='${item.fmonth12<0}'>greentext</c:if>">
							${item.fmonth12}%</td>
						<td class="thinth">${item.fbuyrate}%</td>
						<td>
							<a href="FundPay?fnum=${item.fnum}" class="btn btn-danger">查看详情</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>