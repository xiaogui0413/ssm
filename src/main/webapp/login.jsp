<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
</head>
<body>
<form action="loginGroup" method="post">
        <label class="error" id="msg">${msg }</label><br/>
        学号/手机<input id="usename" placeholder="学号/手机" name="username" type="text"/><br/>
       密码 <input id="password" placeholder="登录密码" name="password" type="password"/>
        <div class="bt clear">
            <input id="submit" type="submit" value="登录" />
        </div>
        <a href="selectList">selectList </a>
        
    </form>
</body>
</html>