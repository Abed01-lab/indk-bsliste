<%--
  Created by IntelliJ IDEA.
  User: abedhariri
  Date: 08/03/2020
  Time: 12.48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Indkøbs Liste</title>
</head>
<body>

<h1>Velkommen til din online indkøbsliste.</h1>

<br>



${requestScope.besked}
<br>
<form action="LoginServlet" method="post">
    <label for="fname">Navn:</label><br>
    <input type="text" id="fname" name="navn"><br>
    <label for="lname">Kodeord:</label><br>
    <input type="text" id="lname" name="kodeord"><br><br>
    <input type="submit" value="login">
</form>

</body>
</html>
