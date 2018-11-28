<%-- 
    Document   : HistoryView
    Created on : 27-Nov-2018, 16:54:17
    Author     : Windows10
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Bootstrap core CSS -->
        <link href="index/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template -->
        <link href="index/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

        <!-- Plugin CSS -->


        <!-- Custom styles for this template -->
        <link href="index/css/freelancer.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.5.0/css/all.css' integrity='sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU' crossorigin='anonymous'>
    </head>
    <style>
        body, html {

            background-repeat: no-repeat;
            background-color: #727587;
        }

    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark justify-content-between">
        <a class="navbar-brand" href="#">
            <a href="index.html"><img src="image/logo2.png" width="50px" height="50px"></a>
            <a class="navbar-brand" href="HomepageView.jsp" style="padding-left: 5px">ELK-S-Autopart</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown" style="padding-left: 20px">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle " href="ProductView.jsp" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Product
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="NewProduct">Product all</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="NewProduct">Brake Pads</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Oil</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Battery</a>
                        </div>
                    </li>



                    <li class="nav-item">
                        <a href="ShoppingCart.jsp" class='fas fa-shopping-cart' style="font-size:24px;color: white;padding-top: 10px;padding-left:600px "></a>
                    </li>
                    <form action="Search" class="form-inline" style="margin-left: 20px">
                        <input name="search" class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                    </form>
                    <li>
                        <div class="dropdown" style="padding-left: 20px">
                            <button class="btn btn-secondary " type="button" id="dropdownMenuButton" data-toggle="dropdown"  aria-haspopup="true" aria-expanded="false"> 
                                <img src="image/icon.png" style="height: 30px">&nbsp; ${sessionScope.LoggedIn == null ? "" : sessionScope.LoggedIn.fname}
                            </button>
                            <c:if test="${sessionScope.LoggedIn==null}">

                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">

                                    <a class="dropdown-item" href="NewLogin">Login</a>
                                    <a class="dropdown-item" href="Register">Register</a>


                                </div>


                                <script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
                                <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
                                ${msg == "Invalid" ? '<script>swal("มีปัญหา", "ชื่อผู้ใช้หรือรหัสผ่านไม่ถูกต้อง","warning");</script>' : ''}
                            </c:if>





                            <c:if test="${sessionScope.LoggedIn!=null}">
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" href="History">History</a>
                                    <a class="dropdown-item" href="NewHomepage?logout=1">Logout</a>


                                </div>

                            </c:if>

                        </div>
                    </li>

                </ul>

            </div>


    </nav>
    <h1>History Page</h1><br>


    <table class="table">
        <tr>
            <th>ORDERNO</th>
            <th>ORDERDATE</th>
            <th>PRICE</th>
            <th>VIEW MOREDETAIL</th>
            
        
            
        </tr>

        <c:forEach items="${accountorders}" var="p">

            <tr>
                <td>${p.orderno}</td>
                <td>${p.orderdate}</td>
                <td>${p.totalprice}</td>
                
                <td><a href="ViewMoreDetail?orderid=${p.orderno}">View MoreDetail</a></td>
            </tr>     


        </c:forEach>



    </table>
    <a href="HomepageView.jsp" class="btn btn-outline-dark btn-lg active" role="button" aria-pressed="true">back</a>
</body>
</html>
