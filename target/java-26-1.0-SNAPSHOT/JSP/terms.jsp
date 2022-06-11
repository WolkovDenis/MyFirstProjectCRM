<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Terms List</title>
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

    <div id="term_list">
        <form action="/terms" method="get">
            <p>Выбрать семестр<select class="select_size" name="idSelectedTerm">
                <c:forEach items="${terms}" var="t">
                    <c:choose>
                        <c:when test="${t.id eq selectedTerm.id}">
                            <option selected value="${t.id}">${t.term}</option>
                        </c:when>
                        <c:otherwise>
                            <option value="${t.id}">${t.term}</option>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
            </select>
                <input class="input_5" type="submit" value="Выбрать">
            </p>
        </form>
        <p>Длительность семестра: ${selectedTerm.duration}</p>

        <table class="table_1">
            <caption> Список дисциплин семестра</caption>
            <tr>
                <th>Наименование дисциплины</th>
            </tr>
            <c:forEach items="${disciplines}" var="d">
                <tr>
                    <td>${d.discipline}</td>
                </tr>
            </c:forEach>
        </table>

    </div>

    <div id="container_2">
        <c:if test="${role eq 1}">
            <form action="/term-create" method="get">
                <input type="submit" value="Создать семестр...">
            </form>
            <form action="/term-modify" method="get">
                <input type="hidden" name="idTermModify" value="${selectedTerm.id}">
                <input type="submit" value="Модифицировать текущий семестр...">
            </form>

            <form action="/term-delete" method="get">
                <input type="hidden" name="idTermToDelete" value="${selectedTerm.id}">
                <input type="submit" value="Удалить текущий семестр">
            </form>
        </c:if>
    </div>

</section>
</body>
</html>
