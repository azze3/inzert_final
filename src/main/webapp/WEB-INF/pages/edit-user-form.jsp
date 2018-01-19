<%--
  Created by IntelliJ IDEA.
  User: David
  Date: 19.01.2018
  Time: 15:05.
--%>
<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
    <title>Edit user page</title>
</head>
<body>
<h1>Edit user page</h1>
<p>Here you can edit the user</p>
<p>${message}</p>
<form:form method="POST" commandName="user" action="${pageContext.request.contextPath}/user/edit/${user.id}.html">
    <table>
        <tbody>
        <tr>
            <td>firstName:</td>
            <td><form:input path="firstName" /></td>
        </tr>
        <tr>
            <td>lastName:</td>
            <td><form:input path="lastName" /></td>
        </tr>
        <tr>
            <td>login:</td>
            <td><form:input path="login" /></td>
        </tr>
        <tr>
            <td>password:</td>
            <td><form:input path="password" /></td>
        </tr>
        <tr>
            <td>phoneNumber:</td>
            <td><form:input path="phoneNumber" /></td>
        </tr>
        <tr>
            <td>email:</td>
            <td><form:input path="email" /></td>
        </tr>
        <tr>
            <td>rating:</td>
            <td><form:input path="rating" /></td>
        </tr>
        <tr>
            <td>privileges:</td>
            <td><form:input path="privileges" /></td>
        </tr>
        <tr>
            <td><input type="submit" value="Edit" /></td>
            <td></td>
        </tr>
        </tbody>
    </table>
</form:form>

<p><a href="${pageContext.request.contextPath}/index.html">Home page</a></p>
</body>
</html>