<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bootstrap Front</title>
<style>
footer{
position:absolute;
width:100%;
height:100%;
}
.banner{
position:absolute;
margin:0;
width:100%;
height:300px;
top:10px;
}
.product{
display:inline-block;
width:200px;
height:200px;
border: 1px solid black;
top:500px;
left:60px;
bottom:500px;
margin-right:40px;
}
#container2{
position:absolute;
top:430px;
left:470px;
width:1500px;
height:500px;
}
#product{
position:absolute;
top:360px;
left:470px;
}
</style>
</head>
<body>
<!-- header -->
<jsp:include page="header_notlogin.jsp"></jsp:include>
<footer>

<!-- 배너 이미지 삽입 공간 -->
<div class="banner">
<img class="banner" src="https://t1.kakaocdn.net/kakaocorp/kakaocorp/admin/news/9684fe14017b00001.png">
</div>

<div id="product">*추천 상품</div>

<div id="container2">
<div class="product">
	<img class="product" src="https://file.mk.co.kr/meet/neds/2022/02/image_readtop_2022_92915_16436841154931279.jpg">
	상품1
</div>

<div class="product">
	<img class="product" src="http://gdimg.gmarket.co.kr/656415808/still/280?ver=1594471746">
	상품2
</div>
<div class="product">
	<img class="product" src="http://s3-ap-northeast-2.amazonaws.com/stockplus-insight-seoul/articles/pictures/8084/content_www_google_co_kr_20160829_202550.jpg">
	상품3
</div>
<div class="product">
	<img class="product" src="https://shop4.daumcdn.net/thumb/R500x500/?fname=http%3A%2F%2Fshop4.daumcdn.net%2Fshophow%2Fp%2FF17377571003.jpg%3Fut%3D20220509164222">
	상품4
</div>
</div>

<jsp:include page="footer.jsp"></jsp:include>
</footer>
</body>
</html>