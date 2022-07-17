<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#p_container_main{ /* main 들어있는 p_container 얘로 전체 위치 조정 */
position:absolute;
width:100%;
height:100%;
}
#mypage_div{
position:absolute;
left:450px;
border:1px solid black;
width:900px;
height:80px;
text-align:left;
}
#mypage_span{
font-size:30px;
font-weight:bold;
}
#mypage_table_div{
height:100%;

}
#mypage_table{
position:absolute;
left:300px;
top:100px;
border-collapse:collapse;
border:1px solid gray;
color:gray;
margin-top:10px;
}
#mypage_table th{
border:1px solid gray;
}
#mypage_table th:hover{
background:black;
color:white;
}
#mypage_list{
position:absolute;
width:900px;
left:300px;
top:140px;
}

</style>
</head>
<body>
<jsp:include page="../header_notlogin.jsp"></jsp:include>
	<div id="p_container_main">
	<hr size="2" style="color:lightgray">
		<div id="mypage_div">
		<br><span id="mypage_span">마이페이지
		</span>&nbsp;&nbsp;&nbsp; 홍길동 회원님을 위한 마이페이지 입니다.

		<table id="mypage_table">
			<tr>
				<th>구매내역</th>
				<th>회원정보</th>
				<th>내 구매후기</th>
				<th>내 문의내역</th>
		</table>

		<hr>
		<br>
		<span id="span">문의내역</span>
		<br><br>
		<hr style="width: 900px;">
		<p>분류&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(데이터베이스)</p>
		<hr style="width: 900px;">
		<p>일자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(데이터베이스)</p>
		<hr style="width: 900px;">
		<p>제목&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(데이터베이스)</p>
		<hr style="width: 900px;">
		<p>문의내용&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(데이터베이스)</p>
		<hr style="width: 900px;">
		<p>답변내용&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(데이터베이스)</p>
		</div>
		<jsp:include page="../footer.jsp"></jsp:include>
		</div><!-- p_container_main end -->	

</body>
</html>