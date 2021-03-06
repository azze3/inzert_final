<%--
  Created by IntelliJ IDEA.
  User: Martin
  Date: 21. 1. 2018
  Time: 20:50
  To change this template use File | Settings | File Templates.
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

<a href="${pageContext.request.contextPath}/advertisement/add.html" class="btn btn-primary">Přidat inzerát</a>
<table class="table table-hover">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">Název</th>
        <th scope="col">Popis</th>
        <th scope="col">Uživatel</th>
        <th scope="col">Kategorie</th>
        <th scope="col">Počet nahlášení</th>
        <th scope="col">Vytvořen</th>
        <th scope="col">Cena</th>
        <th scope="col">Lokace</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="advertisement" items="${advertisements}">
        <tr>
            <th  scope="row">${advertisement.id}</th>
            <td>${advertisement.title}</td>
            <td>${advertisement.description}</td>
            <td>${advertisement.user.id}</td>
            <td>${advertisement.category.id}</td>
            <td>${advertisement.reported}</td>
            <td>${advertisement.created}</td>
            <td>${advertisement.price}</td>
            <td>${advertisement.location}</td>
            <td>
                <a href="${pageContext.request.contextPath}/advertisement/edit/${advertisement.id}.html" class="btn btn-primary">Edit</a>
                <a href="${pageContext.request.contextPath}/advertisement/delete/${advertisement.id}.html" class="btn btn-danger">Delete</a>
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


