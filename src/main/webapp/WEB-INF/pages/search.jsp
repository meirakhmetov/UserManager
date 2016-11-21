<%--
  Created by IntelliJ IDEA.
  User: Мейир
  Date: 21.11.2016
  Time: 19:58
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>


<html>
<head>
    <title>Search</title>

    <style type="text/css">
        .tg {
            border-collapse: collapse;
            border-spacing: 0;
            border-color: #ccc;
        }
        .tg td {
            font-family: Arial, sans-serif;
            font-size: 14px;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #fff;
        }
        .tg th {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: normal;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #f0f0f0;
        }
        .tg .tg-4eph {
            background-color: #f9f9f9
        }
    </style>

</head>
<body>
<h1>Search User</h1>
<c:if test="${!empty searchUser}">
    <table class="tg">
        <tr>
            <th width="80">id</th>
            <th width="120">name</th>
            <th width="120">age</th>
            <th width="120">isAdmin</th>
            <th width="120">createdDate</th>
        </tr>
        <c:forEach items="${searchUser}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.age}</td>
                <td>${user.isAdmin}</td>
                <td>${user.createdDate}</td>
                <td><a href="<c:url value='/remove/${user.id}'/>">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
    <br>
    <c:forEach items="${searchUser}" var="user">
        <h1>Edit User</h1>
        <form id="editForm" method="post" action="/user/add">
            <table width="100%" cellspacing="0" cellpadding="4">
                <tr>
                    <td align="right" width="100">ID</td>
                    <td><input size="8" type="text" id="id-field" name="id" form="editForm" readonly value="${user.id}" placeholder="${user.id}"></td>
                </tr>
                <tr>
                    <td align="right" width="100">Name</td>
                    <td><input type="text" id="name-field" name="name" form="editForm" required placeholder="Enter user name"></td>
                </tr>
                <tr>
                    <td align="right" width="100">Age</td>
                    <td><input type="text" id="age-field" name="age" form="editForm" pattern="[0-9]+" required placeholder="Enter age"></td>
                </tr>
                <tr>
                    <td align="right" width="100">isAdmin</td>
                    <td><input type="text" id="isAdmin-field" name="isAdmin" form="editForm" pattern="(true|false)" required placeholder="Enter true or false"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Edit User" form="editForm"></td>
                </tr>
            </table>
        </form>
    </c:forEach>
</c:if>

<a href="/user">Back to Users list</a>
</body>
</html>