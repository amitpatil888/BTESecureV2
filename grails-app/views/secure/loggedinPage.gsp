<%--
  Created by IntelliJ IDEA.
  User: Amit
  Date: 1/6/2016
  Time: 5:23 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
Hello this is my landing page

<form name="logout" method="POST" action="${createLink(controller:'logout') }">
    <input type="submit" value="logout"></form>
</body>
</html>