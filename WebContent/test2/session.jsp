<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String ID = (String) session.getAttribute("id");
		String PW = (String) session.getAttribute("pw");
 	
	 	out.println("세션에 저장된 아이디 : " + ID + "<br>");
 		out.println("세션에 저장된 비밀번호 : " + PW + "<br>");
	%>
	
	<a href="./login.jsp">로그인 페이지</a>
</body>
</html>