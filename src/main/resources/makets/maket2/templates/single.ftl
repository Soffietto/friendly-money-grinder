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
<meta name="keywords" content="" />
<meta name="description" content="" />
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

<script type="text/javascript" src="/js/jquery-1-4-2.min.js"></script>
<link rel="stylesheet" href="/css/slimbox2.css" type="text/css" media="screen" />
<script type="text/JavaScript" src="/js/slimbox2.js"></script>


</head>

<body>

<div id="templatemo_body_wrapper">
<div id="templatemo_wrapper">

	<div id="templatemo_header">
    	<div id="site_title"><h1><a href="/" style="font-size: 100%">Internet Catalog</a></h1></div>
        <div id="header_right">
		</div>
        <div class="cleaner"></div>
    </div> <!-- END of templatemo_header -->
    
    <div id="templatemo_menubar">
    	<div id="top_nav" class="ddsmoothmenu">
            <ul>
                <li><a href="/">All Products</a></li>
            </ul>
            <br style="clear: left" />
        </div> <!-- end of ddsmoothmenu -->
    </div> <!-- END of templatemo_menubar -->
    <div id="templatemo_main">

        <div id="content" class="float_r">
        	<h1 style="line-height: 30px">${product.name}</h1>
            <div class="content_half float_l">
        	<a  rel="lightbox[portfolio]" href="${product.mainImgUrl}"><img src="${product.mainImgUrl}" alt="image" height="200" width="300"/></a>
            </div>
            <div class="content_half float_r">
                <table>
                    <tr>
                        <td width="160">Price:</td>
                        <td>${product.price} ${product.currency}</td>
                    </tr>
                <#list params?keys as key>
                    <tr>
                        <td>${key}</td>
                        <td>${params[key]}</td>
                    </tr>
                </#list>
                </table>
                <div class="cleaner h20"></div>
                <hr>
                <a href="${product.url}" class="item_add">BUY!</a>
			</div>
            <div class="cleaner h30"></div>
            
            <h5>Product Description</h5>
            <p>${product.description}</p>
            
          <div class="cleaner h50"></div>
            <h3>Related Products</h3>
            <#list products as p>
            <div class="product_box">
                <a href="/product/${p.readableCategory}/${p.readableName}"><img src="${p.mainImgUrl}" alt="" height="150" width="200"/></a>
                <h3>${p.name}</h3>
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