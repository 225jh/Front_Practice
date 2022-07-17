<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>결제페이지</title>
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

table {
	border-collapse: collapse;
	padding: 5px;
	text-align: center;
}

tr {
	text-align: center;
}

td {
	padding: 10px;
	text-align: left;
}

/* class */
.co {
	background-color: #ffdab9;
}

.button {
	background-color: #555555;
	color: #FFFFFF;
}

.top {
	border: 1px solid;
}

.button {
	width: 200px;
	margin: auto;
	display: inline-block;
}

/* id */
#info_tab {
	width: 400px;
	height: 100px;
	/* text-align:center; */
}

#wid {
	width: 150px;
}

#p_container {
	position: absolute;
	left: calc(40% - 160px);
}
</style>
</head>
<body>
	<div id="big">
		<div id="small">
			<div id="header">
				<jsp:include page="../header_notlogin.jsp"></jsp:include>
			</div>
			<div id="p_container">
				<table class="top">
					<h3>주문자 정보</h3>
					<tr>
						<td class="co" id="wid">보내시는분</td>
						<td><input value="테스트" style="border: none" size="50px">
						</td>
					</tr>
					<tr>
						<td class="co">휴대폰 번호</td>
						<td><input style="border: none" value="01011112222">
						</td>
					</tr>
				</table>
				<h3>배송지 정보</h3>
				<table class="top">
					<tr>
						<td class="co" id="wid">받으시는 분</td>
						<td><input type="text" id="receiver"></td>
					</tr>
					<tr>
						<td class="co">휴대폰 번호</td>
						<td><input type="text"></td>
					</tr>
					<tr>
						<td class="co">주&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;소</td>
						<td><input type="text" id="address_kakao" name="address"
							readonly /></td>
					</tr>
					<tr>
						<td class="co">상세 주소</td>
						<td><input type="text"></td>
					</tr>
					<tr>
						<td class="co">배송 메시지</td>
						<td><input type="text" size="50"></td>
					</tr>
				</table>

				<h3>결제정보</h3>
				<table id="info_tab" class="top">
					<thead>
						<tr>
							<th class="co">구매금액</th>
							<th class="co">배송비</th>
							<th class="co">총 결제금액</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1000원</td>
							<td>0원</td>
							<td>1000원</td>
						</tr>
					</tbody>
					<table>
						<td><input type="submit" value="결제하기" class="button">
							<input type="reset" value="취소하기" class="button"></td>
					</table>
				</table>
			</div>

		</div>
		<!-- small -->
		<div id="footer">
			<jsp:include page="../footer.jsp"></jsp:include></div>
	</div>
	<!-- big -->
</body>
</html>