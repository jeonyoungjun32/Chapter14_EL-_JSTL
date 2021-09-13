<!-- JSTL(JSP Standard Tag Library) 언어 : JSP페이지에서 자주사용하는 자바코드를 대체하기 위해 만든 코드 
	1. tomcat.apache.org에 접속하여 Taglib링크를 클릭하여 다운로드를 누르면 맨 아래 jar파일이 있는데
	그중 Impl, Spec, EL 세가지를 다운로드하여 WEB_INF안의 lib폴더안에 넣어 사용 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%><!-- EL언어 사용하려면 페이지지시자 안에 코드를 넣어줘야 함 -->

<!-- 2. 페이지 지시자에서 taglib(라이브러리)를 사용하겠다
라이브러리의 존재위치:uri
c는 태그앞에 붙는 접두어 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><!-- JSTL언어를 사용하려면 이 코드를 넣어줘야 함 -->

<%
	//post방식으로 값을 받기때문에 한글처리 인코딩
	request.setCharacterEncoding("UTF-8");
%>

<c:set var="id" value="hong" scope="page"/> <!-- var는 변수 value는 값 scope는 사용범위 (page가 기본값. page:이페이지 내에서만 사용가능. 기본값으로 쓸경우 생략가능) -->
<c:set var="pwd" value="1234" scope="page"/>

<!-- value속성에 표현언어(=EL) 사용해서 초기화가능 -->
<c:set var="name" value="${'홍길동'}" scope="page"/>
<c:set var="age" value="${22}" scope="page"/>
<c:set var="height" value="${177}" scope="page"/>

<c:remove var="name"/> <!-- 테스트를 위해 name삭제 id도 삭제해보고 테스트해보면 됨-->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 출력창</title>
</head>
<body>
	<table style="margin : 0 auto;" border="1">
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>나이</th>
			<th>키</th>
		</tr>
		<!-- 자바의 switch문과 같음
		choose는 switch when은 case -->
		<c:choose>
			<c:when test="${empty id}"> <!-- id가 비어있으면 -->
				<tr>
					<td colspan="5">아이디를 입력하세요.</td>
				</tr>
			</c:when>
			<c:when test="${empty name}"> <!-- name이 비어있으면 -->
				<tr>
					<td colspan="5">이름을 입력하세요.</td>
				</tr>
			</c:when>
			<c:otherwise> <!-- name이 비어있지 않으면 -->
				<tr>
					<td>${id}</td>
					<td>${pwd}</td>
					<td>${name}</td>
					<td>${age}</td>
					<td>${height}</td>
				</tr>
			</c:otherwise>
		</c:choose>
	</table>
</body>
</html>