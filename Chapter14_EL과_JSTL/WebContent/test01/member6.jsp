<!-- EL언어를 사용하여 포함관계에서 Bean 사용 실습 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%><!-- EL언어 사용하려면 페이지지시자 안에 코드를 넣어줘야 함 -->
<%
	//post방식으로 보냈기 때문에 한글 인코딩 설정
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="m" class="sec01.ex02.MemberBean"/>
<jsp:setProperty name="m" property="*"/>
<!-- 가입일과 주소만 기본값으로 채워져있음(나머지는 사용자가 입력한값으로 채워짐) -->

<jsp:useBean id="addr" class="sec01.ex02.Address"/>
<jsp:setProperty name="addr" property="city" value="대구시"/>
<jsp:setProperty name="addr" property="zipcode" value="07654"/>
<%
	m.setAddr(addr);
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
			<th>가입일</th>
			<th>거주도시</th>
			<th>우편번호</th>
		</tr>
		<tr>
			<td>${m.id}</td>
			<td>${m.pwd}</td>
			<td>${m.name}</td>
			<td>${m.email}</td>
			<td>${m.joinDate}</td>
			
			<!-- 1.자바코드(표현식) 사용하여 거주도시,우편번호 출력(불편) -->
			<td><%=m.getAddr().getCity()%></td>
			<td><%=m.getAddr().getZipcode()%></td>
		</tr>
		<tr>
			<td>${m.id}</td>
			<td>${m.pwd}</td>
			<td>${m.name}</td>
			<td>${m.email}</td>
			<td>${m.joinDate}</td>
			
			<!-- 2.EL언어 사용하여 거주도시,우편번호 출력 : 부모Bean이름.자식송성이름.속성이름
											=>부모Bean참조변수.부모멤버변수.자식멤버변수 -->
			<td>${m.addr.city}</td>
			<td>${m.addr.zipcode}</td>
		</tr>
	</table>
</body>
</html>