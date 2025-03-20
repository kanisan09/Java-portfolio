<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="model.User,model.Mutter,java.util.List" %>
<%
// セッションスコープに保存されたユーザー情報を取得
User loginUser = (User) session.getAttribute("loginUser");
// アプリケーションスコープに保存されたつぶやきリストを取得
List<Mutter> mutterList = (List<Mutter>) application.getAttribute("mutterList");
// リクエストスコープに保存されたエラーメッセージを取得
String errorMsg = (String) request.getAttribute("errorMsg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>のんねむ</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body class="custom-body">
<div class="container">
<div class="left-content">
<a href="index.jsp">
<img src="images/menulogo.png" alt="ロゴ" class="logo3">
</a>
<p>眠る前のひと時をつぶやいてみよう。</p>
<p>
<%= loginUser.getName() %>さん、ログイン中
<p><a href="Logout" class="btn-small">ログアウト</a></p>
</p>
<hr style="width: 80%;">
<p style="padding-right: 220px;"><a href="Main" class="btn-small">更新</a></p>
<form action="Main" method="post">
<textarea name="text" rows="4" cols="50" style="width: 264px; height: 94px;"></textarea><br>
<div style="text-align: center;">
  <input type="submit" value="つぶやく" class="button">
</div>
</div>
</form>

<div class="right-content">
<h2>★☆　　　　　　　　　　　☆★</h2>
<hr>
<% if (errorMsg != null && !errorMsg.isEmpty()) { %>
<p><%= errorMsg %></p>
<% } %>
<% for(Mutter mutter : mutterList) {%>
 <p><%= mutter.getUserName() %>：<%= mutter.getText() %></p>
<% } %>
</div>
</div>
</body>
</html>