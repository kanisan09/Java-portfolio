<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User" %>
<%
User loginUser=(User)session.getAttribute("loginUser");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>のんねむ</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="logo">
<a href="index.jsp">
<img src="images/menulogo.png" alt="ロゴ">
</a>
</div>
<% if (loginUser != null) { %>
<h1>　　ログインしました　　</h1>
<p>ようこそ<%= loginUser.getName() %>さん、ゆっくり楽しんでいってください。</p>
<a href = "Main" class="button">つぶやき投稿・閲覧へ</a>
<a href="index.jsp" class="button">トップへ</a>
<% } else { %>
<p>ログインに失敗しました</p>
<a href = "index.jsp" class="button">TOPへ</a>
<% } %>
</body>
</html