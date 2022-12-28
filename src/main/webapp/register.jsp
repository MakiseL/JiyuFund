<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<%@ include file="bootstrap.jsp"%>

<style>
* {
	margin: 0;
	padding: 0;
}

html {
	height: 100%;
}

body {
	height: 100%;
	background-color: #0080C0;
}

.container {
	height: 100%;
}

.login-wrapper {
	background-color: #fff;
	width: 358px;
	height: 588px;
	border-radius: 15px;
	padding: 0 50px;
	position: relative;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
}

.header {
	font-size: 30px;
	font-weight: bold;
	text-align: center;
	line-height: 120px;
}

.input-item {
	display: block;
	width: 100%;
	margin-bottom: 20px;
	border: 0;
	padding: 10px;
	border-bottom: 1px solid rgb(128, 125, 125);
	font-size: 15px;
	outline: none;
}

.input-item:placeholder {
	text-transform: uppercase;
}

.btn {
	text-align: center;
	padding: 10px;
	width: 100%;
	margin-top: 40px;
	background-color: #FFCF00;
	color: #fff;
}

.msg {
	text-align: center;
	line-height: 88px;
}

a {
	text-decoration-line: none;
	color: #abc1ee;
}
</style>

<title>注册</title>
</head>
<body>
	<div class="container">
        <div class="login-wrapper">
            <div class="header">
            	<div class="container" style="display: flex;">
            		<div class="item">
            			<img src="img/fundicon1.png" width="70px" height="70px">
            		</div>
            		<div class="item">
            			<p>基遇基金</p>
            		</div>
            	</div>
            	<h4>注册</h4>
            </div>
            <div class="form-wrapper">
              <form  method="post" action="RegisterServlet">
                <input type="text" name="uname" placeholder="用户名" class="input-item">
                <input type="password" name="upass" placeholder="密码" class="input-item">
                <input type="text" name="usex" placeholder="性别" class="input-item">
                <input type="text" name="phone" placeholder="手机号" class="input-item">
                <button class="btn" type="submit" style="margin-top: 15px;">确认注册</button>
              </form>
                <a href="login.jsp"><div class="btn" style="margin-top: 20px;">返回</div></a>
            </div>   
        </div>
    </div>
</body>
</html>