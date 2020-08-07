<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ch11 : import</title>
</head>
<body bgcolor="#FFFFFF">
	<h3>&lt;c:import&gt;</h3>
	다음은 import를 이용해 포함한 것입니다.
	<BR>
	<c:import url="set.jsp" var="myurl" />
	<c:out value="${myurl }" escapeXml="false" />
	<HR>
	<c:import url="https://www.hanbit.co.kr/store/books/look.php?p_code=B8785158105" var="myurl2" />
	<c:out value="${myurl2 }" escapeXml="false" />
</body>
</html>