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
	<H3>&lt;c:url&gt;</H3>
	<c:url value="/ch11/choose.jsp" var="target">
		<c:param name="sel">a</c:param>
	</c:url>
	<HR>
	단순 출력 : ${target }
	<BR> 링크 연동 :
	<a href="${target }">choose.jsp-a 선택</a>
</body>
</html>