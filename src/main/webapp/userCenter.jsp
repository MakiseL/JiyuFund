<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<style>
.card {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	margin: 20px 0px 100px 100px;
	text-align: center;
	font-family: arial;
}

.container {
	padding: 0 16px;
}

.container::after {
	content: "";
	clear: both;
	display: table;
}
</style>
<meta charset="utf-8">

<%@ include file="bootstrap.jsp"%>

<%@ include file="css.jsp"%>

<title>个人中心</title>
</head>
<body>
	<%@ include file="nav.jsp"%>
	<div class="container-fluid" style="margin-top: 30px;">
		<div class="row">
			<div class="col-sm-3" style="margin: 0px 30px 0px 10px;">
				<div class="card" style="margin: 0px;">
					<h2 style="text-align: center;">用户信息</h2>
					<img src="img/user.png" alt="John" style="width: 100%;">
					<div class="container">
						<h1>${user.uname}</h1>
						<p>邮箱:${user.uname}@qq.com</p>
						<p>手机号:${user.phone}</p>
						<p>性别:${user.usex}</p>
						<p>年龄:20</p>
						<p>
							<b>账号余额:${user.money}元</b>
						</p>
					</div>
				</div>
			</div>
			<div class="col-sm card" style="margin: 0px;">
				<h2 style="text-align: center;">我的基金</h2>
				<div class=" ">
					<table class="table table-hover">
						<thead class="thead-light">
							<tr>
								<th scope="col"></th>
								<th scope="col">基金名称(基金代码)</th>
								<th scope="col">金额</th>
								<th scope="col">昨日收益</th>
								<th scope="col">持有收益</th>
								<th scope="col">操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${uware}" var="item" varStatus="status">

								<tr style="line-height: 2.25em;">
									<th scope="row">${status.index+1}</th>
									<td><a href="FundPay?fnum=${item.fnum}">${item.fname}
											(${item.fnum})</a></td>
									<td>${item.wprice}</td>
									<td>${item.profitDay}</td>
									<td>${item.profit}</td>
									<td>
										<div>
											<a href="FundPay?fnum=${item.fnum}" class="btn btn-danger">查看详情</a>
											<a href="AddOrderServlet?fnum=${item.fnum}&fprice=${item.wprice}&otype=0&uname=${user.uname}" onclick="return confirm('共计${item.wprice}元 确认卖出吗?');" class="btn btn-danger">卖出</a>
										</div>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
<style>
a {
	color: #212529;
	text-decoration: none;
}

a:hover {
	text-decoration: none;
}
</style>
</html>