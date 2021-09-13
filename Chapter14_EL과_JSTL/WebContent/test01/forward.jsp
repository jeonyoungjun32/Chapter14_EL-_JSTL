<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//post방식으로 넘겼기때문에 한글처리 함
	request.setCharacterEncoding("UTF-8");
	//forward로 넘기기전 request영역에 address속성을 추가하여 값을 넘긴다
	request.setAttribute("address", "대구시 달서구");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward</title>
</head>
<body>
<!-- JSP책 519p 내장객체 requestScope : request영역에 존재하는 객체를 참조할 때 사용 -->
	<!-- 모든 데이터를 request객체에 담아서 forward.jsp인 이페이지로 보냈으나 
	request를 여기서 처리하지 않고 member2.jsp로 보내서 처리하겠다. -->
	<jsp:forward page="member2.jsp"></jsp:forward>
</body>
</html>