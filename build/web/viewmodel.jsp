<%-- 
    Document   : viewmodel
    Created on : Jul 13, 2022, 9:10:39 PM
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
        <c:if test="${not empty list}">
            <table>
                <tr>
                    <th class="text-right">Id</th>
                    <th class="text-left">Name</th>
                    <th class="text-right">Price</th>
                    <th class="text-left">Image</th>
                    <th class="text-left">Description</th>
                    <th class="text-left">Category</th>
                    <th class="text-left">Status</th>
                    <th class="text-left">Add to cart</th>
                </tr>
                <tr>
                    <c:forEach var="gunpla" items="${list}">
                        <td class="text-right">${gunpla.id}</td>
                        <td class="text-left">${gunpla.name}</td>
                        <td class="text-right">${gunpla.price}</td>
                        <td class="text-left"><img src="<c:url value="/images/${gunpla.imgPath}"/>" width="200" height="200"/></td>
                        <td class="text-right">${gunpla.description}</td>
                        <td class="text-left">${gunpla.categoryId}</td>
                        <td class="text-left">${gunpla.status==0?"Inactive":"Active"}</td>
                        <td class="text-left"><a href="GundamController/addtocart?id=${gunpla.id}">Add to cart</a></td>
                    </c:forEach>
                </tr>
            </table>
        </c:if>
        <a href="<c:url value="GundamController/view"/>">Home</a>
        <hr>
        <c:forEach var="gunpla" items="${list}">
            <div style="border: 2px solid black; width: 30%">
                <div style="text-align: center">
                    <img src="<c:url value="/images/${gunpla.imgPath}"/>" width="200" height="200"/>
                </div>
                <div style="text-align: center">
                    ${gunpla.name}
                    ${gunpla.price}
                </div>
                <div style="text-align: center">
                    <a href="GundamController/addtocart?id=${gunpla.id}">Add to cart</a>
                </div>
            </div>   
        </c:forEach>
    </body>
</html>
