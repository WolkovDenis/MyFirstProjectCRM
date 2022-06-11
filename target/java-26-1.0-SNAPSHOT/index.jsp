

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;1,100;1,300&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" href="/recourses/CSS/Style.css/style.css">
    <title>Title page</title>
</head>

<body>
<section>

    <p class="hat">Система управления студентами и их успеваемостью</p>
    <c:choose>
        <c:when test="${isLogin eq 1}">
            <a class="logout" href="/logout">${login}, Logout</a>
        </c:when>
        <c:otherwise>
            <a class="logout" href="/login">Login</a>
        </c:otherwise>
    </c:choose>


    <nav>
        <a class="students" href="/students">Студенты</a>

        <a class="disciplines" href="/disciplines">Дисциплины</a>

        <a class="terms" href="/terms">Семестры</a>
    </nav>

</section>
</body>

</html>
