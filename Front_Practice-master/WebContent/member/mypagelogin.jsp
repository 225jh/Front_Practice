<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
html, body {
	margin: 0;
	padding: 0;
	height: 100%;
}

#big {
	min-height: 100%;
	position: relative;
}

#small {
	padding-bottom: 200px; /* footer의 높이 */
}

#mypage_table_div {
	margin-left: 30%;
	border-collapse: collapse;
	border: 1px solid gray;
	color: gray;
	width: 324px;
}

#mypage_table th:hover {
	background: black;
	color: white;
}

#mypage_table th {
	border: 1px solid gray;
}

#title {
	margin-left: 30%;
}
#loginbox{

margin-left:30%;
border : 2px solid black;
height:210px;
width:32%;
}
#id {
margin-left:30px;
margin-top:20px;
	height: 35px;
	width: 350px;
	border: 1px solid #1b5ac2;
	background: #ffffff;
}

#pw {
margin-left:30px;
margin-top:20px;
	height: 35px;
	width: 350px;
	border: 1px solid #1b5ac2;
	background: #ffffff;
}
#des{
margin-left:30px;}
</style>
</head>
<body>
	<div id="big">
		<div id="small">
			<div id="header">
				<jsp:include page="../header_notlogin.jsp"></jsp:include>
			</div>

			<div id="mypage_table_div">
				<table id="mypage_table">
					<tr>
						<th>구매내역</th>
						<th>회원정보</th>
						<th>내 구매후기</th>
						<th>내 문의내역</th>
				</table>
			</div>
			<br>
			<div id="title">
					<b>회원정보</b>
				</div>
			<div id="loginbox">
				<div id = "des"><span style="font-size:10px" >본인확인<br> 회원님의 정보를 안전하게 보호하기 위해 비밀번호를 한번 더 입력해주세요</span>
				</div>
				<div id="id">
					<input id="input" type="text" placeholder="아이디"><br> <br>
				</div>
				<div id="pw">
					<input id="input" type="text" placeholder="비밀번호"><br>
					<br>
					<button id="checkbut">확인</button>
				</div>
			</div>
		</div>
		<div id="footer">
			<jsp:include page="../footer.jsp"></jsp:include></div>
	</div>
</body>
</html>