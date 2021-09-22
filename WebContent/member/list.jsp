
<%@page import="day3.dto.Customer"%>
<%@page import="java.util.List"%>
<%@page import="day3.dao.CustomerDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- <title>Day3[4] - db 회원 리스트</title> 카피본-->

	<%
		CustomerDao dao = CustomerDao.getInstance();
		List<Customer> list = dao.selectAll();
		request.setAttribute("list", list);
		pageContext.forward("list_view.jsp");
	%>