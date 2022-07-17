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
/* 상세보기에서 수정 / 삭제 클릭 시 새로운 윈도우창의 이름은 update 혹은 delete가 되므로
	이름과 비교하여 해당 command와 매개변수 num을 넘겨주어 액션객체가 올바르게 실행되도록 함
	
	※window.opener.parent는 새로운 창 이전의 부모window창을 의미한다.
	
	***
	넘어온 request객체 속성(num 등...)의 파라미터 값(value)를 param객체를
	이용하여 가져올 수 있다.
	[23, 27줄에서 사용중]
*/
	if(window.name == "update"){
		window.opener.parent.location.href=
			"BoardServlet?command=board_update_form&num=${param.num}";
	}else if(window.name == "delete"){
		alert("삭제되었습니다.");
		window.opener.parent.location.href=
			"BoardServlet?command=board_delete&num=${param.num}";
	}
		window.close();
</script>
</body>
</html>