<%--
  Created by IntelliJ IDEA.
  User: David
  Date: 19.01.2018
  Time: 15:05.
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css"/>
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">-->
    <title>Setting</title>
</head>

<a href="${pageContext.request.contextPath}/user/add.html" class="btn btn-primary">Přidat uživatele</a>
<table class="table table-hover">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">Jméno</th>
        <th scope="col">Příjmení</th>
        <th scope="col">Login</th>
        <th scope="col">Heslo</th>
        <th scope="col">Tel. číslo</th>
        <th scope="col">Email</th>
        <th scope="col">Rating</th>
        <th scope="col">Práva</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="user" items="${users}">
        <tr>
            <th  scope="row">${user.id}</th>
            <td>${user.firstName}</td>
            <td>${user.lastName}</td>
            <td>${user.login}</td>
            <td>${user.password}</td>
            <td>${user.phoneNumber}</td>
            <td>${user.email}</td>
            <td>${user.rating}</td>
            <td>${user.privileges}</td>
            <td>
                <a href="${pageContext.request.contextPath}/user/edit/${user.id}.html" class="btn btn-primary">Edit</a>
                <a href="${pageContext.request.contextPath}/user/delete/${user.id}.html" class="btn btn-danger">Delete</a>
            </td>
        </tr>
    </c:forEach>

    </tbody>
</table>
<p><a href="${pageContext.request.contextPath}/setting.html">Setting</a></p>
<p><a href="${pageContext.request.contextPath}/index.html">Home page</a></p>
<body>

</body>
</html>

