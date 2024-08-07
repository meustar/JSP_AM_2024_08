<%@ page import="java.util.Map"  %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
boolean isLogined = (boolean) request.getAttribute("isLogined");
int loginedMemberId = (int) request.getAttribute("loginedMemberId");
Map<String, Object> loginedMember = (Map<String, Object>) request.getAttribute("loginedMember");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
</head>
<body>
	<h1>MAIN</h1>
	
	<div><%=loginedMemberId%></div>
	<div><%=loginedMember%></div>
	
	<%
	if (isLogined) {
	%>
	<div><a href="../member/doLogout">로그아웃</a></div>
	<%
	}
	%>
	
	<%
	if (!isLogined) {
	%>
	<div><a href="../member/doLogin">로그인</a></div>
	<%
	}
	%>
	
	
	<ul>
		<li><a href="../member/account">회원가입</a></li>
		<li><a href="../article/write">글쓰기</a></li>
		<li><a href="../article/list">리스트로 이동</a></li>
	</ul>
</body>
</html>