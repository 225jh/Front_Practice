<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 게시판 </title>
<script>
/* 수정 삭제 시 비밀번호 확인 팝업창을 새로 열어주는 함수
	url은 BoardServlet?command=board_check_pwd_form */
function open_win(url, name){
	window.open(url, name, "width=500, height=250");
}
</script>
</head>
<body>
<div align="center">
<h1> 게시글 상세보기 </h1>
	<table>
		<tr>
			<th>작성자</th> <td> ${oneboard.name}</td>
			<th>이메일</th> <td> ${oneboard.email}</td>
		</tr>
		
		<tr>
			<th>작성일</th> <td><fmt:formatDate value="${oneboard.writedate}"/></td>
			<th>조회수</th> <td> ${oneboard.readcount}</td>
		</tr>
		
		<tr>
			<th>내용</th>
			<td colspan="3"><pre>${oneboard.content}</pre></td>
		</tr>		
	</table>
	<br><br>
	<!-- 수정 삭제 시 새로운 팝업창에서 비밀번호 확인하는 함수로 이동 -->
	<!-- window.open(url, name, "width=500, height=230"); -->
	<!-- url = Servlet의 pwd입력을 위한 폼의 url을 의미함 -->
	<input type="button" value="게시글 수정" 
	onclick="open_win('BoardServlet?command=board_check_pwd_form&num=${oneboard.num}','update')">
	<input type="button" value="게시글 삭제"
	onclick="open_win('BoardServlet?command=board_check_pwd_form&num=${oneboard.num}','delete')">
	<input type="button" value="목록"
	onclick="location.href = 'BoardServlet?command=board_list'">
	<input type="button" value="게시글 등록"
	onclick="location.href = 'BoardServlet?command=board_write_form'">
</div>
</body>
</html>