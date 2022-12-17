<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="p" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Completed order</title>
    <style>
        body {
            background-size: 100%;
            background-image:url(https://sun9-north.userapi.com/sun9-86/s/v1/ig2/btu_E-vZs7PWfpyyW36DHI7AEDDKIVONGoceX-bOdO92_0MK42MH0FIUx9sjya0UocuTocrtg5gE4jhwWTno9vQ9.jpg?size=1910x1032&quality=95&type=album);
            background-repeat: no-repeat;
            background-position: center;
        }
        .f{
            border: 4px solid #3498db;
            width: 300px;
            height: 150px;
            padding: 40px;
            position: absolute;
            top: 40%;
            left: 49%;
            transform: translate(-50%,-50%);
            border-radius: 14px;
            background: white;
            opacity: 0.9;
            text-align: center;
        }
        .b[type = "submit"]{
            background: orange;
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
        .b[type = "submit"]:hover{
            background: #2ecc71;
        }

    </style>
</head>
<body>
<form class="f" action="${pageContext.request.contextPath}/">
    <h3>ILYA, Ваша заявка успешно принята. Ждем вас 17.12.22 11:00.
    <br>
        <br>
    Спасибо за выбор TOP_WHEELS!
</h3>
    <button class="b" type="submit">На главную</button>
</form>
</body>
</html>
