<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#p_container_header{
position:relative;
width:1500px;
height:200px;
margin:0 auto;
}
#logo{
position:absolute;
border:1px solid red;
weight:70px;
height:50px;
left:150px;
top:30px;
}
#login{
position:absolute;
right:0;
top:0;
font-size:15px;
}
.a_tag{
text-decoration:none;
color:black;
}
.a_tag:hover{
color:red;
}
#input{
font-size: 16px;
width:325px;
padding:5px;
border:0px;
outline:none;
float:left;
}
#input_but{
width:50px;
height:28px;
border:0px;
background:#1b5ac2;
outline:none;
float:right;
color:#ffffff;
}
#search{
position:absolute;
border: 1px solid #1b5ac2;
background:#ffffff;
left:600px;
top:40px;
}
.mypage{
position:absolute;
border:1px solid red;
height:50px;
}
.my{
left:1200px;
top:30px;
}
.jang{
left:1370px;
top:30px;
}
#category_container{
position:absolute;
left:400px;
bottom:0px;
}
#category_table{
border-spacing:10px;
text-align:center;
width:800px;
}
#category_table td{
width:100px;
height:50px;
border:1px dotted black;
margin-right:20px;
}
#category_table th{
border:1px dotted black;
}
</style>
</head>
<body>
<!-- 부모 div relative로 포지셔닝(다른 컨텐츠에 영향 x) -->
<div id="p_container_header">
<!-- 자식 div들은 absolute로 포지셔닝 -->
	<div id="logo">
		<img src="#">로고Image
	</div>
	
	<div id="login">
		<a href="#" class="a_tag">로그인</a>&nbsp;
		<a href="#" class="a_tag">회원가입</a>&nbsp;
		<a href="#" class="a_tag">고객센터</a>
	</div>
	
	<div id="search">
		<input id="input" type="text" placeholder="검색어 입력"><button id="input_but">검색</button>
	</div>
	
	<div class="mypage my">
		<img src="#">마이페이지Image
	</div>
	<div class="mypage jang">
		<img src="#">장바구니Image
	</div>
	
	<div id="category_container">
		<table id="category_table">
			<tr><!-- 이미지와 카테코리명에 동일한 주소 줄 것! -->
				<td><a href="#" class="a_tag"><img src="#"></a></td>
				<td><a href="#" class="a_tag"><img src="#"></a></td>
				<td><a href="#" class="a_tag"><img src="#"></a></td>
				<td><a href="#" class="a_tag"><img src="#"></a></td>
				<td><a href="#" class="a_tag"><img src="#"></a></td>
				<td><a href="#" class="a_tag"><img src="#"></a></td>
			</tr>
			<tr>
				<th><a href="#" class="a_tag">의류</a></th>
				<th><a href="#" class="a_tag">가전</a></th>
				<th><a href="#" class="a_tag">가구</a></th>
				<th><a href="#" class="a_tag">식품</a></th>
				<th><a href="#" class="a_tag">여행</a></th>
				<th><a href="#" class="a_tag">스포츠</a></th>
			</tr>
		</table>
	</div>
</div>
</body>
</html>