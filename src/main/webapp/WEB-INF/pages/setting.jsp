<%--
  Created by IntelliJ IDEA.
  User: David
  Date: 21.01.2018
  Time: 0:49
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/album.css">
    <title>index</title>
</head>

<body>
<header class="bg-light">
    <div class="container">
        <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 border-bottom box-shadow">
            <h5 class="my-0 mr-md-auto font-weight-normal">Inzert setting</h5>
            <nav class="my-2 my-md-0 mr-md-3">
                <a class="p-2  text-dark" href="#">neco?</a>
            </nav>
            <a class="btn btn-outline-warnings" href="#">Odhlásit</a>
        </div>
    </div>
</header>

<main role="main">
    <a class="btn btn-outline-success" href="${pageContext.request.contextPath}/user/list.html">spravovat uzivatele</a><br />
    <a class="btn btn-outline-success" href="${pageContext.request.contextPath}/category/list.html">spravovat kategorie</a><br />
    <a class="btn btn-outline-success" href="${pageContext.request.contextPath}/advertisement/list.html">spravovat inzeráty</a><br />

    <p><a href="${pageContext.request.contextPath}/index.html">Home page</a></p>
</main>

<footer class="text-muted">
    <div class="container">
        <p class="float-right">
            <a href="#">Back to top</a>
        </p>
        <p>paticka</p>

    </div>
</footer>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->

</body>
</html>


