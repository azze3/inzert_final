<%--
  Created by IntelliJ IDEA.
  User: David
  Date: 20.01.2018
  Time: 1:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">    <!-- dodelat relativni linky!!!-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/style/css/bootstrap.css"/>
    <link href=${pageContext.request.contextPath}"/resources/style/css/signin.css" rel="stylesheet">
    
    <title>Inzert</title>
</head>

<body>

<div class="container">

    <form class="form-signin">
        <h2 class="form-signin-heading">Příhlaste se:</h2>
        <label for="inputLogin" class="sr-only">Login</label>
        <input type="text" id="inputLogin" class="form-control" placeholder="Login" autofocus required>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" class="form-control" placeholder="Password" required >
        <button class="btn btn-lg btn-primary btn-block" type="submit">Přihlásit</button>
        <a href="${pageContext.request.contextPath}/user/add.html" class="btn btn-lg btn-outline-success btn-block" type="">Registrovat</a>


    </form>
</div>
</body>
</html>