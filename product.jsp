<%@page import="com.karumoti.model.Artisan"%>
<%@page import="com.karumoti.model.Product"%>
<%@page import="com.karumoti.model.ProductCategory"%>
<%@page import="com.karumoti.model.ArtForm"%>
<%@page import="com.karumoti.model.AttachmentImage"%>
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
				Product product = (Product)request.getAttribute("product");
				Artisan artisan = (Artisan)request.getAttribute("artisan");
				
				List<ProductCategory> productCategoryList = (List<ProductCategory>)request.getAttribute("productCategoryList");
				List<ArtForm> artFormList = (List<ArtForm>)request.getAttribute("artFormList");
				List<Product> similarProductList = (List<Product>)request.getAttribute("similarProductList");
				List<AttachmentImage> productImageList = (List<AttachmentImage>)request.getAttribute("productImageList");
				
			%>
			
	<!-- page header -->
	<header class="only-color">
		<%@include file="header_top.jsp" %>
		<%@include file="header.jsp" %>
	</header>
	<!-- / page header -->
	
	<div class="page-content woocommerce">
		<div class="container clear-fix">
			<div class="grid-col-row">
				<div class="grid-col grid-col-9">
					<!-- Shop -->
					<div role="main">
						<div  itemscope="" itemtype="" class="product">
							<div class="images">
								<div class="picture">
									<a href="${pageContext.servletContext.contextPath}/resources/UploadImage/Product/<%=product.getId()%>/<%=product.getDisplayPicture() %>" class="fancy woocommerce-main-image zoom" data-fancybox-group="gallery" title="" data-rel="prettyPhoto[product-gallery]">
								
										<img style="height:270px !important; width:370px !important;" src="${pageContext.servletContext.contextPath}/resources/UploadImage/Product/<%=product.getId()%>/<%=product.getDisplayPicture() %>" data-at2x="${pageContext.servletContext.contextPath}/resources/UploadImage/Product/<%=product.getId()%>/<%=product.getDisplayPicture() %>" class="attachment-shop_single" alt="" title="">
									
									</a>
									
								</div>
								
								<div class="thumbnails">
									<div class="owl-carousel">
									<%
									for(int i= 0 ;i<productImageList.size();i++)
									{
									%>
									
										 <div class="pic thumbnail">
											<a href="${pageContext.servletContext.contextPath}/resources/UploadImage/AttachmentImage/<%=productImageList.get(i).getId()%>/<%=productImageList.get(i).getImageName() %>" class="zoom first fancy" data-fancybox-group="gallery" title="" data-rel="prettyPhoto[product-gallery]">
												<div class="hover-effect"></div>
												<img src="${pageContext.servletContext.contextPath}/resources/UploadImage/AttachmentImage/<%=productImageList.get(i).getId()%>/<%=productImageList.get(i).getImageName() %>" data-at2x="${pageContext.servletContext.contextPath}/resources/UploadImage/AttachmentImage/<%=productImageList.get(i).getId()%>/<%=productImageList.get(i).getImageName() %>" class="attachment-shop_thumbnail" alt="">
											</a>
										</div>
																				
										<%} %>
										<br/><br/>
									</div>	
								</div>
								<br>
								<br>
								<br>
								<br>
							</div>
							<div class="summary entry-summary">
								<h2  class="product_title entry-title" style="font-size:25px;"><%=product.getName() %></h2>
								<div  itemscope="" itemtype="">
									<p class="price">
										<span class="amount" style="font-size:25px;"><sup>INR</sup><%=product.getPrice() %></span>
									</p>
								</div>
								<div itemprop="description">
									<p align="justify" style="height:140px;overflow:auto;"><strong>Quick Overview:</strong><br/><%=product.getFullOverview() %> </p>
								</div>	
								<div class="main-features">
									<p class="head"><strong>Main features:</strong></p>
									<div class="features">
									
									<%
									String mainFeatures = product.getMainFeatures();
									String part[] = mainFeatures.split("\n");
									for(int i= 0 ;i<part.length;i++)
									{
									%>
									
										<div><i class="minus">---</i> <%=part[i] %></div>
									<%} %>	
									</div>
								</div>					
								<div class="grid-buttons columns-col columns-col-6">
								
									<%-- <a href="${pageContext.servletContext.contextPath}/add_to_cart/<%=product.getId() %>" class="cws-button corner-radius-bottom alt"><i class="fa fa-shopping-cart"></i> Add to cart</a> 
									 --%><a href="${pageContext.servletContext.contextPath}/collaborate_us/Product/<%=product.getName() %>" class="cws-button bt-color-3 border-radius">Collaborate for Orders</a>
								</div>
								
								<div class="product_meta">
														
								</div>
							</div>
														
							<!--/woocommerce tabs -->
							<hr class="divider-color"/>
							<!-- woocommerce relative product -->
							<section>
								<div class="carousel-container">
									<div class="title-carousel">
										<h2>Similar Items</h2>
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
											for(int i=0;i<similarProductList.size();i++)
											{
												Product similarProduct = similarProductList.get(i);
										%>
										
											<div class="gallery-item">
												<!-- product -->
												<div class="product new">
													<div class="picture" >
														<div >
															<a href="${pageContext.servletContext.contextPath}/product/<%=similarProduct.getId()%>" >
														
														<img style="height:270px;" src="${pageContext.servletContext.contextPath}/resources/UploadImage/Product/<%=similarProduct.getId()%>/<%=similarProduct.getDisplayPicture() %>" data-at2x="${pageContext.servletContext.contextPath}/resources/UploadImage/Product/<%=similarProduct.getId()%>/<%=similarProduct.getDisplayPicture() %>" alt="">
														</a>
														</div>
													</div>
													<div class="product-name">
														<a href="${pageContext.servletContext.contextPath}/product/<%=similarProduct.getId()%>"><%=similarProduct.getName() %></a>
													</div>
													<div class="star-rating" title="Rated 5.00 out of 5">
														<span style="width:80%"><strong class="rating">4.00</strong> out of 5</span>
													</div>
													<span class="price">
														<span class="amount"><sup>INR</sup><%=similarProduct.getPrice() %></span>
													</span>
													
													<div class="product-description">
														<div class="short-description">
														<%String overview =  similarProduct.getShortOverview(); 
														if(overview.length()>110)
														{
															overview = overview.substring(0, 110);
															overview = overview + "...";
														}
														%>
															<p style="align:justify;"><%=overview %></p>
														</div>
														
													</div>
													<%-- <a href="${pageContext.servletContext.contextPath}/add_to_cart/<%=similarProduct.getId() %>" class="cws-button corner-radius-bottom alt"><i class="fa fa-shopping-cart"></i> Add to cart</a> 
													 --%><!-- <a href="#" rel="nofollow" data-product_id="70" data-product_sku="" class="cws-button border-radius icon-left alt"> <i class="fa fa-shopping-cart"></i> Add to cart</a> -->
												</div>
												<!-- product -->
											</div>
											
											<%} %>
											

										</div>
									</div>
								</div>
							</section>
							<!-- woocommerce relative product -->
						</div>	
					</div>
					<!--Shop -->
				</div>
				<div class="grid-col grid-col-3">
					<!-- widget best seller -->
					<aside class="widget-selers">
						<h2>Created By</h2>
						<hr class="divider-big" />
						<div class="owl-carousel widget-carousel">
							<div >
								<article class="clear-fix">
									<a href="${pageContext.servletContext.contextPath}/artisan/<%=artisan.getId()%>">
									<img src="${pageContext.servletContext.contextPath}/resources/UploadImage/Artisan/<%=artisan.getId()%>/<%=artisan.getProfilePicture() %>" data-at2x="${pageContext.servletContext.contextPath}/resources/UploadImage/Artisan/<%=artisan.getId()%>/<%=artisan.getProfilePicture() %>" alt>
									</a>
									<center><a href="${pageContext.servletContext.contextPath}/artisan/<%=artisan.getId()%>"><h4><%=artisan.getName() %></h4></a></center>
									<p style="text-align:center;"><%=artisan.getEmail() %> </p>
								</article>
							</div>
						</div>
					</aside>
					
					<!-- / widget best seller -->
					<!-- <br><br> -->
					<!-- widget categories -->
					<aside class="widget-categories">
						<h2>Shop by Category</h2>
						<hr class="divider-big" />
						<ul style="height:250px;overflow:auto;">
						<%
							for(int i=0;i<productCategoryList.size() ;i++)
							{
							%>
							<li class="cat-item cat-item-1 current-cat"><a href="${pageContext.servletContext.contextPath}/product_category/<%=productCategoryList.get(i).getId()%>"><%=productCategoryList.get(i).getCategoryName() %></a></li>
							<%
							}
						%>
						</ul>
					</aside>
					<!-- widget categories -->
					
					<!-- widget categories -->
					<aside class="widget-categories">
						<h2>Shop by Arts & Crafts</h2>
						<hr class="divider-big" />
						<ul style="height:250px;overflow:auto;">
						
						<%
							for(int i=0;i<artFormList.size() ;i++)
							{
							%>
							<li class="cat-item cat-item-1 current-cat"><a href="${pageContext.servletContext.contextPath}/product_artform/<%=artFormList.get(i).getId()%>"><%=artFormList.get(i).getArtFormName() %></a></li>
							<%
							}
						%>
						</ul>
					</aside>
					<!-- widget categories -->
					
					
					
				</div>
			</div>
		</div>
	</div>
	
	<%@include file="footer.jsp" %>
	
</body>
</html>