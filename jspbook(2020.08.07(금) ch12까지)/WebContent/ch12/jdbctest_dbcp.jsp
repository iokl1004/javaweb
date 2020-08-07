<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="javax.sql.*,java.sql.*,javax.naming.*"%>
<%
	request.setCharacterEncoding("utf-8");
%>

<%
	//데이터베이스 연결 관련 변수 선언
Connection conn = null;
PreparedStatement pstmt = null;

try {
	Context initContext = new InitialContext();
	Context envContext = (Context) initContext.lookup("java:/comp/env");
	DataSource ds = (DataSource) envContext.lookup("jdbc/mysql");

	//커넥션 얻기
	conn = ds.getConnection();

	//username 값을 입력한 경우 SQL 문장을 수행
	if (request.getParameter("username") != null) {
		// Connection 클래스의 인스턴스로부터 SQL문 작성을 위한 Statement 준비
		String sql = "insert into jdbc_test values(?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("username"));
		pstmt.setString(2, request.getParameter("email"));
		pstmt.executeUpdate();
	}
} catch (Exception e) {
	e.printStackTrace();
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC 테스트</title>
</head>
<body>
	<div align="center">
		<H2>이벤트 등록</H2>
		<HR>

		<form name="form1" method="post" action="jdbctest_dbcp.jsp">
			등록이름 : <input type="text" name="username"> email주소 : <input
				type="text" name="email" size="20"> <input type="submit"
				value="등록">
		</form>
	</div>
	# 등록 목록
	<P>
		<%
			try {
			//select 문장을 문자열 형태로 구성한다.
			String sql = "select username, email from jdbc_test";

			pstmt = conn.prepareStatement(sql);

			//select를 수행하면 데이터 정보가 ResultSet 클래스의 인스턴스로 반환된다.
			ResultSet rs = pstmt.executeQuery();
			int i = 1;

			// 마지막 데이터까지 반복한다.
			while (rs.next()) {
				out.println(i + " : " + rs.getString(1) + " ," + rs.getString("email") + "<BR>");
				i++;
			}
			//사용한 자원을 반납한다.
			rs.close();
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		%>
	
</body>
</html>