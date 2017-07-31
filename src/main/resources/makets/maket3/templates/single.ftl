<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
    <meta charset="UTF-8">
    <title>Single Product</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Favicon-->
    <link rel="shortcut icon" href="/images/favicon.png" type="image/x-icon">

    <!-- Web Fonts-->
    <link href="https://fonts.googleapis.com/css?family=Pacifico%7CSource+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900,900i&amp;amp;subset=latin-ext,vietnamese"
          rel="stylesheet">

    <!-- Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="/css/animated.css">
    <link rel="stylesheet" type="text/css" href="/css/owl.carousel.min.css">
    <link rel="stylesheet" type="text/css" href="/css/jquery.mmenu.all.css">
    <link rel="stylesheet" type="text/css" href="/css/pe-icon-7-stroke.css">
    <link rel="stylesheet" type="text/css" href="/css/noJS.css">
    <link rel="stylesheet" type="text/css" href="/css/prettyPhoto.css">
    <link rel="stylesheet" type="text/css" href="/css/slick.min.css">
    <link rel="stylesheet" type="text/css" href="/css/demo.css">

    <!-- Template CSS-->
    <link rel="stylesheet" type="text/css" href="/css/main.css">
    <link rel="stylesheet" type="text/css" href="/css/home.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries-->
    <!-- WARNING: Respond.js doesn't work if you view the page via file://-->
    <!--if lt IE 9
    script(src='https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js')
    script(src='https://oss.maxcdn.com/respond/1.4.2/respond.min.js')
    
    -->
</head>
<body class="product single-product">
<div id="preloaderKDZ"></div>
<div class="yolo-site">
    <header class="header yolo-header-style-10">
        <div class="yolo-top-bar">
            <div class="container">
                <div class="row">
                    <div style="text-align: center; font-size: 20px">Internet Catalog</div>
                </div>
            </div>
        </div>
        <div class="mobile-menu">
            <div class="col-3 text-left"><a href="#primary-menu"><i class="fa fa-bars"></i></a></div>
            <div class="col-3 text-center">
                <div class="logo">
                    <h1><a href="/"><img src="/images/logo.png" alt="logo"/></a></h1>
                </div>
            </div>
            <div class="col-3 text-right">

            </div>
        </div>

        <div class="header-bottom">
            <div class="container">
                <div class="main-nav-wrapper">
                    <div class="header-left">
                        <nav id="primary-menu" class="main-nav">
                            <ul class="nav" style="margin-top: 2%; margin-bottom: 2%">
                                <div class="active menu-item menu-home"><a href="/" style="font-size: 20px">All Products</a>

                                </div>
                        </nav>
                        <!-- .header-main-nav-->
                    </div>


                </div>

            </div>
        </div>
    </header>

    <div class="div-box mb mt">
        <div class="container">
            <div class="row">
                <div class="col-md-5">
                    <div class="single-product-slider">
                        <div id="sync1" class="owl-carousel owl-template">

                        <#if product.mainImgUrl?has_content>
                            <#list imgUrls as i>
                                <div class="item">
                                    <figure><img src="${i}" alt="slide" width="1080" height="768"/></figure>
                                </div>
                            </#list>

                        <#else>
                            <div class="item">
                                <figure><img src="/images/noImage.png" alt="slide" width="1080" height="768"/></figure>
                            </div>
                        </#if>
                        </div>

                        <div id="sync2" class="owl-carousel owl-template">
                        <#if product.mainImgUrl?has_content>
                            <#list imgUrls as i>
                                <div class="item">
                                    <figure><img src="${i}" alt="slide" width="180" height="130"/>
                                    </figure>
                                </div>
                            </#list>

                        <#else>
                            <div class="item">
                                <figure><img src="/images/noImage.jpg" alt="slide" width="180" height="130"/>
                                </figure>
                            </div>
                        </#if>
                        </div>
                    </div>
                </div>
                <div class="col-md-7">
                    <div class="single-product-content">
                        <div class="summary-product entry-summary">
                            <h2 class="product_title mb-45" style="font-family: normal">${product.name}</h2>
                            <div>
                                <p class="price"><span class="product-begreen-price-amount amount"><span
                                        class="product-begreen-price-currencysymbol">${product.currency}</span> ${product.price}</span>
                                </p>
                            </div>
                            <div class="product-single-short-description">
                                <p style="font-family: normal">${product.description}</p>
                                <p>
                                <#list params?keys as key>
                                ${key} : ${params[key]}
                                </#list>
                                </p>
                            </div>
                            <form class="cart">
                                <hr>
                                <strong>
                                    <a style="font-size: 20px; color: black" href="${product.url}">BUY!</a>
                                </strong>
                            </form>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


