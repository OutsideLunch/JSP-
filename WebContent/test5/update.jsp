<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	h3 {
		margin : 5px;
	}
	label, input {
		margin : 5px;
		padding : 5px;
	}
	
	button {
		margin : 5px;
		padding : 10px;
	}
</style>
</head>
<body>
	<h3>수정할 테이블</h3>
	<form action="./update_process.jsp">
		<label for="num">번호 : </label>
		<input type="text" id="num" name="num"><br>
		<label for="title">제목 : </label>
		<input type="text" id="title" name="title"><br>
		<label for="comments">내용 : </label>
		<textarea rows="5" cols="50" id="comments" name="comments"></textarea><br>
		<label for="id">아이디 : </label>
		<input type="text" id="id" name="id"><br>
		<label for="pw">비번 : </label>
		<input type="password" id="pw" name="pw"><br>
		<button type="submit">수정</button>
	</form>
</body>
</html>