<%--
  Created by IntelliJ IDEA.
  User: abedhariri
  Date: 08/03/2020
  Time: 14.55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Opret Bruger</title>
</head>
<body>

Her kan du registrere dig som bruger på huskelisten

<br>
${requestScope.besked}
<br>

<form action="OpretServlet" method="post">
    <label for="fname">First name:</label><br>
    <input type="text" id="fname" name="navn"><br>
    <label for="lname">Last name:</label><br>
    <input type="text" id="lname" name="kodeord"><br><br>
    <input type="submit" value="login">
</form>


</body>
</html>
