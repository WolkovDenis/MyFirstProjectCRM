<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Student Progress</title>
    <meta charset="UTF-8">
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
</head>

<body>
<section class="scroll">

    <div>
        <p class="hat">Система управления студентами и их успеваемостью</p>

        <c:choose>
            <c:when test="${isLogin eq 1}">
                <a class="logout" href="/logout">${login}, Logout</a>
            </c:when>
            <c:otherwise>
                <a class="logout" href="/login">Login</a>
            </c:otherwise>
        </c:choose>

        <table class="table_4">
            <caption>Отображена успеваемость для следующего студента:</caption>
            <tr>
                <th style="width: 100px;">Фамилия</th>
                <th style="width: 250px;">Имя</th>
                <th style="width: 300px;">Группа</th>
                <th style="width: 200px;">Дата поступления</th>
            </tr>
            <tr>

                <td>${student.surname}</td>
                <td>${student.name}</td>
                <td>${student.group}</td>
                <td><fmt:formatDate pattern="dd/MM/yyyy" value="${student.date}"/></td>
            </tr>
        </table>
    </div>

    <nav class="name_back">
        <a class="name" href="/">На главную</a>
        <a class="back" href="/students">Назад</a>
    </nav>

    <div id="student_progress">

        <table class="table_5">

            <tr>
                <th>Дисциплина</th>
                <th>Оценка</th>
                <c:if test="${haveMarks} eq 1">

                </c:if>

            </tr>
            <c:forEach items="${marks}" var="m" varStatus="loop">
            <tr>
                <td>${m.discipline.discipline}</td>

                <c:if test="${m.mark ne -1}">
                <td>${m.mark}</td>
                </c:if>
            </tr>
            </c:forEach>
        </table>
    </div>


    <div id="select_1">
        <form action="/student-progress" method="get">
            <input type="hidden" name="progressHidden" value="${student.id}">
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
            <p>Средняя оценка за семестр:<fmt:formatNumber pattern="#,##0.00 " value="${avarage}"/> балла</p>

    </div>
</section>
</body>

</html>
