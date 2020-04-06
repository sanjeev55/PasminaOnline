<!DOCTYPE html>
<html lang="en">
<head>
<g:javascript library="jquery"/>

<r:layoutResources/>

<link>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>MEIE</title>

<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Cabin:700' rel='stylesheet' type='text/css'>
<!-- Custom styles for this template -->
<link href="../css/grayscale.min.css" rel="stylesheet">
<link href="../css/dashboardTable.css" rel="stylesheet">


</head>

<body id="page-top">

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">Mount Everest Import Export</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
                data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
                aria-label="Toggle navigation">
            Menu
            <i class="fa fa-bars"></i>
        </button>

        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
<g:if test="${u.role == 'admin'}">
    <li class="nav-item">
        <g:link controller="teacher" action="addTeacher"
                class="nav-link js-scroll-trigger">About Us</g:link>
    </li>
<li class="nav-item">
        <g:link controller="teacher" action="addTeacher"
                class="nav-link js-scroll-trigger">Login</g:link>
    </li>

</g:if>
<g:if test="${u.role=='user'}">
    <li class="nav-item">
        <g:link controller="product" action="viewAddProduct"
                class="nav-link js-scroll-trigger">Add Product</g:link>
    </li>

    <li class="nav-item">
        <g:link controller="product" action="viewProduct"
                class="nav-link js-scroll-trigger">View Product</g:link>
    </li>

    <li class="nav-item">
        <g:link controller="user" action="aboutUs"
                class="nav-link js-scroll-trigger">About Us</g:link>
    </li>

    <g:link controller="user" action="logOut" class="nav-link js-scroll-trigger">Log Out</g:link>
    </li>
</g:if>

</ul>
</div>
</div>
</nav>


<!-- Intro Header -->
<header class="masthead" style="background-image:url('${resource(dir: "images", file: "Website-Design-Background.jpg")}')">
    <div class="intro-body">

        <div class="container">
            <div class="row">
             %{--   <div class="col-lg-8 mx-auto" style="text-align: center">
                    <h1 class="brand-heading" style="font-size: 50px; color: #0c5460">Mount Everst Import Export</h1>

                    <p class="intro-text" style="color:#0c5460 ">Pashima Online
                    </p>--}%
                   %{-- <a href="#about" class="btn btn-circle js-scroll-trigger">
                        <i class="fa fa-angle-double-down animated"></i>
                    </a>--}%

<g:if test="${p!='null'}">

<div class="pricing-container">
    %{--<div class="pricing-switcher">
        <p class="fieldset">
            <input type="radio" name="duration-1" value="monthly" id="monthly-1" checked>
            <label for="monthly-1">Monthly</label>
            <input type="radio" name="duration-1" value="yearly" id="yearly-1">
            <label for="yearly-1">Yearly</label>
            <span class="switch"></span>
        </p>
    </div>--}%
    <ul class="pricing-list bounce-invert">
    <g:each in="${p}" var="i">
        <li style="width: 205px; height: 700px">
            <ul class="pricing-wrapper">
                <li data-type="monthly" class="is-visible">
                    <header class="pricing-header">
                        <div class="save-product">
                            <button onclick="saveProduct(${i.id},${u.id})">Save</button>
                        </div>
                        <div class="cart-product">
                            <button onclick="addToCart(${i.id},${u.id})">Add to Cart</button>
                        </div>
                        <h2>${i.productName}</h2>
                        <div class="price">
                          <img src="${createLink(controller: "product", action: 'showImage', params:[id:i?.id])}" height="220px" width="150px">
                        </div>
                    </header>
                    <div class="pricing-body">
                        <ul class="pricing-features">
                            <li style="color: #1a1a1a"><em>Price:</em> ${i.sellingPrice}</li>
                            <li style="color: #1a1a1a"><em>Available Quantity:</em> ${i.availableQuantity}</li>
                            <li style="color: #1a1a1a"><em>Code:</em> ${i.productCode}</li>
                            <li style="color: #1a1a1a"><em>Description:</em> ${i.productDescription}</li>

                        </ul>
                    </div>
                    <footer class="pricing-footer">
                        <a class="select" href="#">Buy</a>
                    </footer>
                </li>
                <li data-type="yearly" class="is-hidden">
                    <header class="pricing-header">
                        <h2>Basic</h2>
                        <div class="price">
                            <span class="currency">$</span>
                            <span class="value">320</span>
                            <span class="duration">yr</span>
                        </div>
                    </header>
                    <div class="pricing-body">
                        <ul class="pricing-features">
                            <li><em>5</em> Email Accounts</li>
                            <li><em>1</em> Template Style</li>
                            <li><em>25</em> Products Loaded</li>
                            <li><em>1</em> Image per Product</li>
                            <li><em>Unlimited</em> Bandwidth</li>
                            <li><em>24/7</em> Support</li>
                        </ul>
                    </div>
                    <footer class="pricing-footer">
                        <a class="select" href="#">Buy</a>
                    </footer>
                </li>
            </ul>
        </li>
    </g:each>

    </ul>
