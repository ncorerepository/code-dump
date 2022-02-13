<%@page import="com.karumoti.model.TrainingProgram"%>
<%@page import="com.karumoti.model.TrainingModule"%>
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
	
	
	<!-- Bootstrap Core CSS -->
     <%-- <link href="${pageContext.servletContext.contextPath}/resources/admintemplate/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
	 --%><!-- jQuery -->
    <script src="${pageContext.servletContext.contextPath}/resources/admintemplate/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.servletContext.contextPath}/resources/admintemplate/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
		
		 <style>
		 
		 .close {
	float: right;
	font-size: 21px;
	font-weight: 700;
	line-height: 1;
	color: #000;
	text-shadow: 0 1px 0 #fff;
	filter: alpha(opacity = 20);
	opacity: .2
}

.close:focus, .close:hover {
	color: #000;
	text-decoration: none;
	cursor: pointer;
	filter: alpha(opacity = 50);
	opacity: .5
}
		 
		button.close {
	-webkit-appearance: none;
	padding: 0;
	cursor: pointer;
	background: 0 0;
	border: 0
}

		.modal-open {
	overflow: hidden
}

.modal {
	position: fixed;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	z-index: 1050;
	display: none;
	overflow: hidden;
	-webkit-overflow-scrolling: touch;
	outline: 0
}

.modal.fade .modal-dialog {
	-webkit-transition: -webkit-transform .3s ease-out;
	-o-transition: -o-transform .3s ease-out;
	transition: transform .3s ease-out;
	-webkit-transform: translate(0, -25%);
	-ms-transform: translate(0, -25%);
	-o-transform: translate(0, -25%);
	transform: translate(0, -25%)
}

.modal.in .modal-dialog {
	-webkit-transform: translate(0, 0);
	-ms-transform: translate(0, 0);
	-o-transform: translate(0, 0);
	transform: translate(0, 0)
}

.modal-open .modal {
	overflow-x: hidden;
	overflow-y: auto
}

.modal-dialog {
	position: relative;
	width: auto;
	margin: 10px
}

.modal-content {
	position: relative;
	background-color: #fff;
	-webkit-background-clip: padding-box;
	background-clip: padding-box;
	border: 1px solid #999;
	border: 1px solid rgba(0, 0, 0, .2);
	border-radius: 6px;
	outline: 0;
	-webkit-box-shadow: 0 3px 9px rgba(0, 0, 0, .5);
	box-shadow: 0 3px 9px rgba(0, 0, 0, .5)
}

.modal-backdrop {
	position: fixed;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	z-index: 1040;
	background-color: #000
}

.modal-backdrop.fade {
	filter: alpha(opacity = 0);
	opacity: 0
}

.modal-backdrop.in {
	filter: alpha(opacity = 50);
	opacity: .5
}

.modal-header {
	padding: 15px;
	border-bottom: 1px solid #e5e5e5
}

.modal-header .close {
	margin-top: -2px
}

.modal-title {
	margin: 0;
	line-height: 1.42857143
}

.modal-body {
	position: relative;
	padding: 15px
}

.modal-footer {
	padding: 15px;
	text-align: right;
	border-top: 1px solid #e5e5e5
}

.modal-footer .btn+.btn {
	margin-bottom: 0;
	margin-left: 5px
}

.modal-footer .btn-group .btn+.btn {
	margin-left: -1px
}

.modal-footer .btn-block+.btn-block {
	margin-left: 0
}

.modal-scrollbar-measure {
	position: absolute;
	top: -9999px;
	width: 50px;
	height: 50px;
	overflow: scroll
}

@media ( min-width :768px) {
	.modal-dialog {
		width: 600px;
		margin: 30px auto
	}
	.modal-content {
		-webkit-box-shadow: 0 5px 15px rgba(0, 0, 0, .5);
		box-shadow: 0 5px 15px rgba(0, 0, 0, .5)
	}
	.modal-sm {
		width: 300px
	}
}

@media ( min-width :992px) {
	.modal-lg {
		width: 900px
	}
}
		</style>
	
		
		
		
	<!-- <style> 
        .bs-example { 
            margin: 20px; 
        } 
          
        .modal-content iframe { 
            margin: 0 auto; 
            display: block; 
        } 
    </style> --> 
    
   <!--  <script> 
        $(document).ready(function() { 
            var url = $("#Geeks3").attr('src'); 
            $("#Geeks2").on('hide.bs.modal', function() { 
                $("#Geeks3").attr('src', ''); 
            }); 
            $("#Geeks2").on('show.bs.modal', function() { 
                $("#Geeks3").attr('src', url); 
            }); 
        }); 
    </script>  -->
     
</head>
<body>

			<%
				TrainingProgram trainingProgram = (TrainingProgram)request.getAttribute("trainingProgram");
				List<TrainingModule> trainingModuleList = (List<TrainingModule>)request.getAttribute("trainingModuleList");
			%>
			
	<!-- page header -->
	<header class="only-color">
		<%@include file="header_top.jsp" %>
		<%@include file="header.jsp" %>
	</header>
	<!-- / page header -->
	
		<div class="page-content grid-row">
		<main>
			<div class="grid-col-row clear-fix">
				<div class="grid-col grid-col-6 alt portfolio-item">
					<div class="video-player">
						<iframe src="<%=trainingProgram.getVideoUrl() %>"></iframe>
					</div>
					<br>
					<center><h3><b><%=trainingProgram.getTrainingName() %></b></h3></center>
				</div>
				<div class="grid-col grid-col-6 alt portfolio-item">
					
					
					<div class="grid-col grid-col-6">
							<p align="justify">
							<%=trainingProgram.getDescription() %>
							</p><br>
							<h4> Training Outline: </h4>
							<!-- accordions -->
							<div class="accordions">
							<%
									for(int i=0; i<trainingModuleList.size();i++)
									{
										TrainingModule trainingModule = trainingModuleList.get(i);
							%>
							
								<!-- content-title -->
								<div class="content-title"><%=trainingModule.getModuleName()%></div>
								<!--/content-title -->
								<!-- accordions content -->
								<div class="content"><%=trainingModule.getModuleName()%> Training Content <a href="#Geeks<%=i %>" data-toggle="modal" class="cws-button bt-color-3 border-radius">View Video</a>
										   <center> 
										 		<div id="Geeks<%=i %>" class="modal fade"> 
										                <div class="modal-dialog"> 
										                    <div class="modal-content"> 
										                        <div class="modal-body"> 
										                        	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button> 
										                            <iframe id="Geek<%=i %>" width="450" height="350"  src= "<%=trainingModule.getVideoUrl()%>?autoplay=1" frameborder="0" allowfullscreen> 
										                            </iframe> 
										                        </div> 
										                    </div> 
										                </div> 
										        </div> 
										   </center>
								</div>
								<!--/accordions content -->
								
								<% } %>
								
								
								<br>
								
							</div>
							<!--/accordions -->
					</div>
			</div>
			
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