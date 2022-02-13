<%@page import="com.karumoti.model.Product"%>
<%@page import="com.karumoti.model.ArtForm"%>
<%@page import="com.karumoti.model.Artisan"%>
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
				List<Product> productList = (List<Product>)request.getAttribute("productList");
				List<Artisan> artisanList = (List<Artisan>)request.getAttribute("artisanList");
				ArtForm artForm = (ArtForm)request.getAttribute("artForm");
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
								<div class="animated fadeIn active" data-box="1" >
										<img  src="${pageContext.servletContext.contextPath}/resources/UploadImage/ArtForm/<%=artForm.getId()%>/<%=artForm.getPicture() %>" data-at2x="${pageContext.servletContext.contextPath}/resources/UploadImage/ArtForm/<%=artForm.getId()%>/<%=artForm.getPicture() %>" alt>
								</div>
								
							</div>
						</div>
						<div class="grid-col grid-col-6">
							<h2>About <%=artForm.getArtFormName() %></h2>
							<p align="justify"><%=artForm.getDescription() %></p>
							<br><a href="${pageContext.servletContext.contextPath}/collaborate_us/Artform/<%=artForm.getArtFormName()%>" class="cws-button bt-color-3 border-radius">Collaborate with us for <%=artForm.getArtFormName() %> Work</a>
						</div>
					</div>
				</div>
			</section>
			<hr class="divider-color"/>

			<div class="page-content grid-row">
			<main>
			<div class="isotope-container">
				<div class="isotope-header clear-fix">
					<h2 class="margin-none">Sample <%=artForm.getArtFormName() %> Items</h2>	
				</div>
				
				<div class="grid-col-row">
					<div class="isotope">
					
						
						<%
							for(int i=0;i<productList.size() && i<3;i++)
							{
								Product product = productList.get(i);
						%>
						<div class="item">
							<div class="picture" >
								<div >
									<a href="${pageContext.servletContext.contextPath}/product/<%=product.getId()%>" >
								
								<img style="height:270px;" src="${pageContext.servletContext.contextPath}/resources/UploadImage/Product/<%=product.getId()%>/<%=product.getDisplayPicture() %>" data-at2x="${pageContext.servletContext.contextPath}/resources/UploadImage/Product/<%=product.getId()%>/<%=product.getDisplayPicture() %>" alt>
							</a>
							</div>
							</div>
							<center><h5><%=product.getName() %></h5></center>
														
							<p align="center">
								
									<a href="${pageContext.servletContext.contextPath}/product/<%=product.getId()%>" class="cws-button bt-color-3 border-radius">View Product Details</a>&nbsp;&nbsp;
									<a href="${pageContext.servletContext.contextPath}/artisan/<%=product.getArtisanId()%>" class="cws-button bt-color-3 border-radius">View Creator</a> 
							</p>
						</div>
						<%} %>
						
					</div>
					<hr class="divider-color"/>
				</div>
			</div>

			<div class="isotope-container">
				<div class="isotope-header clear-fix">
					<br><h2 class="margin-none">Some <%=artForm.getArtFormName() %> Artisan</h2>		
				</div>
				<div class="grid-col-row">
					<div class="isotope">
						
						<%
							for(int i=0; i<artisanList.size();i++ )
							{
								Artisan artisan = artisanList.get(i);
						%>
						<div class="item">
							<div class="picture">
								<div >
									<a href="${pageContext.servletContext.contextPath}/artisan/<%=artisan.getId()%>" >
								
								<img style="height:270px;" src="${pageContext.servletContext.contextPath}/resources/UploadImage/Artisan/<%=artisan.getId()%>/<%=artisan.getProfilePicture() %>" data-at2x="${pageContext.servletContext.contextPath}/resources/UploadImage/Artisan/<%=artisan.getId()%>/<%=artisan.getProfilePicture() %>" alt>
							</a>
							</div>
							</div>
								
							<p align="center">
								<center><h5><%=artisan.getName()%></h5></center>
							</p>
						</div>
													
							<%} %>	
							
					</div>
					<hr class="divider-color"/>
				</div>
			</div>
			
						
		</main>
	</div>

<br><br>
		</main>
	</div>
	
<%@include file="footer.jsp" %>

</body>
</html>