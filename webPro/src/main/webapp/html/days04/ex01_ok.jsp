<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% // JSP 스크립트 요소 = 스크립트릿
	String fname = request.getParameter("fname");
	String lname = request.getParameter("lname");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>처리중</title>
</head>
<body>
<h3>ex01_ok.jsp</h3>

전송된 First Name : <input type="hidden" value="<%= fname %>"><br>
전송된 Last Name  : <%= lname %> <br>

</body>
</html>