<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table {
		width : 100%;
		height : 200px;
		border : 1px solid black;
		border-collapse : collapse;
	}
	
	td, th {
		border : 1px solid black;
	}
</style>
</head>
<body>
	<%@ include file="dbConn.jsp" %>
	<table>
	<thead>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>내용</th>
			<th>아이디</th>
			<th>비번</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr>
	</thead>
	<tbody>
	<%
		ResultSet rs = null;
		Statement stmt = null;
		
		try {
			String query = "select * from test45";
			
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			
			while (rs.next()) {
				String num = rs.getString("num");
				String title = rs.getString("title");
				String comments = rs.getString("comments");
				String id = rs.getString("id");
				String pw = rs.getString("pw");
				String cdate = rs.getString("cdate");
				String views = rs.getString("views");
				%>
				<tr>
					<td><%= num %></td>
					<td><%= title %></td>
					<td><%= comments %></td>
					<td><%= id %></td>
					<td><%= pw %></td>
					<td><%= cdate %></td>
					<td><%= views %></td>
				</tr>
				<%
			}
		}
		catch (SQLException ex) {
			out.println("test45 테이블 조회를 실패했습니다.");
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
	</tbody>
	</table>
</body>
</html>