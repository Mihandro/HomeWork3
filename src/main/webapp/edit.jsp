<%@ page import="model.User" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="service.UserService" %>
<%@ page import="java.util.Collection" %><%--
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

    <%
        int id = Integer.parseInt(request.getParameter("id"));
        User user = UserService.getUser(id);
    %>
    <form action = "/editUser" method = "POST">
        <p>Фамилия: <input type = "text" name = "surname" value="<%= user.getSurname() %>"></p>
        <p>Имя:     <input type = "text" name = "name" value="<%= user.getName() %>"></p>
        <p>Возраст: <input type = "text" name = "age" value="<%= user.getAge() %>"></p>
        <p>Пол:     <input type="radio" name="gender" checked value="MALE">Мужской
                    <input type="radio" name="gender" <%= ("FEMALE".equals(user.getGender().toString())?"checked":"")%> value="FEMALE">Женский</p>
        <input type="number" hidden name="id" value="<%= user.getId() %>">
        <p><input type = "submit" name="gender" value = "Изменить" /></p>
    </form>
    <form action="index.jsp" method="GET">
        <p><input type = "submit" value = "Пользователи" /></p>
    </form>
</body>
</html>
