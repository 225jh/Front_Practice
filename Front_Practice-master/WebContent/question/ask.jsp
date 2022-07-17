<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>1:1문의</title>
<style type="text/css">
aside{
width: 20%; float: left;
}
h1{
text-align: center;
}
hr{
size: 10px;
}
section{
 height : 50%; left: 50%; width: 80%; float : center;
}
#aside{
margin-right:50px;
}
select{
width: 200px;
}
#div1{
width: 50%; height: 50%; text-align: left;
}
#but{
margin: auto;

width: 100px;
background-color: darkblue;
color: white;
}
#div_but{
margin-left:500px;
}
</style>
</head>
<body>
<!-- header -->
<header>
<jsp:include page="../header_notlogin.jsp"></jsp:include>
</header>
<section>
<aside id="aside">
<h1>고객센터</h1>
<hr size="5px" color = "black">
<b><a href="question_main.jsp" style="color: black; text-decoration: none"><li>자주하는 질문</b></li></a>
<hr>
<b><a href="ask.jsp" style="color: black; text-decoration: none"><li>1:1 문의하기</b></li><br><br><br></a>
<br>
<table style="border-collapse: collapse; width : 100%" border="1px">
<td style="text-align: center">
<h3>상담 전화</h3>
<b style="color: orange;">1234 - 5678</b>
<br>
평일 09:00 ~ 18:00
<br>
주말/ 공휴일 휴무
<br><br>
</td>
</table>
</aside>
<article>
<br>
<h2>1:1문의</h2>
<hr>
<table style="border-collapse: collapse; width:65%" border="1px">
<td>
<ul>
<li>1:1문의에서 원하는 답을 찾지 못하셨다면 자주하는 질문을 이용해주세요.</li>
<li>이용 중 불편한 사항이나 문의사항이 있으시면 언제든지 연락 주세요.</li>
<li>문의하신 내용에 대한 답변은 문의내역에서 확인하실수 있습니다.</li>
<li>1:1문의내용은 본인만 확인할 수 있습니다.</li>
</ul>
</td>
</table>
</article>
</section>

<br>
<div id="div1">
분류 <select>
<option> 제품문의</option>
<option>제품문의2</option>
<option>제품문의3</option>
</select>
<br><br>
제목 <input type="text" size="50px">
<br><br>
내용 <input type="text" size="50px" style="height: 100px;">
</div>
<br>
<div id="div_but">
<input type="submit" value="보내기" id="but">
<input type="reset" value="취소" id="but">
</div>
<br>

<!-- footer -->
<footer>
<jsp:include page="../footer.jsp"></jsp:include>
</footer>	
</body>
</html>