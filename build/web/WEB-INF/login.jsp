<%-- 
    Document   : login
    Created on : Jul 11, 2022, 7:59:24 PM
    Author     : PHT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login Page</h1>
        <hr/>
        <form action="GundamController/login" method="post">
            <p>User ID</p>
            <input type="text" name="userId" value="" size="20" />
            <p>Password</p>
            <input type="password" name="password" value="" size="20" />
            <br> <br>
            <input type="submit" value="Login"/>
        </form>
        <br>
        <br>
        <i style="color: red">${message}</i>
    </body>
</html>
