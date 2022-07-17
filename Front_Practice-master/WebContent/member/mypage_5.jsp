<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
footer{ /* footer */
position:absolute;
width:100%;
height:100%;
}
#p_container_main{ /* main 들어있는 p_container 얘로 전체 위치 조정 */
position:absolute;
width:1500px;
height:100%;
left:300px;
}
#mypage_div{
position:absolute;
left:300px;
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
#product_info{
position:absolute;
width:900px;
left:300px;
top:140px;
}
#product_info_table{
width:900px;
height:130px;
}
#product_info_table td{
height:200px;
text-align:center;
}
</style>
</head>
<body>
<jsp:include page="../header_notlogin.jsp"></jsp:include>
<footer>
	<div id="p_container_main">
	<hr size="2" style="color:lightgray">
		<div id="mypage_div">
		<br><span id="mypage_span">마이페이지
		</span>&nbsp;&nbsp;&nbsp; 홍길동 회원님을 위한 마이페이지 입니다.
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
		
		<div id="product_info">
		<hr>
		<table id="product_info_table">
			<tr style="background:skyblue">
				<th colspan="2">상품명</th>
				<th>상품평</th>
				<th>작성일</th>
			</tr>
			<tr>
				<td><img src="#"></td>
				<td>상품명</td>
				<td>상품평</td>
				<td>작성일</td>
			</tr>
			<tr>
				<td><img src="#"></td>
				<td>상품명</td>
				<td>상품평</td>
				<td>작성일</td>
			</tr>
			<tr>
				<td><img src="#"></td>
				<td>상품명</td>
				<td>상품평</td>
				<td>작성일</td>
			</tr>
		</table>
		</div>
		</div><!-- p_container_main end -->	
		

		<jsp:include page="../footer.jsp"></jsp:include>	
	</footer><!-- p_container_withFooter end -->
</body>
</html>