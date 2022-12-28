<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.news-item:hover {
	background:	#F5F5F5;
}
.news-list {
	padding: 37px 98px 0px 98px;
}
.news-item {
	display: flex;
	border-bottom: 1px solid #eeeeee;
	padding: 30px 0px;
}

.news-img {
	width: 263px;
	height: 175px;
}

.news-img img {
	width: 100%;
	height: 100%;
}

.news-item-des {
	flex: 1;
	display: flex;
	flex-direction: column;
	padding-left: 40px;
}

.news-title {
	color: #001c4c;
	font-size: 24px;
}

.news-title a {
	color: #001c4c;
	text-decoration: none;
}

.news-title a:hover {
	text-decoration: none;
}

.news-content {
	flex: 1;
	color: #666666;
	font-size: 16px;
	padding-top: 18px;
}

.news-date {
	color: #9a9a9a;
	font-size: 14px;
}
</style>
<meta charset="utf-8">

<%@ include file="bootstrap.jsp"%>

<%@ include file="css.jsp"%>

<title>新闻咨询</title>
</head>
<body>
	<%@ include file="nav.jsp"%>
	<div class="news-list">
		<div class="news-item">
			<div class="news-img">
				<img src="img/news1.png">
			</div>
			<div class="news-item-des">
				<div class="news-title">
					<a href="fundnews.jsp" target="_blank">富国基金：A100ETF上市</a>
				</div>
				<div class="news-content">
					<p>富国中证100交易型开放式指数证券投资基金（交易代码：561180，扩位简称：A100ETF）...</p>
				</div>
				<div class="news-date">2022年11月21日</div>
			</div>
		</div>
		<div class="news-item">
			<div class="news-img">
				<img src="img/news3.png">
			</div>
			<div class="news-item-des">
				<div class="news-title">
					<a href="fundnews2.jsp" target="_blank">“迷你基”密集清盘！逾340只基金黯然离场</a>
				</div>
				<div class="news-content">
					<p>今年以来，随着市场震荡加剧，投资者避险情绪释放，不少投资者选择赎回基金...</p>
				</div>
				<div class="news-date">2022年11月20日</div>
			</div>
		</div>
		<div class="news-item">
			<div class="news-img">
				<img src="img/news2.png">
			</div>
			<div class="news-item-des">
				<div class="news-title">
					<a href="fundnews.jsp" target="_blank">公募排位赛白热化，“小而美”基金迎来春天</a>
				</div>
				<div class="news-content">
					<p>12月16日消息，三大指数全天弱势震荡，沪指维持低位盘整，创业板指午后一度跌超1.5%。板块方面，熊去氧胆酸等医药相关板块大涨...</p>
				</div>
				<div class="news-date">2022年11月19日</div>
			</div>
		</div>
		<div class="news-item">
			<div class="news-img">
				<img src="img/news4.png">
			</div>
			<div class="news-item-des">
				<div class="news-title">
					<a href="fundnews.jsp" target="_blank">双十私募基金经理增至34位</a>
				</div>
				<div class="news-content">
					<p>据私募排排网数据统计，截至2022年11月，能够进行长期业绩数据统计的734位基金经理近五年...</p>
				</div>
				<div class="news-date">2022年11月21日</div>
			</div>
		</div>
		<div class="news-item">
			<div class="news-img">
				<img src="img/news5.png">
			</div>
			<div class="news-item-des">
				<div class="news-title">
					<a href="fundnews.jsp" target="_blank">呼之欲出的消费复苏，基金投资机会在哪？</a>
				</div>
				<div class="news-content">
					<p>放眼海外，外需萎缩已经直接影响出口规模，尤其是11月份的出口增速创2020年3月以来的新低...</p>
				</div>
				<div class="news-date">2022年11月21日</div>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>