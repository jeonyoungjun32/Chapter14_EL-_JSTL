<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%><!-- EL언어 사용하려면 페이지지시자 안에 코드를 넣어줘야 함 -->
    
<%
	//post방식으로 보냈기 때문에 한글 인코딩 설정
	request.setCharacterEncoding("UTF-8");
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
			<th>주소</th>
		</tr>
		<tr> <!-- EL언어로 출력 
		JSP책 513p 내장객체 param : 파라미터 값을 얻어올 때 사용
		request.getParameter()메서드를 호출한 것과 같음 -->
			<td>${param.id}</td>
			<td>${param.pwd}</td>
			<td>${param.name}</td>
			<td>${param.email}</td>
			<!-- JSP책 519p 내장객체 requestScope : request영역에 존재하는 객체를 참조할 때 사용 
			request.getAttribute()메서드를 호출한 것과 같음 -->
			<td>${requestScope.address}</td>
		</tr>
	</table>
</body>
</html>