</div>
</g:if>
<g:else>
    <h2> Mount Everest Import Export</h2>
</g:else>
                </div>
            </div>
        </div>
    </div>
</header>

%{--<!-- About Section -->
<section id="about" class="content-section text-center"
         style="background-image:url('${resource(dir: "images", file: "airplane1.jpg")}')">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 mx-auto">
                <h2>About Mount Everest Import Export</h2>

                <p>Buy Pashmina Online</p>

            </div>
        </div>
    </div>
</section>



<!-- Contact Section -->
<section id="contact" class="content-section text-center"
         style="background-image:url('${resource(dir: "images", file: "maxresdefault.jpg")}')">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 mx-auto">
                <h2>Contact Us</h2>

                <p>Feel free to contact us at

                </p>
                <ul class="list-inline banner-social-buttons">
                    <li class="list-inline-item">
                        <a href="https://twitter.com" target="_blank" class="btn btn-default btn-lg">
                            <i class="fa fa-twitter fa-fw"></i>
                            <span class="network-name">Twitter</span>
                        </a>
                    </li>
                    <li class="list-inline-item">
                        <a href="https://github.com" target="_blank" class="btn btn-default btn-lg">
                            <i class="fa fa-github fa-fw"></i>
                            <span class="network-name">Github</span>
                        </a>
                    </li>
                    <li class="list-inline-item">
                        <a href="https://plus.google.com" target="_blank" class="btn btn-default btn-lg">
                            <i class="fa fa-google-plus fa-fw"></i>
                            <span class="network-name">Google+</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</section>--}%


%{--
<!-- Bootstrap core JavaScript -->
<g:javascript src="jquery.min.js"></g:javascript>
<g:javascript src="bootstrap.bundle.min.js"></g:javascript>

<!-- Plugin JavaScript -->
<g:javascript src="jquery.easing.min.js"></g:javascript>

<!-- Google Maps API Key - Use your own API key to enable the map feature. More information on the Google Maps API can be found at https://developers.google.com/maps/ -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRngKslUGJTlibkQ3FkfTxj3Xss1UlZDA&sensor=false"></script>

<!-- Custom scripts for this template -->
<g:javascript src="grayscale.min.js"></g:javascript>
<r:layoutResources/>--}%

<!-- Bootstrap core JavaScript -->
<script src="../vendor/jquery/jquery.min.js"></script>
<script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Plugin JavaScript -->
<script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Google Maps API Key - Use your own API key to enable the map feature. More information on the Google Maps API can be found at https://developers.google.com/maps/ -->
%{--
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRngKslUGJTlibkQ3FkfTxj3Xss1UlZDA&sensor=false"></script>
--}%

<!-- Custom scripts for this template -->
<script src="../js/grayscale.min.js"></script>
<script src="../js/dashboardTable.js"></script>

<g:javascript>
function saveProduct(productId,userId) {
        $.ajax({
           type:'POST',
           url:"${createLink(controller: "savedProduct", action: "saveProduct")}",
           data: {pId:productId,uId:userId},

           success: function(response){
              console.log(response);
              alert("Successfully Saved!!")

           },
           error: function(response) {

           }
        });

}

function addToCart(productId,userId) {
        $.ajax({
           type:'POST',
           url:"${createLink(controller: "cart", action: "addToCart")}",
           data: {pId:productId,uId:userId},

           success: function(response){
              console.log(response);
              alert("Successfully Added To Cart!!")

           },
           error: function(response) {

           }
        });

}
</g:javascript>
<r:layoutResources/>


</body>

</html>