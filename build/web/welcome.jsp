<%-- 
    Document   : admin
    Created on : Jul 11, 2022, 8:02:53 PM
    Author     : PHT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Admin Page</h1>
        Welcome ${user.fullName}
        <hr>
        <a href="<c:url value="/GundamController?op=Logout"/>">Logout</a>
        <hr/>
    </body>
</html>
