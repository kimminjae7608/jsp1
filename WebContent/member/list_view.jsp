
<%@page import="day3.dto.Customer"%>
<%@page import="java.util.List"%>
<%@page import="day3.dao.CustomerDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Day3[4] - db 회원 리스트</title>
<style>
		ul{
			display:flex;
			list-style : none;
			justify-content : space-between;
			padding-inline-start:0px;	/* 목록 들여쓰기 없애기 */
		}
		ul #name{
			padding : 5px 20px;
			margin : 5px 0px;
			background-color: tomato;
			color : white;
		}
		ul #email{ width : 20vw}	/* vw는 화면크기를 100으로 하여 비율값을 정합니다. */
		ul #hobby{ width : 20vw}
		li {
			padding : 5px 20px;
			margin : 5px 0px;
			border : 1px solid gray;
			border-radius : 3px;
			width:10vw;
			}
	</style>

</head>
<body>
	<h3>고객 리스트 </h3>

	<%
		List<Customer> list = (List<Customer>)request.getAttribute("list");	//다음주에는 이 코드를 없앱니다.
			for(Customer cv : list){
	%>
	<ul>
		<li id ="name"> <%= cv.getName() %></li>
		<li id ="email"> <%= cv.getEmail() %></li>
		<li> <%= cv.getAddr() %> </li>
		<li> <%= cv.getGender() %> </li>
		<li> <%= cv.getAge() %> </li>
		<li id ="hobby"> <%= cv.getHobby() %> </li>
	</ul>
	<%
	}
	%>

</body>
</html>