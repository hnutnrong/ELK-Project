<%-- 
    Document   : ViewMoreDetailView
    Created on : Nov 29, 2018, 12:22:54 AM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
         <table class="table">
        <tr>
            <th>ORDERNO</th>
            <th>QUANTITY</th>
            <th>PRICE</th>
                        
        </tr>

        <c:forEach items="${orderDetail}" var="p">
            
             <tr>
                <td>${p.orderno.orderno}</td>
                <td>${p.quantity}</td>
                <td>${p.price}</td>
                               
            </tr>     

            
        </c:forEach>

           

       
        
        
    </body>
</html>
