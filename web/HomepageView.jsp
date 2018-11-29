<%-- 
    Document   : HomepageView
    Created on : Nov 15, 2018, 4:15:14 PM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" 
              type="image/png" 
              href="image/logo3.png" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Bootstrap core CSS -->

        <link href="index/css/freelancer.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.5.0/css/all.css' integrity='sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU' crossorigin='anonymous'>
        <link href="https://fonts.googleapis.com/css?family=Rye" rel="stylesheet">
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
            myVar = setTimeout(showPage, 3000);
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
                <a href="ContactView.jsp">Contact</a>
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


            <!--Header-->
             <div id="loader"></div>
        <div style="display:none;" id="myDiv" class="animate-bottom">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="d-block w-100" src="image/change2.png" alt="First slide" >
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="image/change1.png" alt="Second slide" >
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="image/change3.png" alt="Third slide" >
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>

            <!-- Portfolio Grid Section -->

            <section class="portfolio" id="portfolio">
                <div class="container">
                    <center><img src="image/title2.png" style="height: 250px"></center>
                    <hr class="star-dark mb-5">
                    <div class="row">
                        <div class="col-md-6 col-lg-4">
                            <a class="portfolio-item d-block mx-auto" href="RegisterView.jsp">
                                <div class="portfolio-item-caption d-flex position-absolute h-100 w-100">
                                    <div class="portfolio-item-caption-content my-auto w-100 text-center text-white">
                                        <i class="fas fa-search-plus fa-3x"></i>
                                    </div>
                                </div>
                                <img class="img-fluid" src="image/car4.jpg" alt="" style="width: 650px">
                            </a>
                        </div>
                        <div class="col-md-6 col-lg-4">
                            <a class="portfolio-item d-block mx-auto" href="NewProduct">
                                <div class="portfolio-item-caption d-flex position-absolute h-100 w-100">
                                    <div class="portfolio-item-caption-content my-auto w-100 text-center text-white">
                                        <i class="fas fa-search-plus fa-3x"></i>
                                    </div>
                                </div>
                                <img class="img-fluid" src="image/car6.jpg" alt="">
                            </a>
                        </div>
                        <div class="col-md-6 col-lg-4">
                            <a class="portfolio-item d-block mx-auto" href="ContactView.jsp">
                                <div class="portfolio-item-caption d-flex position-absolute h-100 w-100">
                                    <div class="portfolio-item-caption-content my-auto w-100 text-center text-white">
                                        <i class="fas fa-search-plus fa-3x"></i>
                                    </div>
                                </div>
                                <img class="img-fluid" src="image/car1.jpg" alt="">
                            </a>
                        </div>

                    </div>
                </div>
            </section>

            <footer>
                <div class="copyright py-4 text-center text-white">
                    <div class="container" style="height: 92px">
                        <small>Copyright &copy; <a href="https://www.pexels.com">https://www.pexels.com</a> ELS-S-Autopart</small>
                    </div>
                </div>
            </footer>


        </div>
    </body>
</html>
