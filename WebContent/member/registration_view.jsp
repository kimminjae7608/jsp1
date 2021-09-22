<%@page import="day3.dao.CustomerDao"%>
<%@page import="day3.dto.Customer"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP1 프로젝트[]</title>
	<style>
		ul{
			list-style : none;
			padding-inline-start:0px;	/* 목록 들여쓰기 없애기 */
		}
		ul #name{
			padding : 5px 20px;
			margin : 5px 0px;
			background-color: tomato;
			color : white;
		}
		li {
			padding : 5px 20px;
			}
		
	
	</style>

</head>
<body>
<!-- 이 파일에서는 사용자 정보를 전달 받아서 화면에 출력. 그리고 이후에는 데이터베이스에 데이터를 저장합니다. -->
	<%
		//서버에서 데이터 처리를 위한 자바코드
		
		Customer cus = (Customer)request.getAttribute("Customer");
		
	%>	
	
	
	
	
	
	<h3>환영합니다. WELCOME!!</h3>
	<ul>
		<li id="name">이름 : <%= cus.getName() %></li>
		<li>나이 : <%= cus.getAge() %></li>
		<li>이메일 : <%= cus.getEmail() %></li>
		<li>주소 : <%= cus.getAddr() %></li>
		<li>성별 : <%= (cus.getGender().equals("male")? "남":"여") %></li>
		<li>취미 : <%= (cus.getHobby()) %></li>
	
	</ul>
	<a href = "list.jsp">회원 리스트</a>
</body>
</html>