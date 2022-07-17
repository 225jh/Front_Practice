<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 게시판 </title>
<script>
/* 비밀번호 유효성 검사 함수 */
function pwd_check(){
	if(document.frm.pwd.value.length == 0){
		alert("비밀번호를 입력하세요.");
		document.frm.pwd.focus();
		return false;
	}
	return true;
}
</script>
</head>
<body>
<div align="center">
<h1>Password 확인</h1>
	<form name="frm" method="post" action="BoardServlet">
	<input type="hidden" name="command" value="board_check_pwd">
	<!--
	param 내장객체 이용하여 request의 파라미터값을 가져오는 것.
	이때 주의할 점은 위에 form의 action에서는 BoardServlet만 보내고
	command까지 input태그의 hidden으로 보내야 한다는 점이다...
	-->
	<input type="hidden" name="num" value="${param.num}">

	<table style="width:80%">
		<tr>
			<th>비밀번호</th>
			<td>
				<input type="password" name="pwd" size="20">
			</td>
		</tr>
	</table>
	<br>
	<input type="submit" value="확인" onclick="return pwd_check()">
	<br><br>
	${message}
	</form>
</div>
</body>

</html>