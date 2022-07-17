<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 게시판 </title>
<style>
tr{
border:1px solid blue;
border-collapse:collapse;
text-align:center;
}
td{
border:1px solid blue;
border-collapse:collapse;
text-align:center}
</style>
</head>
<body>
<div align="center">
<h1>게시글 리스트</h1>
<table>
	<tr>
		<td colspan="5" style="border:white; text-align:right">
		<a href="BoardServlet?command=board_write_form">게시글 등록</a>
		</td>
	</tr>
	
	<tr>
		<th>글번호</th>&nbsp;<th>제목</th>&nbsp;<th>작성자</th>&nbsp;<th>작성일</th>&nbsp;<th>조회수</th>
	</tr>
	<!-- jstl의 c:forEach태그로 for문 출력하기 -->
	<c:forEach items="${list}" var="list">
	<tr>
		<td>${list.num}</td>
		<td><!-- 제목 클릭 시 상세보기로 이동하는 태그(command와 num을 함께 보낸다) -->
		<a href="BoardServlet?command=board_detail_view
				&num=${list.num}">${list.title}</a>
		</td>
		<td>${list.name}</td>
		<!-- 날짜형식 불러오는 fmt:formatDate태그 사용하여 TimeStamp형식 불러옴 -->
		<td><fmt:formatDate value="${list.writedate}"/></td>
		<td>${list.readcount}</td>
	</tr>
	</c:forEach>
</table>
</div>
</body>
</html>