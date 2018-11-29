<%-- 
    Document   : CategoryResult
    Created on : Nov 29, 2018, 12:58:01 AM
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
            background-image: linear-gradient(to top,#FFA17F,#00223E);
            
        }

    </style>
        <script>
   //Here you can add your own picture for snow. Just change the url
        var snowsrc = " http://i13.servimg.com/u/f13/11/52/70/02/snowba10.png"
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
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle " href="ProductView.jsp" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Product
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                 <a class="dropdown-item" href="NewProduct">Product all</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="Category?catid=cat001">Brake Pads</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="Category?catid=cat002">Oil</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="Category?catid=cat003">Battery</a>
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
                                        <a class="dropdown-item" href="HistoryView.jsp">History</a>
                                        <a class="dropdown-item" href="NewHomepage?logout=1">Logout</a>


                                    </div>

                                </c:if>

                            </div>
                        </li>

                    </ul>
                   
                </div>


        </nav>
         
        <div style="background-color: #3366996;color: white">
             <center><!--Header-->
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="image/change7.png" alt="First slide" >
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="image/change8.png" alt="Second slide" >
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="image/change9.png" alt="Third slide" >
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
            </center>
        </div>
            <center>  <img src="image/logo3.png" width="300px" height="300px" >&nbsp<img src="image/title2.png" style="height: 230px"></center>
           
           
        <div class="container" >
            <div class="row"  >

                   
                <c:forEach items="${catidresult}" var="p" varStatus="vs" >
                    
                    <div class="col-sm-4" >
                        <div class="card" style="margin-bottom: 15px;border: solid black; background-image: linear-gradient(to top,#FFA17F,#00223E);"  >
                            <center><img class="card-img-top" src="elkproduct/${p.model}.png" alt="Card image cap" style="height: 250px; width: 270px; display: block; border: 2px solid black; margin-top: 15px; background-image: linear-gradient(to top,#FFA17F,#00223E);  "   ></center>
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


   

</body>
</html>

