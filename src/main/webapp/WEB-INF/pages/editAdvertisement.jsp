<%--
  Created by IntelliJ IDEA.
  User: Martin
  Date: 21. 1. 2018
  Time: 20:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags/form" %>
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

    <c:form method="POST" commandName="advertisement"
            action="${pageContext.request.contextPath}/advertisement/edit/${advertisement.id}.html">

    <div class="form-row">
        <c:label for="inputTitle" path="title">Název</c:label>
        <c:input type="text" class="form-control" id="inputTitle" path="title" placeholder="title"
                 required="required"></c:input>
    </div>
    <div class="form-row">

        <c:label for="inputDescription" path="description">Popis</c:label>
        <c:input type="text" class="form-control" id="inputDescription" path="description" placeholder="description"
                 required="required"></c:input>
        <label for="category">Zvolte kategorii</label>
        <select class="form-control" id="category" path="category" name="category">
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
        </select>
        <!--<div class="form-group col-md-6">
            <label for="inputPassword2" >Password</label>
            <input type="password" class="form-control" id="inputPassword2"  placeholder="Password" required="required"></input>
        </div>-->
    </div>
    <div class="form-row">
        <c:label for="inputPrice" path="price">Cena</c:label>
        <c:input type="text" class="form-control" id="inputPrice" path="price" placeholder="price"
                 required="required"></c:input>
    </div>
    <div class="form-row">
        <c:label for="inputLocation" path="location">Lokace</c:label>
        <c:input type="text" class="form-control" id="inputLocation" path="location" placeholder="location"
                 required="required"></c:input>
    </div>
</div>
<button type="submit" value="Edit" class="btn btn-primary">Upravit</button>
</c:form>
<p><a href="${pageContext.request.contextPath}/setting.html">Setting</a></p>
<p><a href="${pageContext.request.contextPath}/index.html">Home page</a></p>
</div>
</body>
</html>


