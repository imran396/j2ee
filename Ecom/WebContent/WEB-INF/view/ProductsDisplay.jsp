<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href="<c:url value="/resources/content/css/look.css" />" rel="stylesheet">
<link href="<c:url value="/resources/content/css/slidercss.css" />" rel="stylesheet">
<link href="<c:url value="/resources/content/css/reset.css" />" rel="stylesheet">
<link href="<c:url value="/resources/content/css/main.css" />" rel="stylesheet">
<link href="<c:url value="/resources/content/css/imagecontent.css" />" rel="stylesheet">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Product List</title>
</head>
<body>
<div id="header">
        
        <div class="container">
        <h3><a href="welcome.html">Brands Heaven</a></h3>
        
        
        <div id="main_menu">
        
            <ul>
                <li class="first_list"><a style="color:black" href="welcome.html" class="main_menu_first main_current">Home</a></li>
               
				
				 
                <li class="first_list"><a style="color:black" href="viewProduct.html" class="main_menu_first">View Product</a></li>


                                                                                 
                <li class="first_list">
                    <a style="color:black" href="brands.html"  class="main_menu_first">Brands</a>
                    
                </li>
                <li class="first_list">
                    <a style="color:black" href="viewCart.html" class="main_menu_first">Shopping Cart</a>
                    
                </li>
               
               
	<c:choose> 
		<c:when test="${type == 'brand'}">
			 <li class="first_list"><a style="color:black" href="uploadproduct.html" class="main_menu_first">Upload Product</a></li>
			  <li class="first_list"><a style="color:black" href="brandupdate.html?id=${id}" class="main_menu_first">Update Profile</a></li>
			   <li class="first_list"><a style="color:black"  href="brandproducts.html?id=${id}" class="main_menu_first">My Products</a></li>
		</c:when>
		<c:when test="${type == 'client'}">
			
		</c:when>
		<c:when test="${type == 'admin'}">
		
			<li class="first_list"><a style="color:black" href="adminregister.html" class="main_menu_first">ADD ADMIN</a></li>
			<li class="first_list"><a style="color:black" href="brandlist.html" class="main_menu_first">BRANDLIST</a></li>
			<li class="first_list"><a style="color:black" href="adminviewbrand.html" class="main_menu_first">PRODUCTLIST</a></li>
			<li class="first_list"><a style="color:black" href="brandregister.html" class="main_menu_first">ADD BRAND</a></li>
		</c:when>
	
	</c:choose>
	<c:choose> 
			<c:when test="${type == null}">
				<li class="first_list"><a style="color:black" href="register.html" class="main_menu_first">Registration</a></li>
			    <li class="first_list"><a style="color:black" href="login.html" class="main_menu_first">Login to Heaven</a></li>
                
				<li class="first_list"><a style="color:black" href="branduserlogin.html" class="main_menu_first">Login Brand</a></li>
			</c:when>
			<c:otherwise>
			
				<li class="first_list"><a style="color:black" href="logout.html" class="main_menu_first">Logout</a></li>
			
			</c:otherwise>
	
    </c:choose>  
            </ul>
        
        </div> <!-- END #main_menu -->
    
        </div> <!-- END .container -->
    
    </div> <!-- END #header -->
    <center>
   
        <div id="main_content">
            
        <div id="portfolio_area">
            
            <div class="container">
            
            <h2 >Product List</h2>

<br><br>
<c:if test="${!empty products}">
     <div id="portfolio_menu">
                
                <ul>
                    <li><a href="productBrand.html?id=${brand_id}" class="portfolio_menu_current">All Product</a></li>
                    <li><a href="searchProduct.html?usertype=Men&id=${brand_id}" class="portfolio_menu_current">Men</a></li>
                    <li><a href="searchProduct.html?usertype=Women&id=${brand_id}" class="portfolio_menu_current">Women</a></li>
                    <li><a href="searchProduct.html?usertype='kids'" class="portfolio_menu_current">Kids</a></li>
                    
                    
                </ul>
                
            </div> <!-- END #portfolio_menu -->
 <div id="portfolio_list">
<ul>

<c:forEach items="${products}" var="products">
<c:choose> 
	<c:when test="${products.status == 1}">
	
            
	<li class="gallery">
		<a href="productDetails.html?id=${products.id}"><em><b> ${products.name} </b>Price ${products.price}/=</em><img src="<c:url value="/resources/content/images/${products.image}"/>" alt="Smiley face"  style="height:170px; width:140px"/></a>
	</li>
	
	</c:when>
</c:choose>
</c:forEach>

</c:if>
</ul>
<br>


 </div> <!-- END .container -->
            
        </div> <!-- END #portfolio_area -->
        
    </div> <!-- END #main_content -->
</center>


<div id="footer">
        
        <div class="container">
            
            <div id="footer_about" class="footer_info">
                
                <h5>about us</h5>
                <p>Too often, interactions with the government are burdensome and frustrating. From seeking out financing opportunities to learning about the latest regulations affecting them, hard-working businesses are spending too much time navigating the federal bureaucracy. </p>
                
            </div> <!-- END #footer_about -->
            
            <div id="footer_explore" class="footer_info">
                
                <h5>explore</h5>
                <ul>
                     <li><a  href="welcome.html" >Home</a></li>
                     <li><a  href="register.html" >Registration</a></li>
                     <li><a  href="viewProduct.html" >View Product</a></li>
                     <li><a  href="brands.html" >Brands</a></li>
                    
                    
                </ul>
                
            </div> <!-- END #footer_about -->
            
            <div id="footer_browse" class="footer_info">
                
                <h5>browse</h5>
                <ul>
                     <li>
                    <a href="aboutUs.html">careers</a>
                    
                </li>
                    <li >
                    <a  href="aboutUs.html" >press &amp; media</a>
                    
                </li>
                     <li>
                    <a  href="aboutUs.html" >contact us</a>
                    
                </li>
                    <li>
                    <a href="aboutUs.html" >terms of service</a>
                    
                </li>
                    <li>
                    <a href="aboutUs.html" >privacy policy</a>
                    
                </li>
                </ul>
                
            </div> <!-- END #footer_about -->
            
            <div id="footer_contact" class="footer_info">
                
                <h5>contact us</h5>
                <p><span class="bold_text">BisLite Inc.</span>
                <br />
                Always Street 265
                <br />
                0X - 125 - Canada
                <br />
                <br />
                Phone: 987-6543-210
                <br />
                Fax: 987-6543-210</p>
                
            </div> <!-- END #footer_about -->
            
            <div id="footer_connect" class="footer_info">
                
                <h5>connect with us</h5>
                
                <ul>
                    <li><a href="#" id="facebook" title="Facebook">Facebook</a></li>
                    <li><a href="#" id="dribbble" title="Dribbble">Dribbble</a></li>
                    <li><a href="#" id="pinterest" title="Pinterest">Pinterest</a></li>
                    <li><a href="#" id="linkedin" title="LinkedIn">LinkedIn</a></li>
                    <li><a href="#" id="skype" title="Skype">Skype</a></li>
                    <li><a href="#" id="sharethis" title="Share This">ShareThis</a></li>
                </ul>
                
            </div> <!-- END #footer_about -->
            
            <p id="copyright">&copy; Copyright 2012 - BisLite Inc. All rights reserved. Some free icons used here are created by Brankic1979.com.
            <br />
            Client Logos are copyright and trademark of the respective owners / companies.</p>
            
            <a href="index.html" id="footer_logo">BisLite</a>
        
        </div> <!-- END .container -->
        
    </div> <!-- END #footer -->
</body>
</html>