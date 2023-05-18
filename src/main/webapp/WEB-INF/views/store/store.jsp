<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="${contextPath}/resources/js/lib/jquery-3.6.4.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<style>
	#cart {
		text-align: right;
	}
</style>
<body>
	
	<div id="cart">
		<a href="${contextPath }/store/cart.do" id="cart_label"><i class="fa-solid fa-cart-shopping fa-3x"></i></a>
		<label for="cart_label">장바구니</label>
	</div>
	
	<div>
		<c:forEach items="${products }" var="product">
			<div>
				<a href="${contextPath }/store/detail.do?productNo=${product.productNo}">${product.productName}</a>
				<span>${product.price }원</span>
			</div>
		</c:forEach>
	</div>
	
	
	
	
</body>
</html>