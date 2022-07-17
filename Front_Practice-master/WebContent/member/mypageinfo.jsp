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
#wrapper{
	display:table;
	margin-left:30%;
	margin-top: 20px;
}
#main{

 margin:0 auto;}
 
 #checkbut{
        width:100px;
        margin:auto;
        display:block;
    }
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
			<div id = "wrapper">
		<div id = "main">
			<div id = "name">
			이름 <input type="text" style="margin-left:73px">
		</div>
		<br>
			<div id="id">
			아이디 <input type="text" style="margin-left:58px">
		</div>
		<br>
		<div>
			<div id="pw">
				비밀번호 <input type="password" style="margin-left:43px">
			</div>
		</div>
		<br>
		<div>
			<div id="pwcheck">
				비밀번호 확인 <input type="password" style="margin-left:5px">
			</div>
		</div>
		<br>
		<div id="phone">
			휴대전화 <input type="text" placeholder="'-'없이 입력해주세요" style="margin-left:43px">
			
			</div><br>
					<div id="email">
			이메일 <input type="text" placeholder="선택입력" style="margin-left:57px"> 
			<select name="email">
				<option value="choice">선택</option>
				<option value="naver">naver.com</option>
				<option value="daum">daum.net</option>
				<option value="nate">nate.com</option>
				<option value="not_choice">선택 안함</option>
			</select>
		</div>
		<br>
		<div id="address">
			주소 <input type="text" id="address_kakao" name="address" style="margin-left:73px" readonly />
		</div>
		<br>
		<div id="address_detail">
			상세주소 <input type="text" name="address_detail" style="margin-left:41px" />
		</div>
		</div>
		</div>
		<br><br>
		<button id="checkbut">회원정보수정</button>
		</div>	
		
		<div id="footer">
			<jsp:include page="../footer.jsp"></jsp:include></div>
</div>
</body>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
window.onload = function(){
    document.getElementById("address_kakao").addEventListener("click", function(){ //주소입력칸을 클릭하면
        //카카오 지도 발생
        new daum.Postcode({
            oncomplete: function(data) { //선택시 입력값 세팅
                document.getElementById("address_kakao").value = data.address; // 주소 넣기
                document.querySelector("input[name=address_detail]").focus(); //상세입력 포커싱
            }
        }).open();
    });
}
</script>
</html>