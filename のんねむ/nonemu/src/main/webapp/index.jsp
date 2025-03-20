<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>のんねむ</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="logo">
<img src="images/menulogo.png" alt="ロゴ">
</div>
<p>～なんだかねむれない人があつまるつぶやきツールです～</p>
<p style="font-size: 10px;">< ID: userA / pass: 1234 ></p>
<form action = "Login" method = "post">
<p>ユーザー名<input type = "text" name = "name"></p>
<p>パスワード<input type = "password" name = "pass"></p>
<p style="text-align: center;">
        <input type="submit" value="ログイン" class="button">
</p>
</form>
</body>
</html>