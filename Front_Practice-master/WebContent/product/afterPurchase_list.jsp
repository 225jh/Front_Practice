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

#product_info_table {
	width: 1200px;
	height: 130px;
}

#product_info_table td {
	height: 200px;
	text-align: center;
	border: 1px solid gray;
}

#product_Info {
	padding-top: 50px;
	margin-left: 13%;
}
</style>
</head>
<body>
	<div id="big">
		<div id="small">
			<div id="header">
				<jsp:include page="../header_notlogin.jsp"></jsp:include>
			</div>
			<!-- header -->
			<hr size="2" style="color: lightgray">
			<div id="product_Info">
				<table id="product_info_table">
					<tr style="background: orange">
						<th colspan="1">구매후기</th>
						<th>작성자</th>
						<th>작성일</th>
					</tr>
					<tr>
						<td>상품평의 내용이 노출띠</td>
						<td>say***</td>
						<td>2021-05-12 00:00</td>
					</tr>
					<tr>
						<td>상품평의 내용이 노출띠 상품평의 내용이 노출띠<br> 상품평의 내용이 노출띠 상품평의 내용이
							노출띠<br> 상품평의 내용이 노출띠 상품평의 내용이 노출띠<br> 상품평의 내용이 노출띠 상품평의
							내용이 노출띠
						</td>
						<td>Kkks***</td>
						<td>2021-05-12 12:00</td>
					</tr>

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