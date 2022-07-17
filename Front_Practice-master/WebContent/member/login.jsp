<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style>
/* footer */
footer{
position:absolute;
width:100%;
height:100%;
}

#p_container {
	position: relative;
	width: 1500px;
	height: 100%;
	margin: 0 auto;
}

#loginbox {
	width: 100%;
	height: 100%;
	position: absolute;
	left: 0;
	top: 30px;
}

#login1 {
	font-size: 25px;
	position: absolute;
	left: 420px;
	text-align: center;
}

#login2 {
	font-size: 15px;
	position: absolute;
	left: 420px;
	top: 40px;
}

#login4 {
	font-size: 25px;
	position: absolute;
	left: 420px;
	top: 20px;
}

#id {
	display: inline-block;
	position: absolute;
	left: 550px;
	top: 170px;
	height: 35px;
	width: 350px;
	border: 1px solid #1b5ac2;
	background: #ffffff;
}

#pw {
	display: inline-block;
	position: absolute;
	left: 550px;
	top: 220px;
	height: 35px;
	width: 350px;
	border: 1px solid #1b5ac2;
	background: #ffffff;
}

#loginbut {
	left: 550px;
	width: 350px;
	height: 35px;
	border: 0px;
	background: #1b5ac2;
	outline: none;
	float: right;
	color: #ffffff;
}

#register {
	left: 550px;
	width: 350px;
	height: 35px;
	border: 0px;
	background: #1b5ac2;
	outline: none;
	float: right;
	color: #ffffff;
}

#welcome {
	width: 400px;
	height: 200px;
	margin-left: 180px;
}
</style>
</head>
<body>
	<!-- header -->
	<header>
		<jsp:include page="../header_notlogin.jsp"></jsp:include>
	</header>
<footer>
	<!-- login -->
	<div id="p_container">

		<div id="loginbox">
			<div id="login1">
				<b>로그인</b>
			</div>
			<div id="login2">
				로그인을 하시면 다양한 서비스와 혜택을 받으실 수 있습니다.
				<hr>
				<br>

				<div id="welcome">
					<span><b>1조 쇼핑몰</b>에 오신것을 환영합니다.</span>
				</div>
			</div>
		</div>

		<div id="id">
			<input id="input" type="text" placeholder="아이디"><br>
			<br>
		</div>
		<div id="pw">
			<input id="input" type="text" placeholder="비밀번호"><br>
			<br>
			<button id="loginbut">로그인</button>
			<br>
			<br>
			<button id="register">회원가입</button>
		</div>

	</div>

</body>
<!-- footer -->

<jsp:include page="../footer.jsp"></jsp:include>
</footer>
</html>