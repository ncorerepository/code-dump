<%@page import="com.karumoti.model.Artisan"%>
<%@page import="com.karumoti.model.ArtForm"%>
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
	
</head>
<body>


		<%
				List<ArtForm> artFormList = (List<ArtForm>)request.getAttribute("artFormList");
				List<Artisan> artisanList = (List<Artisan>)request.getAttribute("artisanList");
				List<WebsiteCategory> websiteCategoryList = (List<WebsiteCategory>)request.getAttribute("websiteCategoryList");
				
				WebsiteCategory websiteCategory = new WebsiteCategory();
				for(int i=0;i<websiteCategoryList.size();i++)
				{
					if(websiteCategoryList.get(i).getServerUrl().equals("create_product"))
					{
						websiteCategory = websiteCategoryList.get(i);
					}
				}
			%>
			
	<!-- page header -->
	<header class="only-color">
		<%@include file="header_top.jsp" %>
		<%@include file="header.jsp" %>
	</header>
	<!-- / page header -->
	<div class="page-content">
		<main>
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
							<h2><%=websiteCategory.getName() %></h2><br><br>
							<p align="justify"><%=websiteCategory.getDescription() %></p>
						</div>
					</div>
				</div>
			</section>
			<hr class="divider-color"/>

		<div class="page-content grid-row">
		<main>
		
		<div class="container">
			<!-- main content -->
			<main><br>
		<div class="grid-buttons columns-col columns-col-9">
						<p align="right"><a href="${pageContext.servletContext.contextPath}/buy_product_artform" class="cws-button bt-color-4 border-radius alt">View All Products</a></p>
					</div>		
				
		<section>
					
						<div class="grid-col-row">
						
						<!-- carousel people -->
					<div class="carousel-container">
						<div class="title-carousel">
						<h2 class="margin-none">Search by Arts & Crafts</h2>
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
										<center ><b><font color="#ffffff"><%=artForm.getArtFormName() %></font></b></center>
										</div>
							<p align="center">
								<br>
									<a href="${pageContext.servletContext.contextPath}/collaborate_us/Artform/<%=artForm.getArtFormName()%>" class="cws-button bt-color-3 border-radius">Collaborate with Us for <%=artForm.getArtFormName()%> Work</a>
									<br><br>
									<a href="${pageContext.servletContext.contextPath}/artform_details/<%=artForm.getId()%>" class="cws-button bt-color-3 border-radius">Craft Details</a> 
							</p>
						</div>
								</div> 
								
								<%} %>
								
							</div>
						</div>
					</div>
					<!-- carousel people -->
						
						</div>
										
				</section>
			</main>	
			
		</div>
		
				
		
		<hr class="divider-color"/>
		<div class="container">
			<!-- main content -->
			<main><br>
		<div class="grid-buttons columns-col columns-col-9">
						<p align="right"><a href="${pageContext.servletContext.contextPath}/all_artisan" class="cws-button bt-color-4 border-radius alt">View All Artisans</a></p>
					</div>		
				
		<section>
					
						<div class="grid-col-row">
						
						<!-- carousel people -->
					<div class="carousel-container">
						<div class="title-carousel">
						<h2 class="margin-none">Search for Artisans</h2>
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
						for(int i=0; i<artisanList.size();i++ )
						{
							Artisan artisan = artisanList.get(i);
					%>
							
								 <div class="gallery-item">
										<div class="course-item">
							<div class="picture" >
								<div >
									<a href="${pageContext.servletContext.contextPath}/artisan/<%=artisan.getId()%>" >
								
								<img style="height:270px;" src="${pageContext.servletContext.contextPath}/resources/UploadImage/Artisan/<%=artisan.getId()%>/<%=artisan.getProfilePicture() %>" data-at2x="${pageContext.servletContext.contextPath}/resources/UploadImage/Artisan/<%=artisan.getId()%>/<%=artisan.getProfilePicture() %>" alt>
							</a>
							</div>
							</div>
							<div class="course-name">
										<center ><b><font color="#ffffff"><%=artisan.getName() %></font></b></center>
										</div>
							<p align="center">
								<br>
								<a href="${pageContext.servletContext.contextPath}/artisan/<%=artisan.getId()%>" class="cws-button bt-color-3 border-radius">View Artisan Details</a> 
							</p>
						</div>
								</div> 
								
								<%} %>
								
							</div>
						</div>
					</div>
					<!-- carousel people -->
						
						</div>
										
				</section>
			</main>	
			
		</div>
		
		
			
			<hr class="divider-color"/>
			
		</main>
	</div>
		</main>
	</div>
	
	<%@include file="footer.jsp" %>
	
</body>
</html>