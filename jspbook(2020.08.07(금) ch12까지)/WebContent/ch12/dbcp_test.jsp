<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ch12:dbcp_test</title>
</head>
<body>
	<sql:query var="rs" dataSource="jdbc/mysql">
select username, email from jdbc_test
</sql:query>

	<h2>결과 출력</h2>
	<HR>

	<c:forEach var="row" items="${rs.rows}">
이름 : ${row.username }<br />
이메일 : ${row.email }
<HR>
	</c:forEach>
</body>
</html>