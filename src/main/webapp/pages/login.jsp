<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="p" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
        body {
            background-size: 100%;
            background-image:url(https://sun9-east.userapi.com/sun9-18/s/v1/ig2/fbF0nCzZFyLlWTszVAfDSxZdS3A_IvJN0idu0oippP1k_yBknFdV4D8d0K_LTykR25i9HbjptKJScpI7NjzRXSYt.jpg?size=1080x1238&quality=95&type=album);
            background-repeat: no-repeat;
            background-position: center;
        }

        body{
            margin-right: 1em;
            padding: 0;
            font-family: sans-serif;


        }
        .box{
            border: 2px solid #2ecc71;
            width: 300px;
            padding: 40px;
            position: absolute;
            top: 33%;
            left: 15%;
            transform: translate(-50%,-50%);
            border-radius: 14px;
            background: #191919;
            opacity: 0.9;
            text-align: center;
        }
        .box h1{
            color: antiquewhite;
            text-transform: none;
            font-weight: 500;
        }
        .box input[type = "email"],.box input[type = "email"]{
            border: 0;
            background: none;
            display: block;
            margin: 20px auto;
            text-align: center;
            border: 2px solid #3498db;
            padding: 14px 10px;
            width: 200px;
            outline: none;
            color: white;
            border-radius: 24px;
            transition: 0.25s;
        }
        .box input[type = "email"]:focus,.box input[type = "email"]:focus{
            width: 280px;
            border-color: #2ecc71;
        }
        .box input[type = "text"],.box input[type = "password"]{
            border: 0;
            background: none;
            display: block;
            margin: 20px auto;
            text-align: center;
            border: 2px solid #3498db;
            padding: 14px 10px;
            width: 200px;
            outline: none;
            color: white;
            border-radius: 24px;
            transition: 0.25s;
        }
        .box input[type = "text"]:focus,.box input[type = "password"]:focus{
            width: 280px;
            border-color: #2ecc71;
        }
        .box button[type = "submit"]{
            border: 0;
            background: none;
            display: block;
            margin: 20px auto;
            text-align: center;
            border: 2px solid #2ecc71;
            padding: 14px 40px;
            outline: none;
            color: white;
            border-radius: 24px;
            transition: 0.25s;
            cursor: pointer;
        }
        .box button[type = "submit"]:hover{
            background: #2ecc71;
        }
    </style>
</head>
<body>
<s:form action="/user/login" method="post" modelAttribute="user" cssClass="box">
    <h1>Вход</h1>
    <s:input path="email" type="email" name="email" placeholder="Email"/>
    <s:errors path="email" cssStyle="color: red"/>

    <s:input path="password" name="password" type="password" placeholder="Пароль"/>
    <s:errors path="password" cssStyle="color: red"/>

    <s:button type="submit">Войти</s:button>
    <a href="${pageContext.request.contextPath}/user/registration">Регистрация</a> <a href="/">Главная</a>
</s:form>
<p style="color: red">${message}</p>
</body>
</html>

