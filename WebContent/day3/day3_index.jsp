<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
		li,a{
		color : #2e508d;
		font-size : 1.5em;
		}
	
		.ptag{
		text-indent: 83px
		}
		body{
		background-color: #a3cca2;
		}
	</style>
</head>
<body>
	<ul>
		<li>1. <a href ="member.html">member.html</a> : member.html, member_dbsave.jsp, member_list.jsp</li>
		<p> ㄴ 흐름 -> 1) member.html에서 조건에 맞춰 회원가입을 할 시 submit된다. </p>
		<p class ="ptag">2) member_dbsave.jsp에서 파라미터값을 dto에 담아서 dao에 메소드로 db에 insert한다.</p>
		<p class ="ptag">3) member_list.jsp에서 dao에 메소드로 모든 회원을 출력한다. </p>
		<p> ㄴ .....</p>
		<br>
		
		<li>2. <a href ="request_attribute.jsp">request_attribute.jsp</a> : request_attribute.jsp, request_result.jsp </li>
		<p> ㄴ 흐름 -> 1) request_attribute.jsp에서 request에 데이터를 저장하고 요청을 전달한다. </p>
		<p class ="ptag">2) request_result.jsp에서 request에 저장된 데이터를 사용할 수 있다. </p>
		<p> ㄴ request 객체의 Attribute를 이용하여 현재 B.jsp 파일에서 A.jsp 파일로 데이터를 전달한다.  </p>
		<p class ="ptag">- request.setAttribute("애트리뷰트key" , 애트리뷰트value) : request에 데이터를 저장 </p>
		<p class ="ptag">- request.getAttribute("애트리뷰트key") : 지정한 애트리뷰트key값의  value를 가져온다.</p>
		<p class ="ptag"> : set으로 request객체에 저장된 데이터는 object타입 ->강제 캐스팅하여 사용해야한다.</p>
		<p> ㄴ pageContext.forward("경로") : 요청을 변경하지 않고 "경로"쪽으로 요청을 전달한다.</p>
		<p class ="ptag">- 기존 a태그, onclick속성, ... 등등 특징은 새로운 경로로 요청을 <strong>변경</strong>한다. (URL이 변한다.) </p>
		<p class ="ptag">- 그러나 위 메소드는 새로운 경로로 요청을 <strong>전달</strong>하기 때문에 URL이 변하지 않고 request 객체를 이용하여 데이터를 전달한다.</p>	
		<br>
		
		<li>3. ../member/<a href = ../member/registration.html>registration.html</a> : member폴더의 모든 .jsp파일 </li>
		<p> ㄴ day2 member.html과 frontEnd는 같음(실행화면이 같다), 그러나 처리하는 과정이 다르다.</p>
		<p> - 화면에 데이터를 출력하는 파일과 데이터 처리하는 파일로 나눠서 작성할 수 있다.</p>
		<p> ㄴ 흐름 -> 1) registration.html에서 회원 정보 입력하고 submit한다.(요청 변경)</p>
		<p class ="ptag">2) registration.jsp에서 ⅰ.입력한 정보를 DB 저장하고(dao메소드), ⅱ.dto로 데이터를 담아 request객체에 저장하고, ⅲ. 3번 경로로 요청을 전달한다.(요청 전달)</p>
		<p class ="ptag">3) registration_view.jsp에서 request객체에 저장된 데이터를 화면에 출력한다. 추가기능 : 회원리스트 click하면 이동(요청 변경)</p>
		<p class ="ptag">4) list.jsp에서 DB에서 데이터를 list에 저장하고 request객체에 다시한번 저장한 후 5번 경로로 요청을 전달한다. (요청 전달)</p>
		<p class ="ptag">5) list_view.jsp에서 request객체에 저장된 데이터를 화면에 출력한다.</p>
	
	</ul>

</body>
</html>