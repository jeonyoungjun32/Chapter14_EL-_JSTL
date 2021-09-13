<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%><!-- EL언어 사용하려면 페이지지시자 안에 코드를 넣어줘야 함 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 창</title>
</head>
<body>
	<form action="result2.jsp" method="post">
	<!-- 테스트할 때 result.jsp, result2.jsp로 바꿔가면서 함 -->
		아이디 : <input type="text" name="userId" size="20"/> <br>
		비밀번호 : <input type="password" name="userPw" size="20"/> <br>
		<input type="submit" value="로그인"/>
		<input type="reset" value="다시입력"/> <br>
	</form>
</body>
</html>