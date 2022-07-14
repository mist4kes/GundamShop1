<%-- 
    Document   : checkout
    Created on : Jul 13, 2022, 10:06:58 PM
    Author     : admin
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
        <h1>Thank you for purchasing!</h1>
        <a href="<c:url value="GundamController/view"/>">Continue shopping</a>
    </body>
</html>
