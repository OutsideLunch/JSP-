<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	label, input {
		padding : 5px;
		margin : 5px;
	}
	
	button {
		margin : 5px;
	}
</style>
</head>
<body>
	<form action="join_process.jsp" method="post">
		<label for="id">ID : </label>
		<input type="text" id="id" name="id"><br>
		<label for="pw">PW : </label>
		<input type="text" id="pw" name="pw"><br>
		<label for="name">Name : </label>
		<input type="text" id="name" name="name"><br>
		<label for="gender">Gender : </label>
		<input type="radio" id="gender" name="gender" value="남성">남성
		<input type="radio" id="gender" name="gender" value="여성">여성<br>
		<label for="email">Email : </label>
		<input type="email" id="email" name="email"><br>
		<label type="phone">PNumber : </label>
		<input type="number" name="phone1" id="phone1">-
		<input type="number" name="phone2" id="phone2">-
		<input type="number" name="phone3" id="phone3"><br>
		<label for="text">Address : </label>
		<textarea rows="3" cols="60" name="addr" id="addr"></textarea><br>
		<button type="submit">전송</button>
		<button type="reset">취소</button>
	</form>
</div>
</body>
</html>