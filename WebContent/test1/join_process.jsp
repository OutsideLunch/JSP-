<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
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
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		String addr = request.getParameter("addr");
		
		out.println("ID : " + id + "<br>");
		out.println("PW : " + pw + "<br>");
		out.println("Name : " + name + "<br>");
		out.println("Gender : " + gender + "<br>");
		out.println("Email : " + email + "<br>");
		out.println("phone : " + phone1 + " - " + phone2 + " - " + phone3 + "<br>");
		out.println("Address : " + addr);
	%>
</body>
</html>