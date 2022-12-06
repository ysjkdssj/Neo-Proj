<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <link rel="stylesheet" href="/css/log/log.css">
</head>
<body>
    <div class="login-box">
        <h1>login</h1>
        <form action="/LoginServlet" method="post">
            <div class="login-box-input">
                <input type="text" name="id" required>
                <label>Your ID</label>
            </div>
            <div class="login-box-input">
                <input type="password" name="pwd" required>
                <label>Your Password</label>
            </div>
            <div class="login-label">
                <input type="submit" value="login"><br>
                <label>회원이 아니신가요??&nbsp;&nbsp;<a href="/html/logfornt/new.jsp">회원가입</a></label>
            </div>
        </form>
    </div>
</body>
</html>