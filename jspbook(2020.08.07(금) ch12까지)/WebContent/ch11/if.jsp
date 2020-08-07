<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL : Core Library</title>
</head>
<body bgcolor="#FFFFFF">
	<h3>&lt;c:if&gt;</h3>
	<c:set value="장인기" var="msg" />
	<c:set value="장인순" var="msg1" />
	msg : ${msg }
	<BR> 
	msg1 : ${msg1 }
	<BR>

	<c:if test="${msg == '장인기' }" var="result">
msg의 값은 장인기가 ${result } 입니다!
</c:if>
	<c:if test="${msg1 == '장인순' }" var="result1">
		<BR>
msg1의 값은 장인기가 ${result1 } 입니다!
</c:if>
</body>
</html>