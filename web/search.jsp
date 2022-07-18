<%-- 
    Document   : search
    Created on : Jul 18, 2022, 1:39:34 PM
    Author     : Bia
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
        <h1>Search Gundam</h1>
        <hr/>
        <form action="GundamController">
            Input Gundam Name:
            <input type="text" name="name" value="${name}" />
            <input type="submit" name="op" value="Search" />            
        </form>
        <hr/>
        <c:if test="${not empty list}">
            <table border="1" cellspacing="0" cellpadding="4">
                <tr>
                    <th>No</th>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Image</th>
                    <th>Category</th>
                    <th>Status</th>
                    <th>Add to cart</th>
                    
                </tr>
                <c:forEach var="gun" items="${list}" varStatus="loop">
                    <tr>
                        <td>${loop.count}</td>
                        <td>${gun.id}</td>
                        <td>${gun.name}</td>
                        <td>${gun.price}</td>
                        <td><img src="<c:url value="/images/${gun.imgPath}"/>" width="100" height="60"/></td>
                        <td>${gun.categoryId}</td>
                        <td class="text-center">${gunpla.status==0?"Inactive":"Active"}</td>
                        <td class="text-center"><a href="GundamController/addtocart?id=${gunpla.id}">Add to cart</a></td>
                        
                    </tr>
                </c:forEach>
            </table>
        </c:if>
    </body>
</html>
