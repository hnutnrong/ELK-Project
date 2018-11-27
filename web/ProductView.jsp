<%-- 
    Document   : ProductView
    Created on : Nov 15, 2018, 4:25:59 PM
    Author     : Books
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
    <style>
        body, html {

            background-repeat: no-repeat;
            background-color: #727587;
        }

    </style>
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
                            <a class="nav-link" href="HomepageView.jsp">Home <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="NewProduct">Product</a>
                        </li>

                        <li>
                            <div class="dropdown">
                                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown"  aria-haspopup="true" aria-expanded="false"> 
                                    ${sessionScope.LoggedIn == null ? "MyAccount" : sessionScope.LoggedIn.fname}
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

                                        <a class="dropdown-item" href="NewHomepage?logout=1">Logout</a>


                                    </div>

                                </c:if>

                            </div>
                        </li>
                        <li>
                       
                        </li>
                        <li class="nav-item">
                            <a href="ShoppingCart.jsp" class='fas fa-shopping-cart' style="font-size:24px;color: white;padding-top: 10px;padding-left: 600px">${sessionScope.cart.totalQuantity}</a>
                        </li>
                        <form action="Search" class="form-inline" style="margin-left: 20px">
                            <input name="search" class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                        </form>
                         

                    </ul>
                </div>
            </a>
                                
        </nav>
        <br>          
        <div style="background-color: #727587;color: white">
            <center>  <img src="image/logo3.png" width="400px" height="400px" ></center>
            <center><h1>ELK'S Product</h1></center><hr>
        </div>
        <div class="container" >
            <div class="row"  >


                <c:forEach items="${product}" var="p" varStatus="vs" >
                    <div class="col-sm-4" >
                        <div class="card" style="margin-bottom: 15px;background-color: #C0A08E;border-radius: 50px;border: 2px solid black; background-color: #9494b8;"  >
                            <center><img class="card-img-top" src="elkproduct/${p.model}.png" alt="Card image cap" style="height: 250px; width: 270px; display: block;border-radius: 50px; border: 2px solid black; margin-top: 15px; background-color: #b3b3cc;  "   ></center>
                            <div class="card-body " >
                                <center><h5 class="card-title">${p.productname}</h5></center>
                                <p class="card-text">${p.description}</p>
                                <p class="card-text">${p.price} ฿</p>
                                <form action="Addtocart">
                                    <center><select style=" background-color:#7575a3 ;padding: 5px; padding-left: 20px; padding-right: 20px" class="btn-secondary" name="quantity">
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        </select ><br><br>
                                        <input name="CartId" value="${p.productid}" hidden>
                                        <button type="submit" class="btn btn-info btn-lg" style="background-color: #DC143C;">Add Cart</button>
                                    </center>
                                </form> 
                            </div>
                        </div>
                    </div>
                </c:forEach>


            </div>
        </div>

       
</div>

    </body>
</html>

