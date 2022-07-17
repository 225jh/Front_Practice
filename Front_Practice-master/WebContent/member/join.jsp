<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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

#registerbut {
	left: 550px;
	width: 200px;
	height: 35px;
	border: 0px;
	background: #1b5ac2;
	outline: none;
	color: #ffffff;
}

#id, #pw, #pwcheck, #name, #phone, #join, #address, #address_detail {
	width: 150px;
	height: 45px;
	margin: auto;
}

#email {
	width: 150px;
	height: 80px;
	margin: auto;
}

hr {
	width: 50%;
	background-color: black;
}
</style>
</head>
<body>
	<div id="big">
		<div id="small">
			<div id="header">
				<jsp:include page="../header_notlogin.jsp"></jsp:include>
			</div>
			<br> <br> <br> <br> <br>
			<div id="join">
				<span style="font-size: 25px">회원가입</span>
			</div>
			<hr>
			<div id="name">
				이름 <input type="text">
			</div>
			<br>
			<div id="id">
				아이디 <input type="text">
			</div>
			<br>
			<div id="pw">
				비밀번호 <input type="password">
			</div>
			<br>
			<div id="pwcheck">
				비밀번호 확인 <input type="password">
			</div>
			<br>
			<div id="phone">
				휴대전화 <br> <input type="text" placeholder="'-'없이 입력해주세요">
			</div>
			<br>
			<div id="email">
				이메일 <input type="text" placeholder="선택입력"> <select
					name="email">
					<option value="choice">선택</option>
					<option value="naver">naver.com</option>
					<option value="daum">daum.net</option>
					<option value="nate">nate.com</option>
					<option value="not_choice">선택 안함</option>
				</select>
			</div>
			<div id="address">
				주소 <input type="text" id="address_kakao" name="address" readonly />
			</div>
			<br>
			<div id="address_detail">
				상세주소 <input type="text" name="address_detail" />
			</div>
			<br> <br>
			<div id="join">
				<button id="registerbut">가입하기</button>
			</div>
			<br>
			<!-- footer -->
		</div>
		<div id="footer">
			<jsp:include page="../footer.jsp"></jsp:include>
		</div>
	</div>
</body>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	window.onload = function() {
		document
				.getElementById("address_kakao")
				.addEventListener(
						"click",
						function() { //주소입력칸을 클릭하면
							//카카오 지도 발생
							new daum.Postcode(
									{
										oncomplete : function(data) { //선택시 입력값 세팅
											document
													.getElementById("address_kakao").value = data.address; // 주소 넣기
											document
													.querySelector(
															"input[name=address_detail]")
													.focus(); //상세입력 포커싱
										}
									}).open();
						});
	}
</script>
</html>