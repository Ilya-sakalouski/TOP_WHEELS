<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="p" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="ru-RU">
<head>
    <title></title>
    <style>

    </style>
</head>
<body>
<h3>
   Проверьте правильность данных и нажмите "Подтвердить запись"
    <br>
    ${newEntry.entryTime}
    <br>
    ${newEntry.entryType}
    <br>
    ${newEntry.carType}
    <br>
    ${newEntry.wheelsDiameter}
    <br>
    ${newEntry.numberOfWheels}
    <br>
    ${newEntry.additionalServices}
    <br>
    ${newEntry.comment}
</h3>
<s:button>Подтвердить запись</s:button>
</body>
</html>
