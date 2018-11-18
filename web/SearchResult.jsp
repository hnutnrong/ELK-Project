<%-- 
    Document   : SearchResult
    Created on : 16-Nov-2018, 12:28:21
    Author     : Windows10
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.5.0/css/all.css' integrity='sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU' crossorigin='anonymous'>

    </head>
    <body>
    <c:forEach items="${result}" var="p" varStatus="vs" >
        <div class="col-sm-4" >
            <div class="card" style="margin-bottom: 10px;background-color: #C0A08E;border-radius: 50px;border: 2px solid black">
                <img class="card-img-top" src="elkproduct/${p.model}.jpg" alt="Card image cap" style="height: 225px; width: 100%; display: block;border-radius: 50px; border: 2px solid black;">
                <div class="card-body">
                    <h5 class="card-title">${p.productid}</h5>
                    <p class="card-text">${p.description}</p>
                    <p class="card-text">${p.productname}</p>
                    <p class="card-text">${p.price} ฿</p>
                    <center><a href="YourCartView.jsp"  style="background-color: #4C4D54" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Add to Cart</a></center>
                </div>
            </div>
        </div>
    </c:forEach>
</body>
</html>
