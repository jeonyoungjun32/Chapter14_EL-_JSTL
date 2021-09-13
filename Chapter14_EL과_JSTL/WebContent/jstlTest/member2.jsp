<!-- test01폴더의 member5.jsp와 비교 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%><!-- EL언어 사용하려면 페이지지시자 안에 코드를 넣어줘야 함 -->
<%@ page import="sec01.ex01.MemberBean" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><!-- JSTL언어를 사용하려면 이 코드를 넣어줘야 함 -->

<%
	//post방식으로 보냈기 때문에 한글 인코딩 설정
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="m1" class="sec01.ex01.MemberBean"/>
<jsp:setProperty name="m1" property="*"/>

<jsp:useBean id="membersList" class="java.util.ArrayList"/>

<jsp:useBean id="membersMap" class="java.util.HashMap"/>

<%
	//HashMap에 (key,value)쌍으로 '박지성'회원정보를 저장 
	membersMap.put("id", "park");
	membersMap.put("pwd", "4321");
	membersMap.put("name", "박지성");
	membersMap.put("email", "park@test.com");

	MemberBean m2 = new MemberBean("son","1234","손흥민","son@test.com");
	membersList.add(m1);//사용자가 입력한 파라미터값으로 채워진 MemberBean객체
	membersList.add(m2);//손흥민
	
	membersMap.put("membersList", membersList);
%>
<!-- c:set태그로 긴 속성 이름을 짧은 변수로 대체하는 방법 -->
<c:set var="membersList2" value="${membersMap.membersList}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 출력</title>
</head>
<body>
	<table style="margin : 0 auto;" border="1">
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>이메일</th>
		</tr>
		<tr> <!-- 첫번째 회원정보 출력(박지성) -->
			<td>${membersMap.id}</td> <!-- 키로 값들 출력 -->
			<td>${membersMap.pwd}</td>
			<td>${membersMap.name}</td>
			<td>${membersMap.email}</td>
		</tr>
		<tr> <!-- 두번째 회원정보 출력(사용자가 입력한 정보) -->
			<td>${membersList2[0].id}</td>
			<td>${membersList2[0].pwd}</td>
			<td>${membersList2[0].name}</td>
			<td>${membersList2[0].email}</td>
		</tr>
		<tr> <!-- 세번째 회원정보 출력(손흥민) -->
			<td>${membersList2.id}</td>
			<td>${membersList2.pwd}</td>
			<td>${membersList2.name}</td>
			<td>${membersList2.email}</td>
		</tr>
	</table>
</body>
</html>