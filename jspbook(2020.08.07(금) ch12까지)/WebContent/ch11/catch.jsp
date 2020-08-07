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

	<H3>&lt;c:catch&gt;</H3>
	<c:catch var="errMsg">
		<%=9/0%>
	</c:catch>
	error message : ${errMsg}
</body>
</html>