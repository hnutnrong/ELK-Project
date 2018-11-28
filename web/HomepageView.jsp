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
        <link href="https://fonts.googleapis.com/css?family=Rye" rel="stylesheet">
    </head>
    <style>
        body, html {

            background-repeat: no-repeat;
           background-image: linear-gradient(to top,#00223E,#00223E);
            font-family: 'Rye', cursive;
        }

    </style>
    <script>
   //Here you can add your own picture for snow. Just change the url
        var snowsrc = " http://i1208.photobucket.com/albums/cc361/Letthalicious/bluesnowrsz.png"
   //how many snowflakes there will be (currently 12)
        var no = 47;
   //How fast will the snow disappear (0 is never)
        var hidesnowtime = 0;
   //The height the snow will reach before it disappears ("windowheight" or "pageheight")
        var snowdistance = "pageheight";
   ///////////////////////////////End of Settings///////////////////////////////////
        var ie4up = (document.all) ? 1 : 0;
        var ns6up = (document.getElementById && !document.all) ? 1 : 0;
        function iecompattest()
        {
            return (document.compatMode && document.compatMode != "BackCompat") ? document.documentElement : document.body
        }
        var dx, xp, yp;
        var am, stx, sty;
        var i, doc_width = 800, doc_height = 600;
        if (ns6up)
        {
            doc_width = self.innerWidth;
            doc_height = self.innerHeight;
        } else
        if (ie4up)
        {
            doc_width = document.body.clientWidth;
            doc_height = document.body.clientHeight;
        }
        dx = new Array();
        xp = new Array();
        yp = new Array();
        am = new Array();
        stx = new Array();
        sty = new Array();
        for (i = 0; i < no; ++i)
        {
            dx[i] = 0;
            xp[i] = Math.random() * (doc_width - 50);
            yp[i] = Math.random() * doc_height;
            am[i] = Math.random() * 20;
            stx[i] = 0.02 + Math.random() / 10;
            sty[i] = 0.7 + Math.random();
            if (ie4up || ns6up)
            {
                if (i == 0)
                {
                    document.write("<div id=\"dot" + i + "\" style=\"POSITION: absolute; Z-INDEX: " + i + "; VISIBILITY: visible; TOP: 15px; LEFT: 15px;\"><a href=\"http://rftactical.darkbb.com/index.htm\"><img src='" + snowsrc + "' border=\"0\"><\/a><\/div>");
                } else
                {
                    document.write("<div id=\"dot" + i + "\" style=\"POSITION: absolute; Z-INDEX: " + i + "; VISIBILITY: visible; TOP: 15px; LEFT: 15px;\"><img src='" + snowsrc + "' border=\"0\"><\/div>");
                }
            }
        }
        function snowIE_NS6()
        {
            doc_width = ns6up ? window.innerWidth - 10 : iecompattest().clientWidth - 10;
            doc_height = (window.innerHeight && snowdistance == "windowheight") ? window.innerHeight : (ie4up && snowdistance == "windowheight") ? iecompattest().clientHeight : (ie4up && !window.opera && snowdistance == "pageheight") ? iecompattest().scrollHeight : iecompattest().offsetHeight;
            for (i = 0; i < no; ++i)
            {
                yp[i] += sty[i];
                if (yp[i] > doc_height - 50)
                {
                    xp[i] = Math.random() * (doc_width - am[i] - 30);
                    yp[i] = 0;
                    stx[i] = 0.02 + Math.random() / 10;
                    sty[i] = 0.7 + Math.random();
                }
                dx[i] += stx[i];
                document.getElementById("dot" + i).style.top = yp[i] + "px";
                document.getElementById("dot" + i).style.left = xp[i] + am[i] * Math.sin(dx[i]) + "px";
            }
            snowtimer = setTimeout("snowIE_NS6()", 10);
        }
        function hidesnow()
        {
            if (window.snowtimer)
                clearTimeout(snowtimer)
            for (i = 0; i < no; i++)
                document.getElementById("dot" + i).style.visibility = "hidden"
        }

        if (ie4up || ns6up)
        {
            snowIE_NS6();
            if (hidesnowtime > 0)
                setTimeout("hidesnow()", hidesnowtime * 1000)
        }
    </script>
    <body>
        <nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark justify-content-between">
            <a class="navbar-brand" href="#">
                <a href="index.html"><img src="image/logo3.png" width="50px" height="50px"></a>
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
                                        <a class="dropdown-item" href="HistoryView.jsp">History</a>
                                        <a class="dropdown-item" href="NewHomepage?logout=1">Logout</a>


                                    </div>

                                </c:if>

                            </div>
                        </li>

                    </ul>

                </div>


        </nav>


        <!--Header-->
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
        <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
        <div class="scroll-to-top d-lg-none position-fixed ">
            <a class="js-scroll-trigger d-block text-center text-white rounded" href="#page-top">
                <i class="fa fa-chevron-up"></i>
            </a>
        </div>

    </body>
</html>
