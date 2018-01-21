<%--
  Created by IntelliJ IDEA.
  User: David
  Date: 19.01.2018
  Time: 15:05.
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
        <h5 class="my-0 mr-md-auto font-weight-normal">Inzert</h5>
        <nav class="my-2 my-md-0 mr-md-3">
            <a class="p-2  text-dark" href="#">Přidat inzerát?</a>
            <a class="p-2  text-dark" href="#">Support</a>
            <a class="p-2  text-dark" href="${pageContext.request.contextPath}/setting.html">Setting</a>
        </nav>
        <a class="btn btn-outline-success" href="${pageContext.request.contextPath}/user/login.html">Sign up</a>
    </div>
</div>
</header>

<main role="main">

    <section class="jumbotron text-center">
        <div class="container">
            <h1 class="jumbotron-heading">Uvodni text</h1>
            <p class="lead text-muted">tady vyhledavaci pole?</p>
            <p class="lead text-muted">todo: hruba kostra</p>
            <p class="lead text-muted">- format ukladani do db (hacky, carky)</p>
            <p class="lead text-muted">- zmena db: login PK (+ zmena/check kodu: User, UserDAO, UserDAOImpl, UserService, UserServiceImpl, addser.jsp, editUser.jsp, settingUser.jsp</p>
            <p class="lead text-muted">- vytvorit inzeraty + CRUD (vlastni kolonka v setting jako user,category?)</p>
            <p class="lead text-muted">- bootstrap modal na vytvoreni inzeratu?</p>
            <p class="lead text-muted">- login + opravneni + odhlaseni</p>
            <p class="lead text-muted">- podle opravneni zmena gui</p>
            <p class="lead text-muted">- odepsani na inzerat (?)</p>
            <p class="lead text-muted">- hodnoceni</p>
            <p class="lead text-muted">...</p>
            <p class="lead text-muted">- javascript potrvzeni o smazani, odhlaseni</p>
            <p class="lead text-muted">- check pozadavky</p>
            <p class="lead text-muted">- dodelani designu</p>
        </div>
    </section>

    <div class="album text-muted">
        <div class="container">

            <div class="row">
                <div class="card">
                    <img data-src="holder.js/100px280?theme=thumb" alt="Card image cap">
                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
                <div class="card">
                    <img data-src="holder.js/100px280?theme=thumb" alt="Card image cap">
                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
                <div class="card">
                    <img data-src="holder.js/100px280?theme=thumb" alt="Card image cap">
                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>

                <div class="card">
                    <img data-src="holder.js/100px280?theme=thumb" alt="Card image cap">
                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
                <div class="card">
                    <img data-src="holder.js/100px280?theme=thumb" alt="Card image cap">
                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>
                <div class="card">
                    <img data-src="holder.js/100px280?theme=thumb" alt="Card image cap">
                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                </div>


            </div>

        </div>
    </div>

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
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootsrap.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/holder.min.js"></script>
<script>
    Holder.addTheme('thumb', {
        bg: '#55595c',
        fg: '#eceeef',
        text: 'Thumbnail'
    });
</script>
</body>
</html>


