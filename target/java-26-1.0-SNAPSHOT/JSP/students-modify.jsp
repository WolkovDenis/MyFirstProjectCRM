<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Student Modifying</title>
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
    <p class="create">Для модификации введите новые значения и нажмите кнопку "Применить."</p>

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
        <a class="back" href="/students">Назад</a>
    </nav>
    <div class="main_1">
        <form action="/student-modify" method="post">
                <input type="hidden" name="id" value="${student.id}">
            <p><label>Имя</label>
                <input type="text" name="surname" value="${student.surname}">
            </p>

            <p><label>Имя</label>
                <input type="text" name="name" value="${student.name}">
            </p>

            <p><label>Группа</label>
                <input type="text" name="group" value="${student.group}">
            </p>

            <p><label>Дата поступления</label>
                <input type="text" name="date" id="datepicker"value="<fmt:formatDate pattern="dd/MM/yyyy" value="${student.date}"/>">
            </p>

            <p><input class="input_4" type="submit" value="Применить"></p>
        </form>
        <c:if test="${error == '1'}">
            <p class="comments">Поля не должны быть пустыми!</p>
        </c:if>
    </div>

</section>
</body>

</html>