<div class="div-box mb">
<div class="container">
    <div class="title-style title-style-2 text-center mb-20">
        <h2>More products</h2>
    </div>
<div data-number="4" data-margin="0" data-loop="no" data-navcontrol="yes"
     class="shortcode-product-wrap product-begreen begreen-owl-carousel">

<#list products as p>
    <div class="product-item-wrap product-style_1">
        <div class="product-item-inner">
            <div class="product-thumb">
                <#if p.mainImgUrl?has_content>
                    <div class="product-thumb-primary"><img src="${p.mainImgUrl}" alt="product1"
                                                            width="375" height="450"
                                                            class="attachment-shop_catalog size-shop_catalog wp-post-image"/>
                    </div>
                <#else>
                    <div class="product-thumb-primary"><img src="/images/noImage.png" alt="product1"
                                                            width="375" height="450"
                                                            class="attachment-shop_catalog size-shop_catalog wp-post-image"/>
                    </div>
                </#if>
                <a href="/product/${p.readableCategory}/${p.readableName}" class="product-link">
                    <div class="product-hover-sign">
                        <hr/>
                        <hr/>
                    </div>
                </a>
                <div class="product-info">
                    <a href="${p.url}">
                        <h3 style="font-family: normal">${p.name}</h3></a><span class="price">
                       <ins><span class="product-begreen-price-amount amount"><span
                               class="product-begreen-price-currencysymbol">${p.currency}</span> ${p.price}</span></ins></span>
                </div>
                <div class="product-actions">

                    <div class="add-to-cart-wrap"><a href="${p.url}" class="add_to_cart_button"><i
                            class="fa fa-cart-plus"></i> Buy</a></div>

                </div>
            </div>
        </div>
    </div>
</#list>
</div>
</div>
</div>


</div>
</div>
<!-- .mv-site-->


<div class="popup-wrapper">
</div>
<!-- .popup-wrapper-->
<div class="click-back-top-body">
    <button type="button" class="sn-btn sn-btn-style-17 sn-back-to-top fixed-right-bottom"><i
            class="btn-icon fa fa-angle-up"></i></button>
</div>

<!-- Vendor jQuery-->
<script type="text/javascript" src="/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/js/wow.min.js"></script>
<script type="text/javascript" src="/js/jquery.mmenu.all.min.js"></script>
<script type="text/javascript" src="/js/jquery.countdown.min.js"></script>
<script type="text/javascript" src="/js/jquery.appear.min.js"></script>
<script type="text/javascript" src="/js/jquery.countTo.min.js"></script>
<script type="text/javascript" src="/js/jquery.hoverdir.js"></script>
<script type="text/javascript" src="/js/modernizr.custom.97074.js"></script>
<script type="text/javascript" src="/js/isotope.pkgd.min.js"></script>
<script type="text/javascript" src="/js/fit-columns.js"></script>
<script type="text/javascript" src="/js/isotope-docs.min.js"></script>
<script type="text/javascript" src="/js/mansory/mansory.js"></script>
<script type="text/javascript" src="/js/jquery.prettyPhoto.js"></script>
<script type="text/javascript" src="/js/slick.min.js"></script>
<script type="text/javascript" src="/js/jquery.final-countdown.min.js"></script>
<script type="text/javascript" src="/js/kinetic.js"></script>
<script type="text/javascript" src="/js/owl.carousel.min.js"></script>
<script type="text/javascript" src="/js/main.js"></script>
</body>
</html>