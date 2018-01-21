<%--
  Created by IntelliJ IDEA.
  User: David
  Date: 21.01.2018
  Time: 1:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css"/>
    <title>index</title>
</head>
<body>
<div class="container">

    <c:form  method="POST"  commandName="category"  action="${pageContext.request.contextPath}/category/edit/${category.id}.html">

        <div class="form-group">
            <c:label for="inputTitle" path="title">Název kategorie</c:label>
            <c:input type="text" class="form-control" id="inputTitle" path="title" placeholder="title" required="required"></c:input>
        </div>
        <button type="submit" value="Edit" class="btn btn-primary">Upravit</button>
    </c:form>

    <p><a href="${pageContext.request.contextPath}/setting.html">Setting</a></p>
    <p><a href="${pageContext.request.contextPath}/index.html">Home page</a></p>
</div>
</body>
</html>

