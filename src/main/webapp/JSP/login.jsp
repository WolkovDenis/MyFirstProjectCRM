<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <title>Login_page</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Students List</title>
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

    <h2 class="log_title">Вход в систему</h2>
    <form action="/login" method="post">
        <div class="log_page">
            <p>Введите логин:</p>
            <input type="text" name="login">
            <p>Введите пароль:</p>
            <input type="password" name="password">
            <p>Выберите роль:</p>
            <select name="role">
                <option value="3">Студент</option>
                <option value="2">Учетиль</option>
                <option value="1">Администратор</option>
            </select>
            <input type="submit" value="Войти">
        </div>
    </form>
    <p class="copyright"> &copy; 2022 Denis Volkov </p>
</section>
<c:if test="${error == '1'}">
    <p class="comments">Неверный логин или пароль,или роль!</p>
</c:if>


</body>

</html>
