<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
    <title>Users Page</title>

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
<a href="../../index.jsp">Back to main menu</a>

<br/>
<br/>

<h1>User List</h1>

<c:if test="${!empty listUsers}">
    <display:table class="tg" id="user" name="listUsers" requestURI="user" pagesize="10">
        <display:column property="id" title="ID" sortable="true"/>
        <display:column property="name" title="Name" sortable="true"/>
        <display:column property="age" title="Age" sortable="true"/>
        <display:column property="isAdmin" title="isAdmin" sortable="true"/>
        <display:column property="createdDate" title="createdDate" sortable="true"/>
    </display:table>

    <%--<table class="tg">--%>
    <%--<tr>--%>
    <%--<th width="80">id</th>--%>
    <%--<th width="120">name</th>--%>
    <%--<th width="120">age</th>--%>
    <%--<th width="120">isAdmin</th>--%>
    <%--<th width="120">createdDate</th>--%>
    <%--<th width="60">Edit</th>--%>
    <%--<th width="60">Delete</th>--%>
    <%--</tr>--%>
    <%--<c:forEach items="${listUsers}" var="user">--%>
    <%--<tr>--%>
    <%--<td>${user.id}</td>--%>
    <%--<td><a href="/userdata/${user.id}" target="_blank">${user.name}</a></td>--%>
    <%--<td>${user.age}</td>--%>
    <%--<td>${user.isAdmin}</td>--%>
    <%--<td>${user.createdDate}</td>--%>
    <%--<td><a href="<c:url value='/edit/${user.id}'/>">Edit</a></td>--%>
    <%--<td><a href="<c:url value='/remove/${user.id}'/>">Delete</a></td>--%>
    <%--</tr>--%>
    <%--</c:forEach>--%>
    <%--</table>--%>
</c:if>

<h1>Add a User</h1>

<form id="addForm" method="post" action="/user/add">
    <table width="100%" cellspacing="0" cellpadding="4">
        <tr>
            <td align="right" width="100">Name</td>
            <td><input type="text" id="name-field" name="name" form="addForm" required placeholder="Enter user name"></td>
        </tr>
        <tr>
            <td align="right" width="100">Age</td>
            <td><input type="text" id="age-field" name="age" form="addForm" pattern="[0-9]+" required placeholder="Enter a valid age"></td>
        </tr>
        <tr>
            <td align="right" width="100">isAdmin</td>
            <td><input type="text" id="isAdmin-field" name="isAdmin" form="addForm" pattern="(true|false)" required placeholder="Enter true or false"></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Add User" form="addForm"></td>
        </tr>
    </table>
</form>

<%--<c:url var="addAction" value="/user/add"/>--%>

<%--<form:form action="${addAction}" commandName="user">--%>
<%--<table>--%>
<%--<tr>--%>
<%--<td>--%>
<%--<form:label path="name">--%>
<%--<spring:message text="name"/>--%>
<%--</form:label>--%>
<%--</td>--%>
<%--<td>--%>
<%--<form:input path="name"/>--%>
<%--</td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<td>--%>
<%--<form:label path="age">--%>
<%--<spring:message text="age"/>--%>
<%--</form:label>--%>
<%--</td>--%>
<%--<td>--%>
<%--<form:input path="age"/>--%>
<%--</td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<td>--%>
<%--<form:label path="isAdmin">--%>
<%--<spring:message text="isAdmin"/>--%>
<%--</form:label>--%>
<%--</td>--%>
<%--<td>--%>
<%--<form:input path="isAdmin"/>--%>
<%--</td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<td colspan="2">--%>
<%--<input type="submit"--%>
<%--value="<spring:message text="Add User"/>"/>--%>
<%--</td>--%>
<%--</tr>--%>
<%--</table>--%>
<%--</form:form>--%>

<h1>Search a User</h1>

<form id="searchForm" method="post" action="/user/searchUser">
    <label><b>Search by id</b>
        <input id="search-field" name="id" type="text" form="searchForm" pattern="[0-9]+" required placeholder="Enter User id for search">
    </label>
    <input type="submit" value="Search" form="searchForm">
</form>

</body>
</html>