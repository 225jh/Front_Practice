<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style>
#p_container_main { /* 전체틀 */
	position: absolute;
	width: 1500px;
	height: 100%;
	left: 150px;
}

#p_container_1 {
	position: absolute;
	width: 1500px;
	height: 200px;
}

#p_container_2 {
	position: absolute;
	width: 1500px;
	height: 250px;
	top: 250px;
}

#p_container_3 {
	position: absolute;
	width: 1500px;
	height: 200px;
	top: 500px;
}

#product_container_main td {
	height: 300px;
	text-align: center;
}
</style>
</head>
<body>
	<jsp:include page="../header_notlogin.jsp"></jsp:include>
	<footer>
		<div id="p_container_main">
			<div id="p_container_1">
				<hr size="1" style="color: lightgray">
				구매후기 작성
				<hr size="2" style="color: black">
				<tr>
					<td></style>
						<img src="#" height="100px" ; width="100";></td>
					<td>상품명</td>
				</tr>
			</div>
			<div id="p_container_2">
				<tr>
					<td><input type="text"
						placeholder="내용을 입력하세요.(최소 10자 최대 250자)"
						style="width: 1000px; height: 200px; font-size: 15px;"></td>
				</tr>
			</div>
			<div id="p_container_3">
				<tr>
					<th></th>
					<th></th>

					<td>사진(선택)</td>
					<td></style>
						<img src="#" height="100px" ; width="100";></td>
					<td></style>
						<img src="#" height="100px" ; width="100";></td>
					<td></style>
						<img src="#" height="100px" ; width="100";></td>
					<td></style>
						<img src="#" height="100px" ; width="100";></td>
				</tr>
				<br><br>
				<table text-align="center";>
					<td><input type="submit" value="등록" class="button">
						<input type="reset" value="취소" class="button"></td>
				</table>
			</div>
		</div>

		<jsp:include page="../footer.jsp"></jsp:include>
	</footer>
</body>
</html>