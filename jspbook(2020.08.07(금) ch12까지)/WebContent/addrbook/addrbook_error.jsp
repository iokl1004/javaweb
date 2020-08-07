<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h2>주소록 에러</h2>
		<HR>
		<table cellpadding=5 width=400>
			<tr width=100% bgcolor="pink">
				<td>주소록 처리중 에러가 발생했습니다. <BR> 관리자에게 문의해 주세요.<BR> 빠른시일내
					복구하겠습니다.
					</HR> 에러 내용 : <%=exception%>
					<HR>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>