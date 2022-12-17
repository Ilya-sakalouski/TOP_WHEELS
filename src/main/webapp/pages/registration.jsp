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
            background-image:url(https://img2.goodfon.ru/wallpaper/nbig/f/14/audi-a7-tuning-vossen-white-1135.jpg);
            background-repeat: no-repeat;
            background-position: center;
        }

        body{
            margin-right: 1em;
            padding: 0;
            font-family: sans-serif;


        }
        .box{
            border: 2px solid #3498db;
            width: 300px;
            padding: 40px;
            position: absolute;
            top: 45%;
            left: 80%;
            transform: translate(-50%,-50%);
            border-radius: 14px;
            background: #191919;
            opacity: 0.93;
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
        .box input[type = "tel"],.box input[type = "tel"]{
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
        .box input[type = "tel"]:focus,.box input[type = "tel"]:focus{
            width: 280px;
            border-color: #2ecc71;
        }
        .box input[type = "text"],.box input[type = "password"]{
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
            background: none;
            display: block;
            margin: 20px auto;
            text-align: center;
            border: 2px solid #2ecc71;
            padding: 14px 25px;
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
<s:form cssClass="box" action="/user/registration" method="post" modelAttribute="user">
    <h1>Регистрация</h1>
    <s:input path="username" type="text" name="username" placeholder="Имя пользователя"/>
    <s:errors path="username"/>

    <s:input path="email" type="email" name="email" placeholder="Email"/>
    <s:errors path="email"/>

    <s:input path="phoneNumber" type="tel" name="phoneNumber" placeholder="Номер телефона"/>
    <s:errors path="phoneNumber"/>

    <s:input path="password" type="password" name="password" placeholder="Пароль"/>
    <s:errors path="password"/>

    <s:button type="submit">Зарегистрироваться</s:button>
    <a href="${pageContext.request.contextPath}/user/login">Вход</a> <a href="/">Главная</a>
</s:form>
<p style="color: red">${message}</p>
</body>
</html>