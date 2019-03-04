<%@ page import="model.User" %>
<%@ page import="model.Gender" %>
<%@ page import="java.util.concurrent.ConcurrentHashMap" %>
<%@ page import="java.util.*" %>
<%@ page import="service.UserService" %>
<%--
  Created by IntelliJ IDEA.
  User: Misha
  Date: 18.02.2019
  Time: 16:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Table</title>
    <link rel="stylesheet" type="text/css" href="style/style.css">
  </head>
  <body>
    <table>
      <tr>
        <td>Имя</td>
        <td>Фамилия</td>
        <td>Возраст</td>
        <td>Пол</td>
      </tr>

      <%
        Collection<User> users = UserService.getAllUsers();

        out.println("</tr>");

        for (User user: users) {
          out.println("<tr>");
          out.println("<td>"+ user.getName()+"</td>");
          out.println("<td>"+ user.getSurname()+"</td>");
          out.println("<td>"+ user.getAge()+"</td>");
          out.println("<td>"+ user.getGender().translate+"</td>");
          out.println("<td class=\"button\">"+
                    "<form method=\"POST\" action=\"/edit.jsp\">"+
                      "<input type=\"number\" hidden name=\"id\" value=\""+user.getId()+
                  "\">"+
                      "<input type=\"submit\" value=\"Изменить\">"+
                    "</form>" +
                  "<form method=\"POST\" action=\"/deleteUser\">"+
                  "<input type=\"number\" hidden name=\"id\" value=\""+user.getId()+
                  "\">"+
                  "<input type=\"submit\" value=\" Удалить\">"+
                  "</form>"
                  +"</td>");
          out.println("</tr>");
        }
      %>

    </table>
    <form action="add.jsp">
      <input type="submit" value="Добавить">
    </form>
  </body>
</html>
