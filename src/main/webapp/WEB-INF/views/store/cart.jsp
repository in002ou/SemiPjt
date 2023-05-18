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
	
	
</script>
</head>
<body>
	
	<div>
	gdgd
		<c:forEach items="${carts}" var="cart">
			<div>${cart }</div>
		</c:forEach>
	</div>
	

</body>
</html>