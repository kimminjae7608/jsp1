<%@page import="test.UserTest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Request Parameter 복습</h3>
	
	<%
		//
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
		int age = Integer.parseInt(request.getParameter("age"));
		String phone = request.getParameter("p_n");
		UserTest ut = new UserTest(name,addr,age,phone);
		out.print(ut);
	%>
	
	<ul>
		<li><%=ut.getName() %> </li>
		<li><%=ut.getAddress() %> </li>
		<li><%=ut.getAge() %> </li>
		<li><%=ut.getPhoneN() %> </li>
	</ul>

</body>
</html>