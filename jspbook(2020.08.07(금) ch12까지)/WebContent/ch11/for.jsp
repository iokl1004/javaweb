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

	<H3>&lt;c:for&gt;</H3>
	<c:forEach var="i" items="${members}" begin="0" varStatus="status"
		end="5">
index : ${status.index } /
count : ${status.count } <BR>
name : ${i.name } <BR>
email : ${i.email } <BR>
		<HR>
	</c:forEach>

	<c:forTokens items="장인기, 010-4031-2839, 서울 " delims="," var="sel">
${sel} <BR>
	</c:forTokens>
</body>
</html>