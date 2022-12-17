<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Route</title>
    <style>
        body {
            background-size: 100%;
            background-image:url(https://www.thedrive.com/content/2022/02/Best-Tire-Brands.jpg?quality=85&auto=webp&optimize=high&quality=70&width=3840);
            background-position: top;
            background-repeat: no-repeat;
        }
        .box{
            background-color: #666666;
            background-size: auto;
            height: 300px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            border-radius: 16px;
        }
        #navbar ul{
            display: none;
            background-color: #f90;
            position: absolute;
            top: 100%;
            opacity: 0.92;
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

    </style>
</head>
<ul id="navbar">
    <li><a href="${pageContext.request.contextPath}/">Главная</a></li>
    <li><a href="${pageContext.request.contextPath}/contacts">Контакты</a></li>
    <li><a href="${pageContext.request.contextPath}/aboutUs">О нас</a></li>
</ul>
<body>

<form class="box" action="${pageContext.request.contextPath}/route" method="get">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d550.2838831752814!2d27.540790888431438!3d53.910868202111175!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x46dbcf362fda7213%3A0x5831b0faf1927cb2!2sTop%20Wheels!5e1!3m2!1sru!2sby!4v1671194563411!5m2!1sru!2sby" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
</form>
</body>
</html>
