<%@ page import="java.util.List"  %>
<%@ page import="java.util.Map"  %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	Map<String, Object> articleRow = (Map<String, Object>)request.getAttribute("articleRow");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 상세페이지</title>
</head>
<body>
	<h2>게시물 상세페이지</h2>
	
	<a href="../home/main">메인 페이지로</a>

	<div>번호 : <%=articleRow.get("id") %></div>
	<div>날짜 : <%=articleRow.get("regDate") %></div>
	<div>제목 : <%=articleRow.get("title") %></div>
	<div>내용 : <%=articleRow.get("content") %></div>
	
	<div><a style="color: yellowgreen" href="list">리스트로 돌아가기</a></div>
	
</body>
</html>