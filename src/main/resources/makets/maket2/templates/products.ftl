<!-- templatemo 367 shoes -->
<!-- 
Shoes Template 
http://www.templatemo.com/preview/templatemo_367_shoes 
-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Internet Catalog</title>
<link href="/css/templatemo_style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" type="text/css" href="/css/ddsmoothmenu.css" />

<script type="text/javascript" src="/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/ddsmoothmenu.js">

/***********************************************
* Smooth Navigational Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
***********************************************/

</script>

<script type="text/javascript">

ddsmoothmenu.init({
	mainmenuid: "top_nav", //menu DIV id
	orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})

</script>

</head>

<body>

<div id="templatemo_body_wrapper">
<div id="templatemo_wrapper">
	<div id="templatemo_header">
    	<div id="site_title"><h1><a href="#" style="font-size: 100%">Internet Catalog</a></h1></div>
        <div id="header_right">
		</div>
        <div class="cleaner"></div>
    </div> <!-- END of templatemo_header -->
    
    <div id="templatemo_menubar">
    	<div id="top_nav" class="ddsmoothmenu">
            <ul>
                <li><a href="/">All Products</a></li>
            </ul>

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
            <br style="clear: left" />
        </div> <!-- end of ddsmoothmenu -->
        <div id="templatemo_search">
            <form method="get">
              <input type="text" value="" name="search" onfocus="clearText(this)" onblur="clearText(this)" class="txt_field" />
              <input type="submit" value=" " id="searchbutton" class="sub_btn"  />
            </form>
        </div>
    </div> <!-- END of templatemo_menubar -->
    <div id="templatemo_main">
        <#if categories?has_content>
    	<div id="sidebar" class="float_l">
        	<div class="sidebar_box"><span class="bottom"></span>
            	<h3>Categories</h3>   
                <div class="content"> 
                	<ul class="sidebar_list">
                    <#list categories?keys as key>
                        <li><a href="/products/${categories[key]}/1">${key}</a></li>
                    </#list>
                    </ul>
                </div>
            </div>
        </div>
        </#if>
        <div id="content" class="float_r" style="display: flex; align-items: stretch; justify-content: space-between; flex-wrap: wrap">
        	<h1> Products</h1>
            <div class="product_box" style="height: 100%">
            </div>
            <div class="product_box" style="height: 100%">
            </div>
        <#list products as p>
            <div class="product_box" style="height: 100%">
                <h3>${p.name}</h3>
                <#if p.mainImgUrl?has_content>
                    <a href="/product/${p.readableCategory}/${p.readableName}"><img src="${p.mainImgUrl}" alt="" height="150" width="200"/></a>
                <#else >
                    <a href="/product/${p.readableCategory}/${p.readableName}"><img src="/images/noImage.png" alt="" height="150" width="200"/></a>
                </#if>
              <p class="product_price">${p.price} ${p.currency}</p>
            </div> 
            </#list>    
        </div> 
        <div class="cleaner"></div>
    </div> <!-- END of templatemo_main -->
</div> <!-- END of templatemo_wrapper -->
</div> <!-- END of templatemo_body_wrapper -->

</body>
</html>