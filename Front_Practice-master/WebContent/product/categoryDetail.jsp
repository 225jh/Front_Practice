<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Team Project</title>
<style>
html, body {
	margin: 0;
	padding: 0;
	height: 100%;
}

#big {
	min-height: 100%;
	position: relative;
}

#small {
padding-top:100px;
	padding-bottom: 200px; /* footer의 높이 */
}

.product {
	display: inline-block;
	width: 300px;
	height: 300px;
	top: 500px;
	left: 60px;
	bottom: 500px;
	margin-right: 40px;
}
#CategoryList{
margin-left:150px;
align:center;
border-collapse:collapse;
width:310px;
}
#CategoryList td{
width:310px;
text-align:center;
}
</style>
</head>
<body>
	<div id="big">
		<!-- 내용물 및 푸터를 감싸는 div -->
					<div id="header">
				<jsp:include page="../header_notlogin.jsp"></jsp:include>
			</div>
		<div id="small">
			<!-- 내용물을 감싸는 div -->
	<table id="CategoryList">
	<!-- jstl의 c:forEach태그로 for문 출력하기 -->
	
	<c:set var="i" value="0" />
	<c:set var="j" value="4" />
	  <c:forEach items="${CategoryList}" var="list">
	    <c:if test="${i%j == 0}">
	    <tr>
	    </c:if>
	       <td><div class="product">
				<a href="ShopServlet?command=product_detail&pNum=${list.pNum}"><img class="product" src="${list.pImg}"></a>
				<br>${list.pName}</div></td>
	    <c:if test="${i%j == j-1 }">
	    </tr>
	    </c:if>
	    <c:set var="i" value="${i+1 }" />
	  </c:forEach>
	</table>

<%-- 	<tr> 위의 jstl태그로 4개 출력 후 줄바꿈 실행
<table id="CategoryList">
	<c:forEach items="${CategoryList}" var="list">
		<td><div class="product">
				<a href="ShopServlet?command=product_detail&pNum=${list.pNum}"><img class="product" src="${list.pImg}"></a>
				<br>${list.pName}</div></td>
	</c:forEach>
	</tr>
</table> --%>

		</div>
		<!-- small -->
		<div id="footer">
			<jsp:include page="../footer.jsp"></jsp:include></div>
	</div>
	<!-- big -->
</body>
</html>