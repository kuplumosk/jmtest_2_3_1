<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>All users</title>
</head>

<body>
<h2>All users</h2>
<hr>
<br>
<table style="width:400px; text-align:left">
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Department</th>
        <th>Salary</th>
        <th style="text-align: center">Operations</th>
    </tr>

    <c:forEach var="user" items="${allUsers}">

        <c:url var="updateButton" value="/updateInfo">
            <c:param name="userId" value="${user.id}"/>
        </c:url>

        <c:url var="deleteButton" value="/deleteUser">
            <c:param name="userId" value="${user.id}"/>
        </c:url>

        <tr>
            <td>${user.name}</td>
            <td>${user.surname}</td>
            <td>${user.department}</td>
            <td>${user.salary}</td>
            <td style="text-align: center">
                <input type="button" value="Update"
                       onclick="window.location.href='${updateButton}'"/>
                <input type="button" value="Delete"
                       onclick="window.location.href='${deleteButton}'"/>
            </td>
        </tr>
    </c:forEach>
    <br>

</table>
<br>
<hr>
<br>
<input type="button" value="Add user" onclick="window.location.href = 'addNewUser'">

</body>
</html>