<%@page import="com.karumoti.model.OurTeam"%>
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
	
	
	
</head>
<body>
			<%
				List<OurTeam> ourTeamList = (List<OurTeam>)request.getAttribute("ourTeamList");
			List<WebsiteCategory> websiteCategoryList = (List<WebsiteCategory>)request.getAttribute("websiteCategoryList");
			
			WebsiteCategory websiteCategory = new WebsiteCategory();
			for(int i=0;i<websiteCategoryList.size();i++)
			{
				if(websiteCategoryList.get(i).getServerUrl().equals("about_us"))
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
							<h2></h2>
							<p><b><font size="+1" color="#0066FF">A Social B2B e-Commerce Marketplace for Urban Consumers</font></b></p><br>
							<!-- accordions -->
							<div class="accordions">
								<!-- content-title -->
								<div class="content-title active">What is NCoRe? </div>
								<!--/content-title -->
								<!-- accordions content -->
								<div class="content"><p align="justify"><font color="#000000">
								<%=websiteCategory.getDescription() %>
								</font></p></div>
								<!--/accordions content -->
								
							</div>
							<!--/accordions -->
							<!--
								<p align="right"><a href="#" class="cws-button bt-color-3 border-radius alt icon-right">View Detail<i class="fa fa-angle-right"></i></p></a>
							-->
						</div>
						<div class="grid-col grid-col-6">
							<div class="owl-carousel full-width-slider">
								<div class="gallery-item picture">
								<img src="${pageContext.servletContext.contextPath}/resources/UploadImage/WebsiteCategory/<%=websiteCategory.getId()%>/<%=websiteCategory.getPicture() %>" data-at2x="${pageContext.servletContext.contextPath}/resources/UploadImage/WebsiteCategory/<%=websiteCategory.getId()%>/<%=websiteCategory.getPicture() %>" alt>
								</div>
								
							</div>
						</div>
					</div>
				</div>
			</section>
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
		
		</main>
	</div>
	
	<%@include file="footer.jsp" %>
	
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
	
</body>
</html>