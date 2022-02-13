<%@page import="com.karumoti.model.TrainingProgram"%>
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
				List<TrainingProgram> trainingProgramList = (List<TrainingProgram>)request.getAttribute("trainingProgramList");
			%>
			
	<!-- page header -->
	<header class="only-color">
		<%@include file="header_top.jsp" %>
		<%@include file="header.jsp" %>
	</header>
	<!-- / page header -->
	<div class="page-content grid-row">
	<hr class="divider-color"><br>
		<main>
			<div class="grid-col-row clear-fix">
			<%
					for(int i=0; i<trainingProgramList.size();i++)
					{
						TrainingProgram trainingProgram = trainingProgramList.get(i);
			%>
			
				<div class="grid-col grid-col-3">
					<div class="portfolio-item" >
						<div class="picture">
							<img src="${pageContext.servletContext.contextPath}/resources/UploadImage/TrainingProgram/<%=trainingProgram.getId()%>/<%=trainingProgram.getPicture() %>" data-at2x="${pageContext.servletContext.contextPath}/resources/UploadImage/TrainingProgram/<%=trainingProgram.getId()%>/<%=trainingProgram.getPicture() %>" alt>
						</div>
						<h3><center><b><%=trainingProgram.getTrainingName() %></b></center></h3><br>
						<center>
							<a href="${pageContext.servletContext.contextPath}/training_details/<%=trainingProgram.getId()%>" class="cws-button bt-color-3 border-radius">Access Repository</a><p></p>
							<a href="${pageContext.servletContext.contextPath}/collaborate_us/Training/<%=trainingProgram.getTrainingName() %>" class="cws-button bt-color-3 border-radius">Request a Trainer</a> 
						</center>
					</div>
				</div>
				
			<% } %>
			
				
			</div>
		</main>
		<hr class="divider-color">
	</div>
	
	<%@include file="footer.jsp" %>
	
</body>
</html>