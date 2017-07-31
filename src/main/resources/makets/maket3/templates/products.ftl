<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
    <meta charset="UTF-8">
    <title>Products List</title>
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
<div id="preloaderKDZ"></div>
<body class="products products-list">
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
            </div>
            <div class="col-3 text-right">
                <div class="header-right">
                    <div class="search-button-wrapper header-customize-item style-default">
                        <div class="icon-search-menu"><i class="wicon fa fa-search"></i></div>
                        <div class="yolo-search-wrapper">
                            <input id="search-ajax" placeholder="Enter keyword to search" type="search"/>
                            <button class="search"><i class="fa fa-search"></i></button>
                            <button class="close"><i class="pe-7s-close"></i></button>
                        </div>
                    </div>
                    <div class="shopping-cart-wrapper header-customize-item with-price">

                    </div>
                </div>
            </div>
        </div>

        <div class="header-bottom">
            <div class="container">
                <div class="main-nav-wrapper">
                    <div class="header-left">
                        <nav id="primary-menu" class="main-nav">
                            <ul class="nav" style="margin-top: 2%">
                                <div class="active menu-item menu-home"><a href="/" style="font-size: 20px">All
                                    products</a>

                                </div>
                        </nav>
                        <!-- .header-main-nav-->
                    </div>

                    <div class="header-right">

                        <div class="header-customize-item canvas-menu-toggle-wrapper"></div>
                    </div>
                </div>

            </div>
        </div>
        <nav class="yolo-canvas-menu-wrapper dark ps-container"><a href="#" class="yolo-canvas-menu-close"><i
                class="fa fa-close"></i></a>
            <div class="yolo-canvas-menu-inner sidebar">
                <aside id="text-12" class="widget widget_text">
                    <div class="textwidget">
                        <div class="begreen-widget ad-spot text-center">
                            <div class="about-image"><img src="/images/off-menu.png" alt="demo"/></div>
                            <h2 class="name_author">Be Green</h2>
                            <div class="about-description text-center">I love life and the unique position of being a
                                working artist. I love the thrill of the hunt and am an avid vintage hound, sniffing out
                                the best one-of-a-kinds.
                            </div>
                        </div>
                    </div>
                </aside>
                <aside id="text-13" class="widget widget_text">
                    <div class="textwidget"><a href="#"><img src="/images/bn-bs.jpg" alt="demo"/></a></div>
                </aside>
                <aside id="yolo-social-profile-6" class="widget widget-social-profile">
                    <ul class="social-profile social-icon-bordered">
                        <li><a title="Facebook" href="#" target="_blank"><i class="fa fa-facebook"></i>Facebook</a></li>
                        <li><a title="Twitter" href="#" target="_blank"><i class="fa fa-twitter"></i>Twitter</a></li>
                        <li><a title="Skype" href="#" target="_blank"><i class="fa fa-skype"></i>Skype</a></li>
                        <li><a title="Youtube" href="#" target="_blank"><i class="fa fa-youtube"></i>Youtube</a></li>
                    </ul>
                </aside>
            </div>
        </nav>
    </header>
    <div id="example-wrapper">
        <div class="div-box mb">
            <div class="banner-subpage">
                <div class="banner-subpage-content">
                    <div class="desc">
                        <p>Home</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="div-box mb">
            <div class="container">
                <div class="col-md-9">
                    <div class="product-wrap-list">
                    <#list products as p>
                        <div class="product-style_5 mb">
                            <div class="product-item-inner row mg-0">
                                <div class="col-sm-4 col-xs-12 pd-0">
                                    <div class="product-thumb">
                                        <div class="product-flash-wrap"></div>
                                        <div class="product-thumb-primary">
                                            <#if p.mainImgUrl?has_content>
                                                <a href="/product/${p.readableCategory}/${p.readableName}">
                                                    <img src="${p.mainImgUrl}"
                                                         alt="product1" width="375" height="450"
                                                         class="attachment-shop_catalog size-shop_catalog wp-post-image"/
                                                    >
                                                </a>
                                            <#else>
                                                <a href="/product/${p.readableCategory}/${p.readableName}">
                                                    <img src="/images/noImage.png"
                                                         alt="product1" width="375" height="450"
                                                         class="attachment-shop_catalog size-shop_catalog wp-post-image"/>
                                                </a>
                                            </#if>
                                        </div>
                                        <a href="/product/${p.readableCategory}/${p.readableName}" class="product-link">
                                            <div class="product-hover-sign">
                                                <hr/>
                                                <hr/>
                                            </div>
                                        </a>
                                    </div>
                                </div>

                                <div class="col-sm-8 col-xs-12 pd-0">
                                    <div class="product-info"><a
                                            href="/product/${p.readableCategory}/${p.readableName}">
                                        <h3 style="font-family: normal">${p.name}</h3></a>
                                        <div class="div-rate mb-20">
                                            <span class="price"><span class="product-begreen-price-amount amount"><span
                                                    class="product-begreen-price-currencysymbol">${p.currency}</span> ${p.price}</span></span>
                                        </div>
                                        <div class="product-actions">
                                            <div class="add-to-cart-wrap"><a href="${p.url}" class="add_to_cart_button"><i
                                                    class="fa fa-cart-plus"></i> Buy</a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </#list>
                    </div>
                <#if size != 0>
                    <#if category?has_content>
                        <#list 1..size as i>
                            <a href="/products/${category}/${i}">${i}</a>
                        </#list>
                    <#else>
                        <#list 1..size as i>
                            <a href="/products/${i}">${i}</a>
                        </#list>
                    </#if>
                <#else >
                    <h4>No products</h4>
                </#if>
                </div>
                <div class="col-md-3">
                    <div class="sidebar sidebar-product">
                        <aside class="mb-45 search-sidebar">
                            <h2 class="text-center mb-20">Search</h2>
                            <form method="get" class="form-input">
                                <input type="text" name="search" placeholder="Search here..."/>
                                <input type="submit">
                            </form>
                        </aside>
                        <aside class="mb-45 categories">
                            <h2 class="text-center mb-20">Categories</h2>
                            <ul class="cat-list">
                            <#list categories?keys as key>
                                <li><a href="/products/${categories[key]}/1">${key}</a></li>
                            </#list>
                            </ul>
                        </aside>
                    </div>
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
<script type="text/javascript" src="/js/mansory.js"></script>
<script type="text/javascript" src="/js/jquery.prettyPhoto.js"></script>
<script type="text/javascript" src="/js/slick.min.js"></script>
<script type="text/javascript" src="/js/jquery.final-countdown.min.js"></script>
<script type="text/javascript" src="/js/kinetic.js"></script>
<script type="text/javascript" src="/js/owl.carousel.min.js"></script>
<script type="text/javascript" src="/js/main.js"></script>
</body>
</html>