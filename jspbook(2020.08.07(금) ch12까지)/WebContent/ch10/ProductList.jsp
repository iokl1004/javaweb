<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h2>ch10: EL 예제 - 상품 목록</h2>
		<HR>
		<form name=form1 method=POST action=ProductSel.jsp>
			<jsp:useBean id="product" class="jspbook.ch10.Product"
				scope="session" />
			<select name="sel">
				<%
					for (String item : product.getProductList()) {
					out.println("<option>" + item + "</option>");
				}
				%>
			</select> <input type="submit" vlaue="선택" />
		</form>
</body>
</html>