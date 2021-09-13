<!-- EL(=표현언어) : 표현식을 대신하여 JSP값들을 좀더 편리하게 출력하기 위해 제공되는 언어 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%><!-- EL언어 사용하려면 페이지지시자 안에 코드를 넣어줘야 함 -->
<!-- 기본값으로 채워진 MemberBean객체를 m1이 참조함 -->
<jsp:useBean id="m1" class="sec01.ex01.MemberBean" scope="page"/>
<jsp:setProperty name="m1" property="name" name="이순신"/>

<!-- ArrayList객체를 생성하여 m2가 참조함 -->
<jsp:useBean id="m2" class="java.util.ArrayList" scope="page"/>

<!-- HashMap객체를 생성하여 m3가 참조함 -->
<jsp:useBean id="m3" class="java.util.HashMap" scope="page"/>

<%
	m3.put("st1", "hello");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL(=표현언어)</title>
</head>
<body>
	<h3>empty 연산자</h3>
	<!-- empty : 비어있으면 true반환  -->
	${empty m1} <br> <!-- false -->
	${not empty m1} <br> <!-- true -->
	
	${empty m2} <br> <!-- true -->
	${not empty m2} <br> <!-- false -->
	
	${empty m3} <br> <!-- false -->
	${not empty m3} <br> <!-- true -->
	
	<!-- 빈 문자열 이니? -->
	${empty "hello"} <br> <!-- false -->
	${empty ""} <br> <!-- 빈 문자열 --> <!-- true -->
	${empty null} <br> <!-- 빈 문자열 --> <!-- true -->
</body>
</html>