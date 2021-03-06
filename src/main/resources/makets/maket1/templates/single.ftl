<!DOCTYPE html>
<html>
<head>
    <meta name="verify-admitad" content="0faddc6af9" />
    <title>Internet Catalog</title>
    <link href="/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!--jQuery(necessary for Bootstrap's JavaScript plugins)-->
    <script src="/js/jquery-1.11.0.min.js"></script>
    <!--Custom-Theme-files-->
    <!--theme-style-->
    <link href="/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!--//theme-style-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!--start-menu-->
    <link href="/css/memenu.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="/js/memenu.js"></script>
    <script>$(document).ready(function(){$(".memenu").memenu();});</script>
    <!--dropdown-->
    <script type="text/javascript">
        $(function() {

            var menu_ul = $('.menu_drop > li > ul'),
                    menu_a  = $('.menu_drop > li > a');

            menu_ul.hide();

            menu_a.click(function(e) {
                e.preventDefault();
                if(!$(this).hasClass('active')) {
                    menu_a.removeClass('active');
                    menu_ul.filter(':visible').slideUp('normal');
                    $(this).addClass('active').next().stop(true,true).slideDown('normal');
                } else {
                    $(this).removeClass('active');
                    $(this).next().stop(true,true).slideUp('normal');
                }
            });

        });
    </script>
</head>
<body>
<!--top-header-->
<div class="top-header">
    <div class="container">
        <div class="top-header-main">
            <div class="col-md-6 top-header-left">
                <div class="drop">
                    <div class="clearfix">
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--top-header-->
<!--start-logo-->
<div class="logo">
    <h1>Internet Catalog</h1>
</div>
<!--start-logo-->
<!--bottom-header-->
<div class="header-bottom">
    <div class="container">
        <div class="header">
            <div class="col-md-9 header-left">
                <div class="top-nav">
                    <ul class="memenu skyblue"><li class="active"><a href="/">All Products</a></li>
                    </ul>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="col-md-3 header-right">
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<hr>
<!--bottom-header-->
<!--start-breadcrumbs-->
<div class="single contact">
    <div class="container">
        <div class="single-main">
            <div class="col-md-9 single-main-left">
                <div class="sngl-top">
                    <div class="col-md-5 single-top-left">
                        <div class="flexslider">
                            <ul class="slides">
                                <#if product.mainImgUrl?has_content>
                                    <#list imgUrls as i>
                                        <li data-thumb="${i}">
                                            <div class="thumb-image"> <img src="${i}" data-imagezoom="true" class="img-responsive" alt=""/> </div>
                                        </li>
                                    </#list>
                                <#else>
                                    <li data-thumb="/images/noImage.png">
                                        <div class="thumb-image"> <img src="/images/noImage.png" data-imagezoom="true" class="img-responsive" alt=""/> </div>
                                    </li>
                                </#if>
                            </ul>
                        </div>
                        <!-- FlexSlider -->
                        <script src="/js/imagezoom.js"></script>
                        <script defer src="/js/jquery.flexslider.js"></script>
                        <link rel="stylesheet" href="/css/flexslider.css" type="text/css" media="screen" />

                        <script>
                            // Can also be used with $(document).ready()
                            $(window).load(function() {
                                $('.flexslider').flexslider({
                                    animation: "slide",
                                    controlNav: "thumbnails"
                                });
                            });
                        </script>
                    </div>
                    <div class="col-md-7 single-top-right">
                        <div class="single-para simpleCart_shelfItem">
                            <h2>${product.name}</h2>
                            <div class="star-on">
                                <div class="clearfix"> </div>
                            </div>

                            <h5 class="item_price">${product.price} ${product.currency}</h5>
                            <p>${product.description}</p>
                            <#if params?has_content>
                                <p>
                                    <#list params?keys as key>
                                        ${key} : ${params[key]}
                                    </#list>
                                </p>
                            </#if>
                        </div>
                        <a href="${product.url}" class="add-cart item_add"> BUY!</a>
                    </div>
                    <div class="clearfix"> </div>
                </div>

                <div class="latestproducts">
                    <h3>More products:</h3>
                    <div class="product-one">
                    <#list products as p>
                        <div class="col-md-4 product-left p-left">
                            <div class="product-main simpleCart_shelfItem" style="height: 100%">
                                    <#if p.mainImgUrl?has_content>
                                        <a href="/product/${p.readableCategory}/${p.readableName}" class="mask"><img class="img-responsive zoom-img" src="${p.mainImgUrl}" alt="" /></a>
                                    <#else>
                                        <a href="/product/${p.readableCategory}/${p.readableName}" class="mask"><img class="img-responsive zoom-img" src="/images/noImage.png" alt="" /></a>
                                    </#if>
                                    <div class="product-bottom">
                                        <h3>${p.name}</h3>
                                        <h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">${p.price}</span></h4>
                                    </div>
                            </div>
                        </div>
                    </#list>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>