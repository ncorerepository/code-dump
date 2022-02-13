<%@page import="com.karumoti.model.ArtForm"%>
<%@page import="com.karumoti.model.ProductCategory"%>
<%@page import="com.karumoti.model.Artisan"%>
<%@page import="com.karumoti.model.BoutiqueOwner"%>
<%@page import="com.karumoti.model.OurTeam"%>
<%@page import="com.karumoti.model.WebsiteCategory"%>
<%@ page import="java.util.List"%>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE HTML>
<html>
<head>
	<title>NCoRe</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
	
	<!-- style -->
	<link rel="shortcut icon" href="${pageContext.servletContext.contextPath}/resources/karumoti/img/favicon.png">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/karumoti/css/font-awesome.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/karumoti/fi/flaticon.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/karumoti/css/main.css">
	
	<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/karumoti/css/jquery.fancybox.css" />
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/karumoti/css/owl.carousel.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/karumoti/rs-plugin/css/settings.css" media="screen">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/karumoti/css/animate.css">
	<!--styles -->
	
	<!-- script -->
	<script src="${pageContext.servletContext.contextPath}/resources/karumoti/js/jquery.min.js"></script>
	<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
	<script type="text/javascript" src="http://google-maps-utility-library-v3.googlecode.com/svn/trunk/infobox/src/infobox_packed.js"></script>
	<script type='text/javascript' src='${pageContext.servletContext.contextPath}/resources/karumoti/js/jquery.validate.min.js'></script>
	<script src="${pageContext.servletContext.contextPath}/resources/karumoti/js/jquery.form.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/resources/karumoti/js/TweenMax.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/resources/karumoti/js/main.js"></script>
	<!-- jQuery REVOLUTION Slider  -->
	<script type="text/javascript" src="${pageContext.servletContext.contextPath}/resources/karumoti/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
	<script type="text/javascript" src="${pageContext.servletContext.contextPath}/resources/karumoti/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/resources/karumoti/js/jquery.isotope.min.js"></script>
	
	<script src="${pageContext.servletContext.contextPath}/resources/karumoti/js/owl.carousel.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/resources/karumoti/js/jquery-ui.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/resources/karumoti/js/jflickrfeed.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/resources/karumoti/js/jquery.fancybox.pack.js"></script>
	<script src="${pageContext.servletContext.contextPath}/resources/karumoti/js/jquery.fancybox-media.js"></script>
	<script src="${pageContext.servletContext.contextPath}/resources/karumoti/js/retina.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/resources/karumoti/js/jquery.tweet.js"></script>
	<!-- script -->
	
	
	<style>
	/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 200px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
  background-color: #fefefe;
  margin: auto;
  padding: 20px;
  border: 1px solid #888;
  width: 50%;
}

