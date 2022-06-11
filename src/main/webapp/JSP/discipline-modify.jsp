
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Discipline Modifying</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;1,100;1,300&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" href="../recourses/CSS/Style.css/style.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
    <script>
        $( function() {
            $( "#datepicker" ).datepicker();
        } );
    </script>

</head>

<body>
<section>

    <p class="hat">Система управления студентами и их успеваемостью</p>
    <p class="create">Для того чтобы модифицировать дисциплину введите новое значение поля и нажмите кнопку
        "Применить."
    </p>
    <c:choose>
        <c:when test="${isLogin eq 1}">
            <a class="logout" href="/logout">${login}, Logout</a>
        </c:when>
        <c:otherwise>
            <a class="logout" href="/login">Login</a>
        </c:otherwise>
    </c:choose>

    <nav class="name_back">
        <a class="name" href="/">На главную</a>
        <a class="back" href="/disciplines">Назад</a>
    </nav>
    <div class="main_2">
        <form action="/discipline-modify" method="post">
            <input type="hidden" name="id" value="${discipline.id}">
            <p><label>Название</label>
                <input type="text" name="discipline" value="${discipline.discipline}">
             </p>
            <p> <input class="input_2" type="submit" value="Применить"></p>
        </form>
        <c:if test="${error == '1'}">
            <p class="comments">Поля не должны быть пустыми!</p>
        </c:if>
    </div>
</section>
</body>
