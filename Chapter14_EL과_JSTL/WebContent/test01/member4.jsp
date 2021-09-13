<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%><!-- EL언어 사용하려면 페이지지시자 안에 코드를 넣어줘야 함 -->
<%@ page import="sec01.ex01.MemberBean" %>
<%
	//post방식으로 보냈기 때문에 한글 인코딩 설정
	request.setCharacterEncoding("UTF-8");
%>
<!-- 기본값으로 채워진 MemberBean객체를 생성하여 m1이 참조한다. -->
<jsp:useBean id="m1" class="sec01.ex01.MemberBean"/>
<!-- 사용자가 입력하여 전송된 파라미터값들을 m1이 참조하는 
각 멤버변수(MemberBean의 기본값(★MemberBean의 변수와같은이름이어야함))에 자동으로 값이 셋팅 -->
<jsp:setProperty name="m1" property="*"/>

<!-- 기본값으로 채워진 ArrayList객체를 생성하여 membersList가 참조한다. -->
<jsp:useBean id="membersList" class="java.util.ArrayList"/>

<%
	MemberBean m2 = new MemberBean("son","1234","손흥민","son@test.com");
	membersList.add(m1);
	membersList.add(m2);
%>
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
		<tr> <!-- 첫번째 회원정보 출력(사용자가 입력) -->
			<td>${membersList[0].id}</td>
			<td>${membersList[0].pwd}</td>
			<td>${membersList[0].name}</td>
			<td>${membersList[0].email}</td>
		</tr>
		<tr> <!-- 두번째 회원정보 출력(손흥민) -->
			<td>${membersList[1].id}</td>
			<td>${membersList[1].pwd}</td>
			<td>${membersList[1].name}</td>
			<td>${membersList[1].email}</td>
		</tr>
	</table>
</body>
</html>