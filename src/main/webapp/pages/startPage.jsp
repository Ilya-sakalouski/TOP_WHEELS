<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>StartPage</title>
    <style>
        body {
            background-size: 100%;
            background-image:url(https://sun9-west.userapi.com/sun9-71/s/v1/ig2/CbAzU3vRrOS5KdSen24x00maAUsfTvpk0Nsizy6ueaQRA_UGxfXoWf40hYrGJlIv9O7w31g0yJJMhJvuLNXlBCSu.jpg?size=1080x622&quality=95&type=album);
            background-position: top;
            background-repeat: no-repeat;
        }
        .box input[type = "submit"]{
            border: 0;
            opacity: 0.83;
            width: 40%;
            background: #f90;
            display: block;
            margin: 0 30%;
            position: absolute;
            top: 90%;
            text-align: center;
            border: 2px solid white;
            padding: 14px 60px;
            outline: none;
            color: white;
            font: bold 35px Muna;
            border-radius: 20px;
            transition: 0.25s;
            cursor: pointer;
        }
        .box input[type = "submit"]:hover{
            background: #2ecc71;
        }
         #navbar ul{
             display: none;
             background-color: #f90;
             position: absolute;
             top: 100%;
             opacity: 0.92;
         }
        #navbar li:hover ul { display: block; }
        #navbar, #navbar ul{
            margin: 0;
            padding: 0;
            list-style-type: none;
        }
        #navbar {
            height: 30px;
            background-color: #666;
            padding-left: 25px;
            min-width: 470px;
            opacity: 0.83;
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
        #navbar ul li:hover { background-color: #2ecc71; }
    </style>
</head>

<ul id="navbar">
    <li><a href="#">Контакты</a>
        <ul>
            <li><a href="${pageContext.request.contextPath}/contacts">Связаться с нами</a></li>
            <li><a href="${pageContext.request.contextPath}/route">Как добраться</a></li>
        </ul>
    </li>
    <li><a href="${pageContext.request.contextPath}/aboutUs">О нас</a></li>
</ul>
<body>

<form class="box" action="${pageContext.request.contextPath}/user/login" method="get">
    <input type="submit" name="" value="Записаться онлайн">
</form>

</body>
</html>
