<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입창</title>
</head>
<body>
	<center><h2>회원 가입창</h2></center>
	<form action="member6.jsp" method="post"> 
	<!-- 테스트 할 때 member1.jsp, forward.jsp, member3.jsp, member4.jsp, member5.jsp, member6.jsp로 바꿔가면서 하면됨 -->
		<table style="margin: 0 auto;" border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pwd"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>가입일</td> <!-- 크롬에서 실행 -->
				<td><input type="date" name="joinDate"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="가입하기">
					<input type="reset" value="다시입력">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>