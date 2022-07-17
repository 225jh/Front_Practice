<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>상품문의</title>
<style type="text/css">
footer{
clear: both;
}
aside{
width: 20%; height: 80%; float: left;
}
h1{
text-align: center;
}
section{
 height : 50%; left: 50%; width: 80%; float : center;
}
article{

}
#aside{
margin-right:50px;
}
th{
width: 80px;
}
p{
margin : auto;
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
<h2>주문/결제</h2>
<hr>
<table style="border-collapse: collapse; width : 70%; height: 90px;" border="1px">
<td style="margin: auto; text-align: center;">
<select style="width: 100px; height: 25px;">
<option>전체</option>
<option>전체1</option>
<option>전체2</option>
</select>
<input type="search" style="height: 26px; width: 60%">
<input type="submit" value="검색" style="width: 100px; height: 26px;">
</td>
</table>
<br>
<table style=" border-collapse: collapse;width : 70%; height: 40px; "border="1px">
<th><a href="question_main.jsp">전체</a></th>
<th><a href="product_inquiry.jsp">상품문의</a></th>
<th><a href="order_payment.jsp">주문/결제</a></th>
<th><a href="delivery.jsp">배송</a></th>
<th><a href="return.jsp">반품/교환/환불</a></th>
<th><a href="saving.jsp">적립/혜택</a></th>
<th><a href="etc.jsp">회원/기타</a></th>
</table>
<hr>
<details>
<summary><b>Q : </b>주문/결제 질문1</summary>
<p><b>A : </b>주문/결제 답변2</p>
</details>
<details>
<summary><b>Q : </b>주문/결제 질문2</summary>
<p><b>A : </b>>주문/결제 답변2</p>
</details>
</article>
</section>
<!-- footer -->
<footer>
<jsp:include page="../footer.jsp"></jsp:include>
</footer>	
</body>
</html>