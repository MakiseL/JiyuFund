<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<%@ include file="bootstrap.jsp"%>

<%@ include file="css.jsp"%>

<title>基金导购</title>
</head>
<body>

	<%@ include file="nav.jsp"%>
	<div class="col-sm-10" style="margin: 1rem auto;">
	<div class="row mt-3">
		<c:forEach items="${funds}" var="item" begin="1" end="5">
			<div class="col-sm">
				<div class="card">
					<img class="card-img-top" src="img/fCard/fund${item.fid-1}.jpg"
						alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title">
							<img src="img/money.png" style="margin: -1px 3px 3px 0px">${item.fname}
						</h5>
						<p class="card-text">&emsp;&emsp;${item.ftext}</p>
						<a href="FundPay?fnum=${item.fnum}" class="btn buybtn strongtext"
							style="float: right; color: #fff">买一点试试</a>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>

	<div class="row mt-3">
		<c:forEach items="${funds}" var="item" begin="6" end="10">
			<div class="col-sm">
				<div class="card">
					<img class="card-img-top" src="img/fCard/fund${item.fid-1}.jpg"
						alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title">
							<img src="img/money.png" style="margin: -1px 3px 3px 0px">${item.fname}
						</h5>
						<p class="card-text">&emsp;&emsp;${item.ftext}</p>
						<a href="FundPay?fnum=${item.fnum}" class="btn buybtn strongtext"
							style="float: right; color: #fff">买一点试试</a>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>