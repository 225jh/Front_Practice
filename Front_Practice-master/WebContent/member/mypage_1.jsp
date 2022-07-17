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
left:150px;
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
width:1200px;
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
			<tr style="background:orange">
				<th colspan="2">주문일(주문번호)</th>
				<th>상품명/주문옵션</th>
				<th>배송비(판매자)</th>
				<th>주문상태</th>
				<th>&nbsp;&nbsp;&nbsp;관리&nbsp;&nbsp;&nbsp;</th>
			</tr>
			
			
			<tr>
				<td>2022-08-10<br>(202208101234)<br><br>결제금액 : 100,000원</td>
				<td><img src="#"></td>
				<td>상품명이 노출되는 영역입니다.<br>수량 : 3개</td>
				<td>무료<br>삼성전자</td>
				<td>배송중<br>배송조회</td>
				<td><a href="..">구매결정</a><br><br>
				<a href="..">구매후기쓰기</a></td>
			</tr>
			<tr>
				<td>2022-08-10<br>(202208101235)<br><br>결제금액 : 100,000원</td>
				<td><img src="#"></td>
				<td>상품명이 노출되는 영역입니다.<br>수량 : 3개</td>
				<td>2,500<br>삼성전자</td>
				<td>거래완료<br>구매결정일자<br>(04-13결정)</td>
				<td><a href="..">구매결정</a><br><br>
				<a href="..">구매후기쓰기</a></td>
			</tr>
		</table>
		</div>
		</div><!-- p_container_main end -->	
		<jsp:include page="../footer.jsp"></jsp:include>	
	</footer><!-- p_container_withFooter end -->
</body>
</html>