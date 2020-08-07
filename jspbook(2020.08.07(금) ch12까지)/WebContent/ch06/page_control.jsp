<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page_control.jsp</title>
</head>
<body>
	<H2>forward, sendRedirect 테스트</H2>
	<HR>
	<form method=post action=forward_action2.jsp>
		forward 액션 : <input type=test name=username> <input
			type=submit value="확인">
	</form>

	<form method=post action=response_sendRedirect.jsp>
		response.sendRedirect : <input type=test name=username> <input
			type=submit value="확인">
	</form>
</body>
</html>