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

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <!-- dodelat relativni linky!!!-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/style/css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/style/css/album.css">
    <title>index</title>
</head>

<body>
<header>
    <div class="navbar navbar-dark bg-dark">
        <div class="container d-flex justify-content-between">
            <a href="#" class="navbar-brand">Inzert</a>
            <a href="${pageContext.request.contextPath}/user/login.html" class="navbar-brand">Login</a>
            <a href="${pageContext.request.contextPath}/user/list.html" class="navbar-brand">Setting</a>
        </div>
    </div>
</header>

<main role="main">

    <section class="jumbotron text-center">
        <div class="container">
            <h1 class="jumbotron-heading">Nefunguje odkaz na css - dodelat relativni linky na css (ted je tam odkaz jen na bootstrap web (v resource uz potrebyn css jsou, jen mi to neslo :))</h1>
            <p class="lead text-muted">Something short :)</p>

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
<script src="${pageContext.request.contextPath}/resources/style/js/bootsrap.js"></script>
<script src="${pageContext.request.contextPath}/resources/style/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/style/js/holder.min.js"></script>
<script>
    Holder.addTheme('thumb', {
        bg: '#55595c',
        fg: '#eceeef',
        text: 'Thumbnail'
    });
</script>
</body>
</html>


