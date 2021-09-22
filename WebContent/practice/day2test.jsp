<%@page import="java.util.ArrayList"%>
<%@page import="test.UserTest"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day2 test1</title>
</head>
<body>
	<%
		List<UserTest> list = new ArrayList<UserTest>();
	
		list.add(new UserTest("김민재","인천",27,"01011111111"));
		list.add(new UserTest("홍길동","서울",28,"01021111111"));
		list.add(new UserTest("김길동","부산",29,"01031111111"));
	%>
		
	<table>
	<%
	
		UserTest ut;
		/* for(UserTest ut : list){ */
			for(int i=0; i< list.size(); i++){
				 ut =list.get(i);
	%>
	
		<tr> 
			<td><%=ut.getName() %> </td>
			<td><%=ut.getAddress() %> </td>
			<td><%=ut.getAge() %> </td>
			<td><%=ut.getPhoneN() %> </td>
		</tr>
	<%} %>
	</table>
	

</body>
</html>