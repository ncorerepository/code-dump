<%@page import="com.karumoti.model.ProductCategory"%>
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
    <p align="center"><b>Thank You for Your Order.<br> Our Executive will call you soon or you can call us at +91-7603040606 for any query.</b></p>
  </div>

</div>
</head>
<body>

			<%
				List<ArtForm> artFormList = (List<ArtForm>)request.getAttribute("artFormList");
				List<ProductCategory> productCategoryList = (List<ProductCategory>)request.getAttribute("productCategoryList");
				List<WebsiteCategory> websiteCategoryList = (List<WebsiteCategory>)request.getAttribute("websiteCategoryList");
				WebsiteCategory websiteCategory = new WebsiteCategory();
				for(int i=0;i<websiteCategoryList.size();i++)
				{
					if(websiteCategoryList.get(i).getServerUrl().equals("buy_product"))
					{
						websiteCategory = websiteCategoryList.get(i);
					}
				}
				
				
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
			
			<script type="text/javascript">
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
			</script>
			
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
						<p align="right"><a href="${pageContext.servletContext.contextPath}/buy_product_category" class="cws-button bt-color-4 border-radius alt">View All Products</a></p>
					</div>		
				
		<section>
					
						<div class="grid-col-row">
						
						<!-- carousel people -->
					<div class="carousel-container">
						<div class="title-carousel">
						<h2 class="margin-none">Shop Products by Category</h2>
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
							for(int i=0; i<productCategoryList.size();i++ )
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
							<p align="center">
								<br>
									<a href="${pageContext.servletContext.contextPath}/product_category/<%=productCategoryList.get(i).getId()%>" class="cws-button bt-color-3 border-radius">View Details</a> 
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
			<hr class="divider-color"/>
		</div>
			
			
			
			
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
						<h2 class="margin-none">Shop Products by Arts & Crafts</h2>	
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
									<a href="${pageContext.servletContext.contextPath}/product_artform/<%=artForm.getId()%>" >
								
								<img style="height:270px;" src="${pageContext.servletContext.contextPath}/resources/UploadImage/ArtForm/<%=artForm.getId()%>/<%=artForm.getPicture() %>" data-at2x="${pageContext.servletContext.contextPath}/resources/UploadImage/ArtForm/<%=artForm.getId()%>/<%=artForm.getPicture() %>" alt>
							</a>
							</div>
							</div>
							<div class="course-name">
										<center ><b><font color="#ffffff"><%=artForm.getArtFormName() %></font></b></center>
										</div>
							<p align="center">
								<br>
									<a href="${pageContext.servletContext.contextPath}/collaborate_us/Artform/<%=artForm.getArtFormName()%>" class="cws-button bt-color-3 border-radius">Collaborate</a>&nbsp;&nbsp;
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
			<hr class="divider-color"/>
		</div>
			
		</main>
	</div>
		</main>
	</div>
	
	<%@include file="footer.jsp" %>
	
</body>
</html>