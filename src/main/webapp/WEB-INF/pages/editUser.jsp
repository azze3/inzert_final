<%--
  Created by IntelliJ IDEA.
  User: David
  Date: 19.01.2018
  Time: 15:05.
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

    <c:form  method="POST"  commandName="user"  action="${pageContext.request.contextPath}/user/edit/${user.id}.html">

        <div class="form-group">
            <c:label for="inputLogin" path="login">Login</c:label>
            <c:input type="text" class="form-control" id="inputLogin" path="login" placeholder="login" required="required"></c:input>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <c:label for="inputPassword" path="password">Password</c:label>
                <c:input type="password" class="form-control" id="inputPassword" path="password" placeholder="Password" required="required"></c:input>
            </div>
            <!--<div class="form-group col-md-6">
                <label for="inputPassword2" >Password</label>
                <input type="password" class="form-control" id="inputPassword2"  placeholder="Password" required="required"></input>
            </div>-->
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <c:label for="inputFirstName" path="firstName">Jméno</c:label>
                <c:input type="text" class="form-control" id="inputFirstName" path="firstName"   placeholder="Jméno" required="required"></c:input>
            </div>
            <div class="form-group col-md-6" path="">
                <c:label for="inputLastName" path="lastName">Příjmení</c:label>
                <c:input type="text" class="form-control" id="inputLastName" path="lastName" placeholder="Příjmení" required="required"></c:input>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <c:label for="inputEmail" path="email">Email</c:label>
                <c:input type="email" class="form-control" id="inputEmail" path="email" placeholder="Email" required="required"></c:input>
            </div>
            <div class="form-group col-md-6">
                <c:label for="inputPhone" path="phoneNumber">Tel. číslo</c:label>
                <c:input type="text" class="form-control" id="inputPhone" path="phoneNumber"  placeholder="Tel. číslo"></c:input>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group col-md-6">
                <c:label for="inputRating" path="email">Rating</c:label>
                <c:input type="text" class="form-control" id="inputRating" path="rating" placeholder="Rating"></c:input>
            </div>
            <div class="form-group col-md-6">
                <c:label for="inputPrivileges" path="privileges">Práva</c:label>
                <c:input type="text" class="form-control" id="inputPrivileges" path="privileges"  placeholder="privileges"></c:input>
            </div>
        </div>

        <button type="submit" value="Edit" class="btn btn-primary">Upravit</button>
    </c:form>
    <p><a href="${pageContext.request.contextPath}/setting.html">Setting</a></p>
    <p><a href="${pageContext.request.contextPath}/index.html">Home page</a></p>
</div>
</body>
</html>


