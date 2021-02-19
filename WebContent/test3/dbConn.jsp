<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

	<%
		Connection conn = null;	

		try {
			String url="jdbc:mysql://localhost:3306/testdb?serverTimezone=UTC&characterEncoding=UTF-8";
			String userId="springb";
			String userPw="asdf1234";
		
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, userId, userPw);
			out.println("testdb 데이터 베이스에 접속 성공하였습니다.");
		}
		catch (SQLException ex) {
			out.println("testdb 데이터 베이스 접속에 오류가 발생하였습니다.<br>");
			out.println("SQLException : " + ex.getMessage());
		}
	%>