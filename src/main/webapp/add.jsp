<%--
  Created by IntelliJ IDEA.
  User: Misha
  Date: 18.02.2019
  Time: 17:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Добавление пользователя</title>
</head>
<body>

    <form action = "/servlet" method = "POST">
        <p>Введите фамилию: <input type = "text" name = "surname"></p>
        <p>Введите имя: <input type = "text" name = "name"></p>
        <p>Введите возраст: <input type = "text" name = "age"></p>
        <p>Пол: <input type="radio" name="gender"  value="MALE">Мужской
            <input type="radio" name="gender" value="FEMALE">Женский</p>
        <p><input type = "submit" name="submit" value = "Добавить" /></p>

    </form>
    <form action="index.jsp" method="GET">
        <p><input type = "submit" value = "Пользователи" /></p>
    </form>
</body>
</html>
