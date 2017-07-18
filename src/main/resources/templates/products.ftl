<!DOCTYPE html>
<html>
<head>
    <meta name="verify-admitad" content="0faddc6af9"/>
    <title>Azat's Internet Catalog</title>
    <link href="/css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <!--jQuery(necessary for Bootstrap's JavaScript plugins)-->
    <script src="/js/jquery-1.11.0.min.js"></script>
    <!--Custom-Theme-files-->
    <!--theme-style-->
    <link href="/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!--//theme-style-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Luxury Watches Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);
    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!--start-menu-->
    <link href="/css/memenu.css" rel="stylesheet" type="text/css" media="all"/>
</head>
<body>
<!--top-header-->
<div class="top-header">
    <div class="container">
        <div class="top-header-main">
            <div class="col-md-6 top-header-left">
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
</div>
<!--top-header-->
<!--start-logo-->
<div class="logo">
    <h1>Azat's shop</h1>
</div>
<!--start-logo-->
<!--bottom-header-->
<div class="header-bottom">
    <div class="container">
        <div class="header">
            <div class="col-md-9 header-left">
                <div class="top-nav">
                    <ul class="memenu skyblue">
                        <li class="active"><a href="/products">All Products</a></li>
                    </ul>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="col-md-3 header-right">
                <div class="search-bar">
                    <input type="text" value="Search" onfocus="this.value = '';"
                           onblur="if (this.value == '') {this.value = 'Search';}">
                    <input type="submit" value="">
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--bottom-header-->
<!--prdt-starts-->
<div class="prdt">
    <div class="container">
        <div class="prdt-top">
            <div class="col-md-9 prdt-left">
                <div class="product-one">
                <#list products as p>
                    <div class="col-md-4 product-left p-left">
                        <div class="product-main simpleCart_shelfItem">
                            <a href="/products/${p.id}" class="mask"><img class="img-responsive zoom-img"
                                                                          src="${p.imgUrl}" alt=""/></a>
                            <div class="product-bottom">
                                <h3>${p.name}</h3>
                                <h4><a class="item_add" href="#"><i></i></a> <span
                                        class=" item_price">${p.cost} ${p.currency}</span></h4>
                            </div>
                            <div class="srch srch1">
                                <span>Скидка</span>
                            </div>
                        </div>
                    </div>
                </#list>
                </div>
            </div>
        <#if categories?has_content>
            <div class="col-md-3 prdt-right">
                <div class="w_sidebar">
                    <section class="sky-form">
                        <h4>Catogories</h4>
                        <div class="row1 scroll-pane">
                            <div class="col col-4">
                                <#list categories as c>
                                    <label class="checkbox"><a href="/products/category/${c}">${c}</a></label>
                                </#list>
                            </div>
                            <div class="col col-4">
                            <#--<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Women Watches</label>-->
                                <#--<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Kids Watches</label>-->
                                <#--<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Men Watches</label>-->
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </#if>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--product-end-->
</body>
</html>