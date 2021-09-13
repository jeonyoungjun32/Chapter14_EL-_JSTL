<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%><!-- EL언어 사용하려면 페이지지시자 안에 코드를 넣어줘야 함 -->
    
<%
	//post방식으로 보냈기 때문에 한글 인코딩 설정
	request.setCharacterEncoding("UTF-8");
%>
<!-- 기본값으로 채워진 MemberBean객체를 생성하여 m이 참조한다. -->
<jsp:useBean id="m" class="sec01.ex01.MemberBean"/>
<!-- 사용자가 입력하여 전송된 파라미터값들을 m이 참조하는 
각 멤버변수(MemberBean의 기본값(★MemberBean의 변수와같은이름이어야함))에 자동으로 값이 셋팅 -->
<jsp:setProperty name="m" property="*"/>
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
		<tr> <!-- 1.자바의 표현식으로 출력 -->
			<td><%=m.getId() %></td>
			<td><%=m.getPwd() %></td>
			<td><%=m.getName() %></td>
			<td><%=m.getEmail() %></td>
		</tr>
		<tr> <!-- 2.EL언어로 출력 -->
			<td>${m.id}</td>
			<td>${m.pwd}</td>
			<td>${m.name}</td>
			<td>${m.email}</td>
		</tr>
	</table>
</body>
</html>