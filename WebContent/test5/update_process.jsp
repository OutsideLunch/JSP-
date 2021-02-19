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
	
		String num = request.getParameter("num");
		String title = request.getParameter("title");
		String comments = request.getParameter("comments");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		ResultSet rs = null;
		Statement stmt = null;
		
		try {
			String query = "select id, pw from test45 ";
			query += "where id = '" + id + "'";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			
			if (rs.next()) {
				String ID = rs.getString("id");
				String PW = rs.getString("pw");
				
				if (id.equals(ID) && pw.equals(PW)) {
					query = "update test45 set title = '" + title + "', comments = '" + comments + "' where id = '" + id + "'";
					stmt = conn.createStatement();
					stmt.executeUpdate(query);
					out.println("게시글이 수정되었습니다.");
				}
				else { 
					out.println("비밀번호가 다릅니다.");
				}
			}
			else { 
				out.println("일치하는 번호가 없습니다.");
			}
		}
		catch (SQLException ex) {
			out.println("게시글 수정에 실패하였습니다.<br>");
			out.println("SQLException : " + ex.getMessage());
		}
		finally {
			if (rs != null) {
				rs.close();				
			}
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












