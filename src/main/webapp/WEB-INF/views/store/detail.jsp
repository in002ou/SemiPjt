<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="${contextPath}/resources/js/lib/jquery-3.6.4.min.js"></script>
<script type="text/javascript " src="https://service.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<script>
	
/* 
	$('#cart_Add').on('submit', function(){
		$.ajax({
			type: 'post',
			url: '${contextPath}/store/cart.do',
			data: $('#cart_Add').serialize(),
			dataType: 'text',
			success: function(resData){
				alert(resDate);
				location href='${contextPath}/store/store.do';
			} error: (jqXHR){
				alert(jqXHR);
			}
		})
	})

	
	$(function(){
		fnInCart();
	})
	*/
	
</script>
</head>
<body>
	
	<form id="cart_Add" action="${contextPath }/store/cart.do" method="post">
		<div>${product.productName}</div>
		<div>${product.price}원</div>
		<div>${product.productContent}</div>
		<div>
			<label for="count">
	          수량 <input type="number" id="count" min="1" max="10" value="1" name="count">
	        </label>
	        <input type="hidden" name="productNo" value="${product.productNo}">
		</div>
		
		<hr>
		
		<input type="submit" value="장바구니에 담기">
	</form>
	
	
	

</body>
</html>