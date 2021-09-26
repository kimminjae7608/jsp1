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
	
	<h3>환영합니다. WELCOME!!</h3>
	<ul>
		<li id="name">이름 : ${cus.name}</li>
		<li>나이 : ${cus.age}</li>
		<li>이메일 : ${cus.email }</li>
		<li>주소 : ${cus.addr }</li>
		<li>성별 : ${cus.gender eq "male"? "남":"여"}</li>
		<li>취미 : ${cus.hobby }</li>
	
	</ul>
	<a href = "update.jsp?idx=${cus.idx }">정보수정</a>
</body>
</html>