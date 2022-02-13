<%@page import="com.karumoti.model.Trainer"%>
<%@page import="com.karumoti.model.Product"%>
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
				Trainer trainer = (Trainer)request.getAttribute("trainer");
			    List<Product> productList = (List<Product>)request.getAttribute("productList");
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
						
						<% 
							if(trainer.getVideoUrl().equals(""))
							{
						%>
								<div class="boxs-tab">
									<div class="animated fadeIn active" data-box="1">
										<img style="height:270px !important; width:370px !important;" src="${pageContext.servletContext.contextPath}/resources/UploadImage/Trainer/<%=trainer.getId()%>/<%=trainer.getProfilePicture() %>" data-at2x="${pageContext.servletContext.contextPath}/resources/UploadImage/Trainer/<%=trainer.getId()%>/<%=trainer.getProfilePicture() %>" alt>
									</div>
								</div>	
						<%
							}else{
						%>
								<div class="video-player">
									<iframe src="<%=trainer.getVideoUrl()%>"></iframe>
								</div>
						<%
							}
						%>
							
						</div>
						<div class="grid-col grid-col-6">
							<h2><%=trainer.getName() %></h2><br>
							<p align="justify" style="height:130px;overflow:auto;"><%=trainer.getOverview() %></p>
							<p align="justify"><b>Address: </b> <%=trainer.getAddressLine1() %> ,
							&nbsp; <%=trainer.getAddressLine2() %>
							&nbsp; <%=trainer.getLandMark() %>,
							&nbsp; <%=trainer.getDistrict() %>,
							&nbsp; <%=trainer.getState() %>,
							&nbsp; <%=trainer.getCountry() %>,
							&nbsp; <%=trainer.getPinCode() %>.</p>
							<p align="justify"><b>Art-Form: </b> <%=trainer.getEmail() %></p> 
							<p align="justify"><b>Experience: </b> <%=trainer.getExperience() %>+ Years</p>
					<div class="grid-buttons columns-col columns-col-6">
						<p align="right">
						<a href="${pageContext.servletContext.contextPath}/collaborate_us/Trainer/<%=trainer.getName()%>(<%=trainer.getEmail() %>)" class="cws-button bt-color-3 border-radius">Request for Training</a>
						</p>
					</div>	
							
						</div>
					</div>
				</div>
			</section>
			<hr class="divider-color"/>
			
			<div class="page-content grid-row">
		<main>
			<div class="isotope-container">
				<div class="isotope-header clear-fix">
				<%
				String fullName = trainer.getName().trim();
				String name[] = fullName.split(" ");
				String firstName = "";
				if(name.length>0)
				{
					firstName = name[0];
				}
				%>
				
				<%
					if(productList.size()>0) 
					{
				%>
					<h2 class="margin-none"><%=firstName%>'s Creation</h2>	
				<%
					}
				%>	
				</div>
				<div class="grid-col-row">
					<div class="isotope">
					
						<%
							for(int i=0; i< productList.size();i++)
							{
								Product product = productList.get(i);
						%>
						<div class="item">
							<%-- <div class="picture" >
								<div class="link-cont">
									<a href="${pageContext.servletContext.contextPath}/resources/UploadImage/Product/<%=product.getId()%>/<%=product.getDisplayPicture() %>" class="fancy fa fa-search"></a>
								</div>
								<img src="${pageContext.servletContext.contextPath}/resources/UploadImage/Product/<%=product.getId()%>/<%=product.getDisplayPicture() %>" data-at2x="${pageContext.servletContext.contextPath}/resources/UploadImage/Product/<%=product.getId()%>/<%=product.getDisplayPicture() %>" alt>
							</div> --%>
							
							<div class="picture" >
									<div >
										<a href="${pageContext.servletContext.contextPath}/product/<%=product.getId()%>" >
									
									<img style="height:270px;" src="${pageContext.servletContext.contextPath}/resources/UploadImage/Product/<%=product.getId()%>/<%=product.getDisplayPicture() %>" data-at2x="${pageContext.servletContext.contextPath}/resources/UploadImage/Product/<%=product.getId()%>/<%=product.getDisplayPicture() %>" alt>
								</a>
								</div>
								 </div>
								 
							<%-- <p>
								<form class="subscribe" action="${pageContext.servletContext.contextPath}/product/<%=product.getId()%>">
									<center><input type="submit" value="View Product Details"></center>
								</form>
							</p>
							 --%>
							<h5><p align="center"><b><%=product.getName() %></b></p></h5>
						</div>
						<%
							}
						%>
						
					</div>
				</div>
			</div>
		</main>
	</div>
		</main>
	</div>


	
	<%@include file="footer.jsp" %>
	
</body>
</html>