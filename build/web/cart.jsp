<%-- 
    Document   : cart
    Created on : Jul 13, 2022, 8:40:27 PM
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
        <h1>Your Cart</h1>
        <hr>
        <table border="1">
            <tr>
                <th>No.</th>
                <th>Id</th>
                <th>Name</th>
                <th>Image</th>
                <th>Price</th>
            </tr>
            <c:set var="total" value="0"/>
            <c:forEach var="gunpla" items="${cart.list}" varStatus="loop">
                <tr>
                    <td>${loop.count}</td>
                    <td>${gunpla.id}</td>
                    <td>${gunpla.name}</td>
                    <td><img src="<c:url value="/images/${gunpla.imgPath}"/>" width="100" height="60"/></td>
                    <td>${gunpla.price}</td>
                </tr>
                <c:set var="total" value="${total + gunpla.price}"/>
            </c:forEach>
            <tr>
                <th colspan="4">Total</th>
                <th>${total}</th>
            </tr>
        </table>
        <a href="<c:url value="GundamController/checkout"/>">Check out</a>
        <hr>
    </body>
</html>
