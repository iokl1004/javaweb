<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#FFFFFF">
	<h3>&lt;c:redirect&gt;</h3>
	<c:redirect url="/ch11/choose.jsp">
		<c:param name="sel">b</c:param>
	</c:redirect>
</body>
</html>