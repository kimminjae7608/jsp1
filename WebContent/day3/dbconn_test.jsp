<%@page import="util.MySQLConnectionUtil"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day3 [1] - db test</title>
</head>
<body>
	<h4> MySQL connection test(연결 테스트)</h4>
	<hr>
	db 연결은?
	<%
		Connection conn = MySQLConnectionUtil.connect();
		out.print(conn);
		out.print("<br>");
		if(conn == null) out.print("연결 실패입니다.");
		else out.print("연결 성공입니다.");
	
	%>

</body>
</html>