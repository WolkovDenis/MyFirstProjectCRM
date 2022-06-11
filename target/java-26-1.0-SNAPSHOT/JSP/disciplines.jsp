<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Disciplines List</title>
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
<section class="scroll">


    <p class="hat">Система управления студентами и их успеваемостью</p>

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
    </nav>

    <div id="disciplines_list">

        <table class="table_3">
            <caption>Список дисциплин</caption>

            <tr>
                <th></th>
                <th>Наименование дисциплин</th>
            </tr>

            <c:forEach items="${disciplines}" var="dis">
                <tr>
                    <td>
                        <c:if test="${role eq 1}">
                            <input name="idDiscipline" type="checkbox" value="${dis.id}">
                        </c:if>
                    </td>
                    <td>${dis.discipline}</td>
                </tr>
            </c:forEach>

        </table>
    </div>

    <div id="container">
        <c:if test="${role eq 1}">
            <form action="/discipline-create">
                <input type="submit" value="Создать дисциплину...">
            </form>

            <input type="submit" value="Модифицировать выбранную дисциплину..." onclick="modifyDisciplines()">

            <input type="submit" value="Удалить выбранную дисциплину..." onclick="deleteDisciplines()">
        </c:if>
    </div>
</section>
</body>
<form action="/discipline-delete" method="post" id="deleteForm">
    <input type="hidden" id="deleteHidden" name="deleteHidden">
</form>
<form
        action="/discipline-modify" method="get" id="modifyForm">
    <input type="hidden" id="modifyHidden" name="modifyHidden">
</form>
</html>
