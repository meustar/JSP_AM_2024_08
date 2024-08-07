<%@ page import="java.util.List"  %>
<%@ page import="java.util.Map"  %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성 페이지</title>
</head>
<body>
	
<!-- 	<a href="../home/main">메인 페이지로</a> -->

	<h2>로 그 인</h2>
	
	<form method="POST" action="doLogin">
		<div>
			아이디 : <input type="text" placeholder="ID" name="loginId"/>
		</div>
		<div>
			비밀번호 : 
			<input type="Passward" placeholder="Passward" name="loginPw"/>
		</div>
		<button type="submit">로그인</button>
		<button type="">로그아웃</button>
	</form>
	
	<div><a style="color: yellowgreen" href="../home/main">HOME</a></div>
	
</body>
</html>