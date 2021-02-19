<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if (id.equals("HOJIN") && pw.equals("asdf1234")) {
			session.setAttribute("id", id);
			session.setAttribute("pw", pw);
			out.println("로그인이 성공했습니다. <br>");
			out.println(id + "님 환영합니다. <br>");
			out.println(id + "<br>");
			out.println(pw + "<br>");
		}
		else {
			out.println("로그인이 실패했습니다.");
		}
	%>
</body>
</html>