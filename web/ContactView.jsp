<%-- 
    Document   : ContactView
    Created on : 28-Nov-2018, 20:46:00
    Author     : Windows10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <!-- Custom fonts for this template -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

        <!-- Plugin CSS -->


        <!-- Custom styles for this template -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.5.0/css/all.css' integrity='sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU' crossorigin='anonymous'>
        <script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->

        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.10/css/all.css" integrity="sha384-+d0P83n9kaQMCwj8F4RJB66tzIwOKmrdb46+porD/OvrJ+37WqIM7UoBtwHO6Nlg" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Lobster+Two" rel="stylesheet">
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

    </head>
    <style>
        body,html {
            font-family: "Lato", sans-serif;
            background-image: linear-gradient(to top,#00223E,#00223E);
        }

        .sidenav {
            font-family: 'Lobster Two', cursive;
            height: 100%;
            width: 0;
            position: fixed;
            z-index: 1;
            top: 0;
            left: 0;
            background-color: #111;
            overflow-x: hidden;
            transition: 0.5s;
            padding-top: 60px;
        }

        .sidenav a {
            font-family: 'Lobster Two', cursive;
            padding: 8px 8px 8px 32px;
            text-decoration: none;
            font-size: 25px;
            color: #818181;
            display: block;
            transition: 0.3s;
        }

        .sidenav a:hover {
            font-family: 'Lobster Two', cursive;
            color: #f1f1f1;
        }

        .sidenav .closebtn {
            font-family: 'Lobster Two', cursive;
            position: absolute;
            top: 0;
            right: 25px;
            font-size: 36px;
            margin-left: 50px;
        }

        @media screen and (max-height: 450px) {
            .sidenav {padding-top: 15px;}
            .sidenav a {font-size: 18px;}
        }
        .text-center{
            font-family: 'Lobster Two', cursive;

        }
        /* Center the loader */
        #loader {
            position: absolute;
            left: 50%;
            top: 50%;
            z-index: 1;
            width: 150px;
            height: 150px;
            margin: -75px 0 0 -75px;
            border: 16px solid #f3f3f3;
            border-radius: 50%;
            border-top: 16px solid #FF66CC;
            width: 120px;
            height: 120px;
            -webkit-animation: spin 2s linear infinite;
            animation: spin 2s linear infinite;
        }

        @-webkit-keyframes spin {
            0% { -webkit-transform: rotate(0deg); }
            100% { -webkit-transform: rotate(360deg); }
        }

        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }

        /* Add animation to "page content" */
        .animate-bottom {
            position: relative;
            -webkit-animation-name: animatebottom;
            -webkit-animation-duration: 1s;
            animation-name: animatebottom;
            animation-duration: 1s
        }

        @-webkit-keyframes animatebottom {
            from { bottom:-100px; opacity:0 } 
            to { bottom:0px; opacity:1 }
        }

        @keyframes animatebottom { 
            from{ bottom:-100px; opacity:0 } 
            to{ bottom:0; opacity:1 }
        }

        #myDiv {
            display: none;
            text-align: center;
        }

    </style>
    <script>
        function openNav() {
            document.getElementById("mySidenav").style.width = "250px";
        }

        function closeNav() {
            document.getElementById("mySidenav").style.width = "0";
        }
        var myVar;

        function myFunction() {
            myVar = setTimeout(showPage, 1300);
        }

        function showPage() {
            document.getElementById("loader").style.display = "none";
            document.getElementById("myDiv").style.display = "block";
        }
    </script>
    <body onload="myFunction()" style="margin:0;">
        <div id="mySidenav" class="sidenav">
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
            <a href="HomepageView.jsp">Home</a>
            <a href="RegisterView.jsp">Register</a>
            <a href="LoginView.jsp">Login</a>
            <a href="ProductView.jsp">Product</a>
            <a href="ContactView.jsp.jsp">Contact</a>
        </div>

        <nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark justify-content-between">
            <a class="navbar-brand" href="#">
                <span style="font-size:30px;cursor:pointer" onclick="openNav()"> <img src="image/logo3.png " style="height: 50px"></span>

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
                                <a class="dropdown-item" href="NewProduct">All Products</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="NewProduct">Brake Pads</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Engine Oil</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Battery</a>
                            </div>
                        </li>




                        <li class="nav-item">
                            <a href="ShoppingCart.jsp" class='fas fa-shopping-cart' style="font-size:24px;color: white;padding-top: 10px;padding-left:600px "></a>
                        </li>
                        <form action="Search" class="form-inline" style="margin-left: 20px">
                            <input name="search" class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                            <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><img src="image/search.png" style="height: 30px"></button>
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
                                    ${param.success == "1" ? '<script>swal("finish", "ลงทะเบียนสำเร็จ","success");</script>' : ''}
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
        <br><br>
        <div id="loader"></div>
        <div style="display:none;" id="myDiv" class="animate-bottom">
        <div class="container-fluid">
            <h1 class="text-center" style="color: whitesmoke">Contact Address</h1>
            <hr>
            <div class="row">
                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d11880.492291371422!2d12.4922309!3d41.8902102!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x28f1c82e908503c4!2sColosseo!5e0!3m2!1sit!2sit!4v1524815927977" width="100%" height="320" frameborder="0" style="border:0" allowfullscreen></iframe>
            </div>
            <div class="row text-center">
                <div class="col-4 box1 pt-4">
                    <a href="tel:+123456789"><i class="fas fa-phone fa-3x" style="color: whitesmoke"></i>
                        <h3 class="d-none d-lg-block d-xl-block" style="color: whitesmoke">Phone</h3>
                        <p class="d-none d-lg-block d-xl-block" style="color: whitesmoke">+123456789</p></a>
                </div>
                <div class="col-4 box2 pt-4">
                    <a href=""><i class="fas fa-home fa-3x" style="color: whitesmoke"></i>
                        <h3 class="d-none d-lg-block d-xl-block" style="color: whitesmoke">Address</h3>
                        <p class="d-none d-lg-block d-xl-block" style="color: whitesmoke">Autopart del Colosseo, 1, 00184 London</p></a>
                </div>
                <div class="col-4 box3 pt-4">
                    <a href="mailto:test@test.com"><i class="fas fa-envelope fa-3x" style="color: whitesmoke"></i>
                        <h3 class="d-none d-lg-block d-xl-block" style="color: whitesmoke">E-mail</h3>
                        <p class="d-none d-lg-block d-xl-block" style="color: whitesmoke">Elk-S-Autopart@gmail.com</p></a>
                </div>
            </div>
        </div>
        </div>

    </body>
<!--    <style>
        hr {border-top: 1px solid #000; width:50%;}

        a {color: #000;}

        a:link{text-decoration:none;}

        .box1{background: rgb(76, 175, 80, 0.6);}
        .box2{background: rgb(192, 192, 200, 0.6);}
        .box3{background: rgb(255, 0, 0, 0.6);;}



        #author a{
            color: #fff;
            text-decoration: none;

        }
    </style>-->
</html>
