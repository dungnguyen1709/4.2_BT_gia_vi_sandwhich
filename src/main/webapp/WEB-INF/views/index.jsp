<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: LapTop
  Date: 9/14/2020
  Time: 9:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sandwich Condiment</title>
</head>
<body>
<h1 style="color: red;">Sandwich Condiments</h1>
<form method="post" action="/save">
    <label>Lettuce
    <input type="checkbox" name="condiment" value="lettuce"></label>
    <label>Tomato
        <input type="checkbox" name="condiment" value="tomato"></label>
    <label>Mustard
        <input type="checkbox" name="condiment" value="mustard"></label>
    <label>Sprouts
        <input type="checkbox" name="condiment" value="sprouts"></label>
    <br>
    <hr>
    <input type="submit" value="Save">

</form>
<c:if test="${condiment != null}">
    <c:forEach items="${condiment}" var="sandwich">
        <c:out value="${sandwich}"></c:out>
    </c:forEach>
</c:if>
</body>
</html>
