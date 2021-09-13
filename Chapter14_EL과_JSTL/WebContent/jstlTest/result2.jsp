<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%><!-- EL언어 사용하려면 페이지지시자 안에 코드를 넣어줘야 함 -->
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><!-- JSTL언어를 사용하려면 이 코드를 넣어줘야 함 -->

<%
	//post방식으로 받았으므로 한글처리
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과창</title>
</head>
<body>
	<c:if test="${empty param.userId}">
		아이디를 입력하세요<br>
		<a href="login.jsp">로그인 창</a>
	</c:if>
	
	<c:if test="${not empty param.userId}">
		<c:if test="${ (param.userId == 'admin') && (param.userPw == 1234) }">
			관리자로 로그인 되었습니다.
			<form>
				<input type="button" value="회원정보 삭제하기">
				<input type="button" value="회원정보 조회하기">
				<input type="button" value="회원정보 수정하기">
			</form>
		</c:if>
		<c:if test="${param.userId != 'admin'}">
		환영합니다.<c:out value="${param.userId}"/>님!!!<br>
		</c:if>
	</c:if>
</body>
</html>