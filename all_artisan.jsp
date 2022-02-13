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
				List<Artisan> artisanList = (List<Artisan>)request.getAttribute("artisanList");
					
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
		
			
	<!-- page header -->
	<header class="only-color">
		<%@include file="header_top.jsp" %>
		<%@include file="header.jsp" %>
	</header>
	<!-- / page header -->
	<!-- page content -->
	<div class="page-content">
		<div class="container">
			<!-- main content -->
			
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
	
				<main>
				<h2 class="margin-none">Our Artisans</h2>	
				
				<div class="grid-col-row clear-fix">
					<div class="grid-col grid-col-4">
						&nbsp;
					</div>
					<!-- <div class="grid-col grid-col-4">
						<h4><p align="right">Search Artisan by Art-Form</p></h4>
					</div>
					<div class="grid-col grid-col-4">
						<p class="form-row form-row-wide select-arrow">
							<select class="select_category" rel="select_category">
								<option value="NULL" selected="selected"><font color="#0066FF">Select Your Art-Form</font></option>
								<option>Katha Stitch</option>
								<option>Patachitra</option>
								<option>Leather Work</option>
							</select>
						</p>
						<br>
					</div> -->
				</div>
				<hr class="divider-color"/>
				<section>
					<div class="clear-fix">
						<div class="grid-col-row">
						<%
						for(int i=0; i<artisanList.size();i++ )
						{
							Artisan artisan = artisanList.get(i);
					%>
						
							<div class="grid-col grid-col-4">
								<!-- course item -->
								<div class="course-item">
									<%-- <div class="course-hover" style="width:370px;height:270px;">
										<img width="100%" height="100%" src="${pageContext.servletContext.contextPath}/resources/UploadImage/Artisan/<%=artisan.getId()%>/<%=artisan.getProfilePicture() %>" data-at2x="${pageContext.servletContext.contextPath}/resources/UploadImage/Artisan/<%=artisan.getId()%>/<%=artisan.getProfilePicture() %>" alt>
										<div class="hover-bg bg-color-1"></div>
										<a href="${pageContext.servletContext.contextPath}/artisan/<%=artisan.getId()%>">View Details</a>
									</div> --%>
									
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
								<!-- / course item -->
								<%-- <p>
								<br>
								<%
									String fullName = artisan.getName().trim();
									String name[] = fullName.split(" ");
									String firstName = "";
									if(name.length>0)
									{
										firstName = name[0];
									}
								%>
									<center><a href="${pageContext.servletContext.contextPath}/artisan/<%=artisan.getId()%>" class="cws-button bt-color-3 border-radius">View <%=firstName %>'s Details</a></center>
									<br>
								</p> --%>
								
								<br><br>
							</div>
							
							<%} %>	
						</div>
					</div>
				</section>
				<hr class="divider-color"/>
			</main>
			<!-- / main content -->

		</div>
	</div>
	<!-- / page content -->
	
	<%@include file="footer.jsp" %>
	
</body>
</html>