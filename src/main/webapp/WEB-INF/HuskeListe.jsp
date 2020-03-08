<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: abedhariri
  Date: 08/03/2020
  Time: 14.29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Huske Listen</title>
</head>
<body>

<h1>Du er nu på din huske liste og er klar til at tilføje emner</h1>

<br>

${requestScope.besked}
<br>
<form action="AddItemServlet" method="post">
    <label for="fname">Vare :</label><br>
    <input type="text" id="fname" name="vareNavn"><br>
    <input type="submit" value="Tilføj">
</form>


<c:forEach var="element" items="${sessionScope.basket}">

    ${element}
    <br>

</c:forEach>
<br>
<br>
<br>
<br>

<form action="LogOutServlet" method="post">
    <input type="submit" value="Log Ud">
</form>

</body>
</html>
