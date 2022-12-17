<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Contacts</title>
    <style>
        body {
            background-size: 100%;
            background-image:url(https://scontent-fra3-1.xx.fbcdn.net/v/t1.6435-9/131271003_3323130694464370_7301781115550673666_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=a26aad&_nc_ohc=axIkBbfmEpwAX88c4IE&_nc_ht=scontent-fra3-1.xx&oh=00_AfAwq4njIWiDyhzk1w9gsL4XkWfDNDd2Lmc3z57w-QCViQ&oe=63BEA830);
            background-position: top;
            background-repeat: no-repeat;
        }
        .box{
            background-image: url("https://sun9-west.userapi.com/sun9-7/s/v1/ig2/OgsBmTw3CkoysRQHqqb4HjW3eRs0g5Pfwzecv-YAqIxvn8Hu5GIa9nemm6tX03Uw5XeAhIAS3Cq48NLYUQbi9LDo.jpg?size=450x450&quality=95&type=album");
            background-size: auto;
            border: 8px solid violet;
            width: 290px;
            height: 290px;
            padding: 80px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            border-radius: 16px;
            opacity: 0.9;
            text-align: center;
        }
        #navbar {
            height: 30px;
            background-color: #666;
            padding-left: 25px;
            min-width: 470px;
            opacity: 0.9;
        }
        #navbar li {
            float: left;
            position: relative;
            height: 100%;
        }
        #navbar li a {
            display: block;
            padding: 6px;
            width: 100px;
            color: #fff;
            text-decoration: none;
            text-align: center;
        }
        #navbar ul li { float: none; }
        #navbar li:hover { background-color: #f90; }

        .text-center{
            text-align: end;
            color: darkviolet;
            position: absolute;
            top: 89%;
            left: 11%;
        }
    </style>
</head>
<ul id="navbar">
    <li><a href="${pageContext.request.contextPath}/">Главная</a></li>
    <li><a href="${pageContext.request.contextPath}/route">Маршрут</a></li>
    <li><a href="${pageContext.request.contextPath}/aboutUs">О нас</a></li>
</ul>
<body>

<form class="box" action="${pageContext.request.contextPath}/contacts" method="get">
    <h3 class="text-center">+375(44)749-78-78   Ежедневно с 9:00-20:00</h3>
</form>
</body>
</html>