/* The Close Button */
.close {
  color: #aaaaaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}
</style>

<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">&times;</span>
    <p align="center"><b>Thank You for Your Interest.<br> Our Executive will call you soon or you can call us at +91-7603040606 for any query.</b></p>
  </div>

</div>
	
</head>
<body>

			<%
				List<ArtForm> artFormList = (List<ArtForm>)request.getAttribute("artFormList");   
				List<ProductCategory> productCategoryList = (List<ProductCategory>)request.getAttribute("productCategoryList");
				List<Artisan> artisanList = (List<Artisan>)request.getAttribute("artisanList");
				List<BoutiqueOwner> boutiqueOwnerList = (List<BoutiqueOwner>)request.getAttribute("boutiqueOwnerList");
				List<OurTeam> ourTeamList = (List<OurTeam>)request.getAttribute("ourTeamList");
				List<WebsiteCategory> websiteCategoryList = (List<WebsiteCategory>)request.getAttribute("websiteCategoryList");
				
				
				
				String msg = "";
				try
				{
					msg = request.getSession().getAttribute("requestSend").toString();
					request.getSession().setAttribute("requestSend","");
				}
				catch(Exception e)
				{
					msg="";
				}
			%>
			
			
			<%-- <script type="text/javascript">
			$(document).ready( function () {
				 <%
				 if(msg.equals("true"))
				 {
				 %>
				 var modal = document.getElementById("myModal");
				 var span = document.getElementsByClassName("close")[0];
				 span.onclick = function() {
				   modal.style.display = "none";
				 }
				 window.onclick = function(event) {
				   if (event.target == modal) {
				     modal.style.display = "none";
				   }
				 }
				 modal.style.display = "block";
				 <%
				 }
				 %>
			});
			</script> --%>
			
			<%
			if(msg.equals("true"))
						 {
							%>
								<script>
							 	 $(document).ready(function(){
									  alert("Thank You for Your Interest.\nOur Executive will call you soon or you can call us at +91-7603040606 for any query.")
								  });
								</script>
							<%
						 }
			%>

	<!-- page header -->
	<header class="only-color">
		<%@include file="header_top.jsp" %>
		<%@include file="header.jsp" %>
	</header>
	<!-- / page header -->

	<!-- revolution slider -->
	<div class="tp-banner-container">
		<div class="tp-banner-slider">
			<ul>
				<li data-masterspeed="700">
					<%--  <img src="${pageContext.servletContext.contextPath}/resources/karumoti/rs-plugin/assets/loader.gif" data-lazyload="${pageContext.servletContext.contextPath}/resources/karumoti/images/slider-1.png" data-bgposition="left 20%" alt>
					  --%>
					 <img src="${pageContext.servletContext.contextPath}/resources/karumoti/rs-plugin/assets/loader.gif" data-lazyload="${pageContext.servletContext.contextPath}/resources/karumoti/images/slider-1.png" data-bgposition="left 20%" alt>
					 
					<div class="tp-caption sl-content align-left" data-x="['left','center','center','center']" data-hoffset="20" data-y="center" data-voffset="0"  data-width="['720px','600px','500px','300px']" data-transform_in="opacity:0;s:1000;e:Power2.easeInOut;" 
	 data-transform_out="opacity:0;s:300;s:1000;" data-start="400">
						<div class="sl-title">NCoRe</div>
						<p>A Social B2B e-Commerce Marketplace for Urban Consumers</p>
					</div>
   				</li>
   				<li data-masterspeed="700">
					<%--  <img src="${pageContext.servletContext.contextPath}/resources/karumoti/rs-plugin/assets/loader.gif" data-lazyload="${pageContext.servletContext.contextPath}/resources/karumoti/images/slider-1.png" data-bgposition="left 20%" alt>
					  --%>
					 <img src="${pageContext.servletContext.contextPath}/resources/karumoti/rs-plugin/assets/loader.gif" data-lazyload="${pageContext.servletContext.contextPath}/resources/karumoti/images/slider-2.jpg" data-bgposition="left 20%" alt>
					 
					<div class="tp-caption sl-content align-left" data-x="['left','center','center','center']" data-hoffset="20" data-y="center" data-voffset="0"  data-width="['720px','600px','500px','300px']" data-transform_in="opacity:0;s:1000;e:Power2.easeInOut;" 
	 data-transform_out="opacity:0;s:300;s:1000;" data-start="400">
						<div class="sl-title">NCoRe</div>
						<p>A Social B2B e-Commerce Marketplace for Urban Consumers</p>
					</div>
   				</li>
			</ul>
		</div>
	</div>
	<!-- / revolution slider -->
	
	<hr class="divider-color">
	<!-- content -->
	<div id="home" class="page-content padding-none">
		<!-- section -->
		<section class="padding-section">
			<div class="grid-row clear-fix">
				<div class="grid-col-row">
				<%
				int count = 1;
							for(int i=1; i<websiteCategoryList.size() && count<=3 ; i++,count++)
								{
								WebsiteCategory websiteCategory = websiteCategoryList.get(i);
						%>
				
					<div class="grid-col grid-col-4">
						<!-- course item -->
						<div class="course-item" >
							<div class="course-hover">
								<img  src="${pageContext.servletContext.contextPath}/resources/UploadImage/WebsiteCategory/<%=websiteCategory.getId()%>/<%=websiteCategory.getPicture() %>" data-at2x="${pageContext.servletContext.contextPath}/resources/UploadImage/WebsiteCategory/<%=websiteCategory.getId()%>/<%=websiteCategory.getPicture() %>" alt>
								<div class="hover-bg bg-color-1"></div>
								<a href="${pageContext.servletContext.contextPath}/<%=websiteCategory.getServerUrl() %>">Learn More</a>
							</div>
							<div class="course-name clear-fix">
								<span class="price"></span>
							<h3><a href="${pageContext.servletContext.contextPath}/<%=websiteCategory.getServerUrl() %>"><b><%=websiteCategory.getName() %></b></a></h3>
								</div>
							<div class="course-date bg-color-<%=count%> clear-fix">
								<div class="divider"></div>
							</div>
						</div>
						<!-- / course item -->
					</div>
					
					<% } %>
					
				</div>
			</div>
		</section>
		<!-- / section -->
		
		<%
			for(int i=1; i<websiteCategoryList.size()  ; i++)
			{
				WebsiteCategory websiteCategory = websiteCategoryList.get(i);
				if(websiteCategory.getServerUrl().equals("buy_product") ||
						websiteCategory.getServerUrl().equals("create_product") || 
						websiteCategory.getServerUrl().equals("get_trained"))
				{
		%>

		<hr class="divider-color"/>
		<!-- paralax section -->
		<section class="fullwidth-background padding-section">
			<div class="grid-row clear-fix">
				<h2 class="center-text"><%=websiteCategory.getName()%></h2>
				<div class="grid-col-row">
					<section>
						<div class="grid-row clear-fix">
							<div class="grid-col-row">
								<div class="grid-col grid-col-6">
									<div class="boxs-tab">
										<div class="animated fadeIn active" data-box="1">
											<img src="${pageContext.servletContext.contextPath}/resources/UploadImage/WebsiteCategory/<%=websiteCategory.getId()%>/<%=websiteCategory.getPicture() %>" data-at2x="${pageContext.servletContext.contextPath}/resources/UploadImage/WebsiteCategory/<%=websiteCategory.getId()%>/<%=websiteCategory.getPicture() %>" alt>
										</div>
										
									</div>
								</div>
								<div class="grid-col grid-col-6">
								<br><br>
									<p align="justify"><%=websiteCategory.getDescription() %></p>
									<br>
									<a href="${pageContext.servletContext.contextPath}/<%=websiteCategory.getServerUrl()%>" class="cws-button bt-color-3 border-radius alt icon-right float-right">View Details<i class="fa fa-angle-right"></i></a>
									
								</div>
							</div>
						</div>
				</section>
				</div>
			</div>
		</section>
		<%}
				}%>
		
		<!-- paralax section -->
		<hr class="divider-color"/>
			<div class="container">
			<!-- main content -->
			<main><br>
				<div class="grid-buttons columns-col columns-col-9">
						<p align="right"><a href="${pageContext.servletContext.contextPath}/all_artisan" class="cws-button bt-color-4 border-radius alt">View All Artisans</a></p>
					</div>
		<%-- <section>
					<div class="clear-fix">
					
						<div class="grid-col-row">
						
						<!-- carousel people -->
					<div class="carousel-container">
						<div class="title-carousel">
							<h2 class="margin-none">Our Artisans</h2>
							<div class="carousel-nav">
								<div class="carousel-button">
									<div class="prev"><i class="fa fa-angle-left"></i></div><!-- 
								 --><div class="next"><i class="fa fa-angle-right"></i></div>
								</div>
							</div>
						</div>
						<div class="grid-col-row">
							<div class="owl-carousel owl-three-item">
							
							<%
							for(int i=0; i<artisanList.size(); i++)
							{
							Artisan artisan = artisanList.get(i);
							%>
							
								 <div class="gallery-item">
									<div class="course-item" >
									<div class="course-hover">
										<a href="${pageContext.servletContext.contextPath}/artisan/<%=artisan.getId()%>">
										<img  src="${pageContext.servletContext.contextPath}/resources/UploadImage/Artisan/<%=artisan.getId()%>/<%=artisan.getProfilePicture() %>" data-at2x="${pageContext.servletContext.contextPath}/resources/UploadImage/Artisan/<%=artisan.getId()%>/<%=artisan.getProfilePicture() %>" alt>
										<div class="hover-bg bg-color-1"></div>
										<a href="${pageContext.servletContext.contextPath}/artisan/<%=artisan.getId()%>">View Details
										
 										<!-- </a> -->
									</div>
									<div class="course-name clear-fix">
										<span class="price"><%=artisan.getAddressLine1() %> </span>
									<h3><a href="${pageContext.servletContext.contextPath}/artisan/<%=artisan.getId()%>"><b><font color="#00CC66"><%=artisan.getName()%></font></b></a></h3>
										</div>
									
								</div>
								</div> 
								
								<%} %>
								
							</div>
						</div>
					</div>
					<!-- carousel people -->
						
						</div>
					</div>
				</section> --%>
				
				
				
				<section>
					<div class="clear-fix">
						<div class="grid-col-row">
						
						<!-- carousel people -->
					<div class="carousel-container">
						<div class="title-carousel">
							<h2 class="margin-none">Our Artisans</h2>
							<div class="carousel-nav">
								<div class="carousel-button">
									<div class="prev"><i class="fa fa-angle-left"></i></div><!-- 
								 --><div class="next"><i class="fa fa-angle-right"></i></div>
								</div>
							</div>
						</div>
						<div class="grid-col-row">
							<div class="owl-carousel owl-three-item">
							
							<%
							for(int i=0; i<artisanList.size(); i++)
							{
							Artisan artisan = artisanList.get(i);
							%>
							
								 <div class="gallery-item">
										<div class="course-item">
										<div class="picture" >
									<div >
									<!-- <div class="link-cont"> -->
										 <a href="${pageContext.servletContext.contextPath}/artisan/<%=artisan.getId()%>" >
									 
								 	<img style="height:270px;" src="${pageContext.servletContext.contextPath}/resources/UploadImage/Artisan/<%=artisan.getId()%>/<%=artisan.getProfilePicture() %>" data-at2x="${pageContext.servletContext.contextPath}/resources/UploadImage/Artisan/<%=artisan.getId()%>/<%=artisan.getProfilePicture() %>" alt>
								</a>
								</div>
								 </div>
								<div class="course-name clear-fix">
										<span class="price"><%=artisan.getAddressLine1() %> </span>
									<h3><a href="${pageContext.servletContext.contextPath}/artisan/<%=artisan.getId()%>"><b><font color="#00CC66"><%=artisan.getName()%></font></b></a></h3>
										</div>
									
								</div>
								</div> 
								
								<%} %>
								
							</div>
						</div>
					</div>
					<!-- carousel people -->
						
						</div>
					</div>
				</section>
				
			</main>	
		</div>
		
		<hr class="divider-color" />
		<div class="container">
			<!-- main content -->
			<main><br>
		<div class="grid-buttons columns-col columns-col-9">
						<p align="right"><a href="${pageContext.servletContext.contextPath}/buy_product_category" class="cws-button bt-color-4 border-radius alt">View All Products</a></p>
					</div>
		<section>
					<div class="clear-fix">
						<div class="grid-col-row">
						
						<!-- carousel people -->
					<div class="carousel-container">
						<div class="title-carousel">
							<h2 class="margin-none">Our Products</h2>
							<div class="carousel-nav">
								<div class="carousel-button">
									<div class="prev"><i class="fa fa-angle-left"></i></div><!-- 
								 --><div class="next"><i class="fa fa-angle-right"></i></div>
								</div>
							</div>
						</div>
						<div class="grid-col-row">
							<div class="owl-carousel owl-three-item">
							
							<%
							for(int i=0; i<productCategoryList.size() ; i++)
							{
							ProductCategory productCategory = productCategoryList.get(i);
							%>
							
								 <div class="gallery-item">
										<div class="course-item">
										<div class="picture" >
									<div >
										<a href="${pageContext.servletContext.contextPath}/product_category/<%=productCategoryList.get(i).getId()%>" >
									
									<img style="height:270px;" src="${pageContext.servletContext.contextPath}/resources/UploadImage/ProductCategory/<%=productCategory.getId()%>/<%=productCategory.getPicture() %>" data-at2x="${pageContext.servletContext.contextPath}/resources/UploadImage/ProductCategory/<%=productCategory.getId()%>/<%=productCategory.getPicture() %>" alt>
								</a>
								</div>
								 </div>
								 <div class="course-name">
										<center ><b><font color="#ffffff"><%=productCategory.getCategoryName() %></font></b></center>
										</div>
									
								</div>
								</div> 
								
								<%} %>
								
							</div>
						</div>
					</div>
					<!-- carousel people -->
						
						</div>
					</div>
				</section>
			</main>	
		</div>
		
		<hr class="divider-color" />
		<div class="container">
			<!-- main content -->
			<main><br>
		<div class="grid-buttons columns-col columns-col-9">
						<p align="right"><a href="${pageContext.servletContext.contextPath}/buy_product_artform" class="cws-button bt-color-4 border-radius alt">View All Products</a></p>
					</div>
		<section>
					<div class="clear-fix">
						<div class="grid-col-row">
						
						<!-- carousel people -->
					<div class="carousel-container">
						<div class="title-carousel">
							<h2 class="margin-none">Our Arts & Crafts</h2>
							<div class="carousel-nav">
								<div class="carousel-button">
									<div class="prev"><i class="fa fa-angle-left"></i></div><!-- 
								 --><div class="next"><i class="fa fa-angle-right"></i></div>
								</div>
							</div>
						</div>
						<div class="grid-col-row">
							<div class="owl-carousel owl-three-item">
							
							<%
							for(int i=0; i<artFormList.size() ; i++)
							{
							ArtForm artForm = artFormList.get(i);
							%>
							
								 <div class="gallery-item">
										<div class="course-item">
										<div class="picture" >
											<div >
												<a href="${pageContext.servletContext.contextPath}/product_artform/<%=artFormList.get(i).getId()%>" >
											
											 <img style="height:270px;" src="${pageContext.servletContext.contextPath}/resources/UploadImage/ArtForm/<%=artForm.getId()%>/<%=artForm.getPicture() %>" data-at2x="${pageContext.servletContext.contextPath}/resources/UploadImage/ArtForm/<%=artForm.getId()%>/<%=artForm.getPicture() %>" alt>
										</a>
										</div>
										 </div>
										 <div class="course-name">
										<center ><b><font color="#00CC66"><%=artForm.getArtFormName() %></font></b></center>
										</div>
									
								</div>
								</div> 
								
								<%} %>
								
							</div>
						</div>
					</div>
					<!-- carousel people -->
						
						</div>
					</div>
				</section>
			</main>	
		</div>
		
		
		
		<hr class="divider-color" />
		<div class="container">
			<!-- main content -->
			<main><br>
		<div class="grid-buttons columns-col columns-col-9">
						<p align="right"><a href="${pageContext.servletContext.contextPath}/all_boutique_owner" class="cws-button bt-color-4 border-radius alt">View All Partner</a></p>
					</div>
		<section>
					<div class="clear-fix">
						<div class="grid-col-row">
						
						<!-- carousel people -->
					<div class="carousel-container">
						<div class="title-carousel">
							<h2 class="margin-none">Our Partner</h2>
							<div class="carousel-nav">
								<div class="carousel-button">
									<div class="prev"><i class="fa fa-angle-left"></i></div><!-- 
								 --><div class="next"><i class="fa fa-angle-right"></i></div>
								</div>
							</div>
						</div>
						<div class="grid-col-row">
							<div class="owl-carousel owl-three-item">
							
							<%
							for(int i=0; i<boutiqueOwnerList.size() ; i++)
							{
								BoutiqueOwner boutiqueOwner = boutiqueOwnerList.get(i);
							%>
							
								 <div class="gallery-item">
										<div class="course-item">
										<div class="picture" >
											<div >
												<a href="${pageContext.servletContext.contextPath}/boutique_owner/<%=boutiqueOwner.getId()%>" >
											
											 <img style="height:270px;" src="${pageContext.servletContext.contextPath}/resources/UploadImage/BoutiqueOwner/<%=boutiqueOwner.getId()%>/<%=boutiqueOwner.getProfilePicture() %>" data-at2x="${pageContext.servletContext.contextPath}/resources/UploadImage/BoutiqueOwner/<%=boutiqueOwner.getId()%>/<%=boutiqueOwner.getProfilePicture() %>" alt>
										</a>
										</div>
										 </div>
										 <div class="course-name">
										<center ><b><font color="#00CC66"><%=boutiqueOwner.getName() %></font></b></center>
										</div>
									
								</div>
								</div> 
								
								<%} %>
								
							</div>
						</div>
					</div>
					<!-- carousel people -->
						
						</div>
					</div>
				</section>
			</main>	
		</div>
		
		
		
		<%-- <div class="container">
			<!-- main content -->
			<main><br>
		<div class="isotope-container">
				<div class="isotope-header clear-fix">
					<h2 class="margin-none">Our Arts & Crafts</h2>		
				</div>
				
				
				<div class="grid-col-row">
					<div class="isotope">
					
						<%
							for(int i=0; i<artFormList.size() && i<3; i++)
								{
								ArtForm artForm = artFormList.get(i);
						%>
						
						<div class="item" >
							<div class="picture">
								<div class="link-cont">
									<a href="${pageContext.servletContext.contextPath}/product_artform/<%=artFormList.get(i).getId()%>" class="fancy fa fa-search"></a>
								</div>
								 <img src="${pageContext.servletContext.contextPath}/resources/UploadImage/ArtForm/<%=artForm.getId()%>/<%=artForm.getPicture() %>" data-at2x="${pageContext.servletContext.contextPath}/resources/UploadImage/ArtForm/<%=artForm.getId()%>/<%=artForm.getPicture() %>" alt>
							
							 </div>
						</div>
						
						<%
								}
						%>
						
					</div>
				</div>
				
				
				
				
				</div>
			</div>
		</div>
		</main> --%>
		<hr class="divider-color" />

		<!-- section -->
		<section class="padding-section">
			<div class="grid-row clear-fix">
				<div class="grid-col-row">
					<div class="grid-col grid-col-6">
						<div class="video-player">
							<iframe src="https://www.youtube.com/embed/UEnFKKzfaj4"></iframe>
							
						</div>
					</div>
					<div class="grid-col grid-col-6 clear-fix">
						<h2>Learn More About Us From Video</h2>
						<p align="justify"><font color="#000000">NCoRe is a creative digital platform, connecting rural artisans to a global network of urban buyers and designers to collaborate and co-create handcrafted products.</font></p>
						<p align="justify"><font color="#000000">NCoRe promotes rural artisans and their traditional & indigenous art forms in the global marketplace by providing an organic connection between rural artisans and urban consumers and other associated entities in the supply chain, like raw material suppliers, designers / trainers, micro-financer, logistics providers etc.</font></p>
						<br>
						<a href="${pageContext.servletContext.contextPath}/video_gallery" class="cws-button bt-color-3 border-radius alt icon-right float-right">Watch More<i class="fa fa-angle-right"></i></a>
					</div>
				</div>
			</div>
		</section>
		<!-- / section -->
				<hr class="divider-color" />
		<!-- section -->
		<section class="fullwidth-background">
				<div class="grid-row">
					<!-- carousel people -->
					<div class="carousel-container">
						<div class="title-carousel">
							<h2>Our Team</h2>
							<div class="carousel-nav">
								<div class="carousel-button">
									<div class="prev"><i class="fa fa-angle-left"></i></div><!-- 
								 --><div class="next"><i class="fa fa-angle-right"></i></div>
								</div>
							</div>
						</div>
						<div class="grid-col-row">
							<div class="owl-carousel owl-two-item">
							
							<%
								for(int i=0; i<ourTeamList.size() ; i++)
									{
									OurTeam ourTeam = ourTeamList.get(i);
							%>
							
								<div class="gallery-item">
									<div class="item-instructor bg-color-<%=i+1%>">
										 <div class="instructor-avatar"> 
											<img src="${pageContext.servletContext.contextPath}/resources/UploadImage/OurTeam/<%=ourTeam.getId()%>/<%=ourTeam.getProfilePicture() %>" data-at2x="${pageContext.servletContext.contextPath}/resources/UploadImage/OurTeam/<%=ourTeam.getId()%>/<%=ourTeam.getProfilePicture() %>" alt>
										 </div> 
										<div class="info-box">
											<h3><%=ourTeam.getName() %></h3>
											<span class="instructor-profession"><%=ourTeam.getDesignation() %></span>
											<div class="divider"></div>
											<p><%=ourTeam.getKarumotiDesignation() %></p>
											
										</div>
									</div>
								</div>
								
								<%} %>
								
							</div>
						</div>
					</div>
					<!-- carousel people -->
				</div>
			</section>
		<!-- / section -->

		
	<hr class="divider-color"/>
	<div class="grid-row clear-fix">
			<div class="grid-col-row">
				<div class="grid-col grid-col-8">
					<section>
						<h2>Contact us</h2>
						<div class="widget-contact-form">
							<!-- contact-form -->
							<div class="info-boxes error-message alert-boxes error-alert" id="feedback-form-errors">
								<strong>Attention!</strong>
								<div class="message"></div>
							</div>
							<div class="email_server_responce"></div>
							<form:form action="${pageContext.request.contextPath}/ContactUsAdd"  method="post"  modelAttribute="contactUs" class="contact-form alt clear-fix">
         		
								<form:input type="text" required="required" path="name" size="40" placeholder="Your Name *" aria-invalid="false" aria-required="true"/>
								<form:input type="email" required="required" path="email"  size="40" placeholder="Your Email *" aria-invalid="false" aria-required="true"/>
								<form:input type="text" required="required" path="subject"  size="40" placeholder="Subject *" aria-invalid="false" aria-required="true"/>
								<form:textarea required="required" path="message"  cols="40" rows="3" placeholder="Your Message *" aria-invalid="false" aria-required="true"></form:textarea>
								<input type="submit" value="Send" class="cws-button border-radius alt"/> 
							</form:form>
							
							<!--/contact-form -->
						</div>
					</section>
				</div>
				<div class="grid-col grid-col-4 widget-address">
					<section>
						<h2>Our Offices</h2>
						<address>
							<p>Indian Institute of Management, Calcutta</p>
							<p><strong class="fs-18">Address:</strong><br/>Diamond Harbour Rd, Joka, Kolkata, West Bengal 700104</p>
							<p><strong class="fs-18">Phone number:</strong><br/>
								<a href="tel:+91-7603040606">+91-7603040606</a><br/>
							</p>
							<p><strong class="fs-18">E-mail:</strong><br/>
								<a href="mailto:business.ncore@gmail.com">business.ncore@gmail.com</a><br/>
							</p>
						</address>
					</section>
				</div>
			</div>
		</div>
	
	
	<%@include file="footer.jsp" %>

</body>
</html>