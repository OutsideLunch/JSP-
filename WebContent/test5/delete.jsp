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
	<h3>삭제할 테이블</h3>
	<form action="./delete_process.jsp">
		<label for="num">번호 : </label>
		<input type="text" id="num" name="num"><br>
		<label for="id">아이디 : </label>
		<input type="text" id="id" name="id"><br>
		<label for="pw">비번 : </label>
		<input type="password" id="pw" name="pw"><br>
		<button type="submit">삭제</button>
	</form>
</body>
</html>