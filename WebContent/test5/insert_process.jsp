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
	<%@ include file="dbConn.jsp" %>
	<%
		request.setCharacterEncoding("UTF-8");
		
		String title = request.getParameter("title");
		String comments = request.getParameter("comments");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		Statement stmt = null;
		
		try {
			String query = "insert into test45 ";
			query += "(title, comments, id, pw, cdate, views) ";
			query += "values ('" + title + "', '" + comments + "', '";
			query += id + "', '" + pw + "', now(), 0)";
			
			stmt = conn.createStatement();
			int result = stmt.executeUpdate(query);
			
			out.println("게시물이 추가 되었습니다.");
		}
		catch (SQLException ex) {
			out.println("게시물 추가를 실패했습니다.<br>");
			out.println("SQLException : " + ex.getMessage());
		}
		finally {
			if (stmt != null) {
				stmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		}
		
	%>
</body>
</html>