<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<h2>회원가입</h2>
	
	<form action="join_ok.jsp" method="post">
		아이디:<input type="text" name="id"><br/>
		비밀번호:<input type="password" name="pw"><br/>
		이름:<input type="text" name="name"><br/>
		전화번호:
		<select name="phon1">
			<option>010</option>
			<option>02</option>
			<option>031</option>
			<option>051</option>
		</select>
		- <input type="text" name="phone2" size="5">
		- <input type="text" name="phone3" size="5">
		
		<br/>
		<input type="radio" name="gender" value="m" checked>남자
		<input type="radio" name="gender" value="f">여자
		
		<input type="submit" value="가입">
		
	</form>
</body>
</html>