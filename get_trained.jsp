<%@page import="com.karumoti.model.TrainingProgram"%>
<%@page import="com.karumoti.model.Trainer"%>
<%@page import="com.karumoti.model.WorkshopSeminar"%>
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
<body class="pc">

				<%
				
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
								
				
					List<TrainingProgram> trainingProgramList = (List<TrainingProgram>)request.getAttribute("trainingProgramList");
					List<Trainer> trainerList = (List<Trainer>)request.getAttribute("trainerList");
					List<WorkshopSeminar> workshopSeminarList = (List<WorkshopSeminar>)request.getAttribute("workshopSeminarList");
					List<WebsiteCategory> websiteCategoryList = (List<WebsiteCategory>)request.getAttribute("websiteCategoryList");
					
					WebsiteCategory websiteCategory = new WebsiteCategory();
					for(int i=0;i<websiteCategoryList.size();i++)
					{
						if(websiteCategoryList.get(i).getServerUrl().equals("get_trained"))
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
			<hr class="divider-color">

	
		
	<div class="page-content grid-row">
	<h2 class="center-text">Training Program</h2>
		<main>
			<div class="grid-col-row clear-fix">
			<%
					for(int i=0; i<trainingProgramList.size();i++)
					{
						TrainingProgram trainingProgram = trainingProgramList.get(i);
			%>
				<div class="grid-col grid-col-6 alt portfolio-item">
					<center>
					<div class="course-item" >
						<%-- <div class="course-hover">
							<img src="${pageContext.servletContext.contextPath}/resources/UploadImage/TrainingProgram/<%=trainingProgram.getId()%>/<%=trainingProgram.getPicture() %>" data-at2x="${pageContext.servletContext.contextPath}/resources/UploadImage/TrainingProgram/<%=trainingProgram.getId()%>/<%=trainingProgram.getPicture() %>" alt="">
							<div class="hover-bg bg-color-3"></div>
							<a href="${pageContext.servletContext.contextPath}/training_category/<%=trainingProgram.getId()%>"><%=trainingProgram.getTrainingName() %></a>
						</div> --%>
						
						<div class="picture" >
									<div >
									<%
										if(trainingProgram.getParentTrainingId()==0)
										{
											%>
											
											<a target="_blank" href="<%=trainingProgram.getVideoUrl()%>" >
										
												<img  src="${pageContext.servletContext.contextPath}/resources/UploadImage/TrainingProgram/<%=trainingProgram.getId()%>/<%=trainingProgram.getPicture() %>" data-at2x="${pageContext.servletContext.contextPath}/resources/UploadImage/TrainingProgram/<%=trainingProgram.getId()%>/<%=trainingProgram.getPicture() %>" alt>
											</a>
											<%
										}
										else
										{
									%>
									
										<a href="${pageContext.servletContext.contextPath}/training_category/<%=trainingProgram.getId()%>" >
									
											<img  src="${pageContext.servletContext.contextPath}/resources/UploadImage/TrainingProgram/<%=trainingProgram.getId()%>/<%=trainingProgram.getPicture() %>" data-at2x="${pageContext.servletContext.contextPath}/resources/UploadImage/TrainingProgram/<%=trainingProgram.getId()%>/<%=trainingProgram.getPicture() %>" alt>
										</a>
									<%} %>
								</div>
						 </div>
						
						
						<h3><b><%=trainingProgram.getTrainingName() %></b></h3>
					</div>
					</center>
				</div>
				
				<% } %>
				
			</div>
		</main>
	</div>
	</main></div>
	
	
	
	
	<div class="container">
			<!-- main content -->
			<main><br>
				<div class="grid-buttons columns-col columns-col-9">
						<p align="right"><a href="${pageContext.servletContext.contextPath}/all_trainer" class="cws-button bt-color-4 border-radius alt">View All Trainers</a></p>
					</div>
		<section>
					<div class="clear-fix">
					
						<div class="grid-col-row">
						
						<!-- carousel people -->
					<div class="carousel-container">
						<div class="title-carousel">
							<h2 class="margin-none">Our Trainers</h2>
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
							for(int i=0; i< trainerList.size();i++)
							{
								Trainer trainer  = trainerList.get(i);
							%>
							
								 <div class="gallery-item">
									<div class="course-item" >
									<%-- <div class="course-hover">
										<img  src="${pageContext.servletContext.contextPath}/resources/UploadImage/Trainer/<%=trainer.getId()%>/<%=trainer.getProfilePicture() %>" data-at2x="${pageContext.servletContext.contextPath}/resources/UploadImage/Trainer/<%=trainer.getId()%>/<%=trainer.getProfilePicture() %>" alt="">
										<div class="hover-bg bg-color-3"></div>
										<a href="${pageContext.servletContext.contextPath}/trainer/<%=trainer.getId()%>">View Details</a>
									</div> --%>
									
									<div class="picture" >
									<div >
									<!-- <div class="link-cont"> -->
										 <a href="${pageContext.servletContext.contextPath}/trainer/<%=trainer.getId()%>" >
									 
								 	<img style="height:270px;" src="${pageContext.servletContext.contextPath}/resources/UploadImage/Trainer/<%=trainer.getId()%>/<%=trainer.getProfilePicture() %>" data-at2x="${pageContext.servletContext.contextPath}/resources/UploadImage/Trainer/<%=trainer.getId()%>/<%=trainer.getProfilePicture() %>" alt>
								</a>
								</div>
								 </div>
								 
									<div class="course-name clear-fix">
										<span class="price"><%=trainer.getAddressLine1() %> Trainer</span>
									<h3><a href="${pageContext.servletContext.contextPath}/trainer/<%=trainer.getId()%>"><b><font color="#00CC66"><%=trainer.getName() %></font></b></a></h3>
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
		
	<hr class="divider-color">
	
	
	<div class="page-content grid-row">
		<main>
			<section class="clear-fix">
			<%if(workshopSeminarList.size()>0)
				{
				%>
				<h2>Workshops and Seminars</h2>
				<%} %>
				<!-- accordions -->
				<%
				for(int i=0;i<workshopSeminarList.size();i++)
				{
				%>
								
				<div class="toggles">
					<!-- content-title -->
					<div class="content-title"><%=workshopSeminarList.get(i).getVideoName() %></div>
					<!--/content-title -->
					<!-- accordions content -->
					<div class="content">
						<br>
						<div class="video-player">
							<iframe src="<%=workshopSeminarList.get(i).getUrl() %>" width="50%" height="50%"></iframe>
						</div>
						<br>
					</div>
					<!--/accordions content -->
				</div>
				
				<%} %>
				<!--/accordions -->
			</section>
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