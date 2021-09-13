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
	<form action="result.jsp">
		아이디 : <input type="text" size="20"/> <br>
		비밀번호 : <input type="password" size="20"/> <br>
		<input type="submit" value="로그인"/>
		<input type="reset" value="다시입력"/> <br>
		
		<!-- a태그를 이용하여 다른 서블릿이나 jsp파일을 이동(=요청)하는 방법 3가지 -->
		<!-- 1. 구체적인 경로 입력
			단점 : 컨텍스트 이름(=프로젝트명)이 바뀌면 일일이 찾아서 수정해줘야함 -->
		<a href="http://localhost:8090/Chapter14_EL과_JSTL/test01/memberForm.jsp">회원가입하기</a> <!-- memberForm.jsp로 가는 정확한 경로(path) memberForm.jsp 앞의 /까지 생략되어있다. -->
		<!-- 위 코드는 프로젝트명을 변경해서 404오류가남. 해결해야함 -->

		<!-- 2.표현식을 이용 : getContextPath()메서드를 이용해 컨텍스트 이름을 가져옴
			단점 : 자바코드 사용하므로 화면 작업이 복잡해짐 -->
		<a href="<%=request.getContextPath()%>/test01/memberForm.jsp">회원가입하기</a>

		<!-- 3.EL언어를 이용 : pageContext내장객체(pageContext객체를 참조할 때 사용) -->
		<a href="${pageContext.request.contextPath}/test01/memberForm.jsp">회원가입하기</a>
	</form>
</body>
</html>