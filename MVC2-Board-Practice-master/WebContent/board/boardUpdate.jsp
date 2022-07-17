<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 게시판 </title>
</head>
<body>
<script>
/* 글 수정 시 유효성 검사 함수 write_check (boardWrite.jsp에도 존재함)*/
function write_check(){
	var frmm = document.frm;
	if(frmm.name.value.length == 0){
		alert("이름을 입력하세요.");
		frmm.name.focus();
		return false;
	}else if(frmm.pwd.value.length == 0){
		alert("비밀번호를 입력하세요.");
		frmm.pwd.focus();
		return false;
	}else if(frmm.title.value.length == 0){
		alert("제목을 입력하세요.");
		frmm.title.focus();
		return false;
	}else
		return true;
}
</script>
<div align="center">
<h1>게시글 수정</h1>
<form name="frm" method="post" action="BoardServlet?command=board_update&num=${oneboard.num}">
	<table>
		<tr>
			<th>작성자></th>
			<td><input type="text" name="name" value="${oneboard.name}">
			 * 필수</td>
		</tr>
		
		<tr>
			<th>비밀번호</th>
			<td><input type="password" name="pwd" value="${oneboard.pwd}">
			 * 필수 (게시물 수정/삭제 시 필요합니다.)</td>
		</tr>
			
		<tr>
			<th>이메일</th>
			<td><input type="text" name="email" value="${oneboard.email}"></td>
		</tr>
		
		<tr>
			<th>제목</th>
			<td><input type="text" size="70" name="title" value="${oneboard.title}"> * 필수</td>
		</tr>
		
		<tr>
			<th>내용</th>
			<td><textarea cols="70" rows="15" name="content"> ${oneboard.content}</textarea></td>	
		</tr>
	</table>
	<br><br>
	<input type="submit" value="등록" onclick="return write_check()">
	<input type="reset" value="다시작성">
	<input type="button" value="목록" onclick=
		"location.href='BoardServlet?command=board_list'">
</form>

</div>
</body>
</html>