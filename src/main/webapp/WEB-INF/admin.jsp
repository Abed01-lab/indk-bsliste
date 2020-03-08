<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: abedhariri
  Date: 08/03/2020
  Time: 18.05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin</title>
</head>
<body>

Nu er du på admin siden...
<br>
Du kan se og slette brugere

<br>
<br>
<c:forEach var="element" items="${applicationScope.brugerMap}">

    ${element}
    <br>

</c:forEach>

<br>
<br>
    ${requestScope.besked}
<br>
<form action="AminServlet" method="post">
    <label for="fname">Slet bruger:</label><br>
    <input type="text" id="fname" name="navn"><br>
    <input type="submit" value="slet">
</form>

</body>
</html>
