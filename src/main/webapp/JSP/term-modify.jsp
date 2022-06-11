<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Term Modifying</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;1,100;1,300&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" href="../recourses/CSS/Style.css/style.css">
    <script src="../recourses/js/function.js"></script>

</head>

<body>
<section>

    <p class="hat">Система управления студентами и их успеваемостью</p>
    <p class="create">Для модификации семестра отредактируйте данные и нажмите кнопку "Применить."

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
        <a class="back" href="/terms">Назад</a>
    </nav>

    <div class="main_3">
        <form action="/term-modify" method="post">
            <input type="hidden" name="idTermModify" value="${term.id}">
            <p><label>Длительность(в неделю)</label>
                <input name="duration" type="text" value="${term.duration}">
            </p>

            <p><label>Дисциплины в семестре</label>
                <select multiple name="idsDisc">
                    <c:forEach items="${disciplines}" var="d">
                        <option value="${d.id}">${d.discipline}</option>
                    </c:forEach>
                </select>
            </p>

            <p><input class="input_5" type="submit" value="Применить"></p>
        </form>
    </div>
</section>
</body>

</html>