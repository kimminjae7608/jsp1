<%@page import="day3.dao.CustomerDao"%>
<%@page import="day3.dto.Customer"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 이 파일에서는 사용자 정보를 전달 받아서 화면에 출력. 그리고 이후에는 데이터베이스에 데이터를 저장합니다. -->
	<%
		//서버에서 데이터 처리를 위한 자바코드
		
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");	
		int age = Integer.parseInt(request.getParameter("age"));   //Vo 객체에 저장할 때 필요합니다.
		String email = request.getParameter("email");
		String addr = request.getParameter("addr");
		if(addr.equals("기타")) addr = request.getParameter("addr_etc");
		String gender = request.getParameter("gender");
		String[] hobby = request.getParameterValues("hobby");
		String hobbies = Arrays.toString(request.getParameterValues("hobby"));
		hobbies = hobbies.substring(1, hobbies.length()-1);
		//참고 : hobby는 배열입니다. -> getParameterValues() 메소드로 데이터를 받습니다. -> 변수 타입은 String[]
		
		String password = request.getParameter("password");

		Customer cus = new Customer(0,name,password,email,addr,gender,age,hobbies);
		CustomerDao dao = CustomerDao.getInstance();
		dao.insert(cus);
		out.print(cus);
		
		//1) 추가된 회원정보만 확인하기	-> 요청전달ㅇ
		request.setAttribute("Customer", cus);
		pageContext.forward("registration_view.jsp");
		//2) 사용자가 요청하지 않았지만 회원리스트 list.jsp로 요청 바꾸기
		//response.sendRedirect("list.jsp");
		%>	