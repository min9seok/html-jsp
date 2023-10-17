<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="shortcut icon" href="http://localhost/webPro/images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="/webPro/resources/cdn-main/example.css">
<script src="/webPro/resources/cdn-main/example.js"></script>
<style>
 span.material-symbols-outlined{
    vertical-align: text-bottom;
 }
</style>
</head>
<body>

<header>
  <h1 class="main"><a href="#" style="position: absolute;top:30px;">ky Home</a></h1>
  <ul>
    <li><a href="#">로그인</a></li>
    <li><a href="#">회원가입</a></li>
  </ul>
</header>
<h3>
  <span class="material-symbols-outlined">view_list</span>jsp days00</h3>
<div>
  <xmp class="code">
  jsp입니당.
  </xmp>   
<%
// 스크립트릿 (자바코딩) - 톰캣 WAS
// jsp 9 내장 객체
	String subject = request.getParameter("subject");
// 	System.out.printf("> subject = %s\n",subject);
%>
<!-- 표현식(expression) -->
선택한 과목 : <%=subject %><br>
<br>
<br>
[ex06.html 선택한 과목]<br>
<!-- input[type=radio name=subject value]*4>lable -->
<input type="radio" name="subject" id="kor" value="kor"><label for="kor">국어</label>
<input type="radio" name="subject" id="eng" value="eng"><label for="eng">영어</label>
<input type="radio" name="subject" id="mat" value="mat"><label for="mat">수학</label>
<input type="radio" name="subject" id="pe" value="pe"><label for="pe">체육</label>
<br>
<br>
<!-- BOM : window, document, history.go(-1), forward() -->
<a href="javascript:history.back();">뒤로 가기</a>
</div>
<script>
let psubject = '<%=subject %>';

/*[1 방법]
 let subject = document.getElementsByName("subject");
 for (var i = 0; i < subject.length; i++) {
	if(psubject == subject[i].value){
		subject[i].checked = true;
		break;
	}
} */
// 2 방법
// document.querySelector("input[value="+psubject+"]").checked= true;
// document.querySelector("input[name=subject][value="+psubject+"]").checked= true;
// (주의) 체크
// document.querySelector(`input[name=subject][value=${psubject}]`).checked= true;
document.querySelector(`input[name=subject][value=\${psubject}]`).checked= true;
</script>
</body>
</html>