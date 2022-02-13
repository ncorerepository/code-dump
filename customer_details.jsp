<%@page import="com.karumoti.model.CollaborateUs"%>
<%@page import="com.karumoti.model.ProductCategory"%>
<%@page import="com.karumoti.model.ArtForm"%>
<%@ page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
				CollaborateUs collaborateUs = (CollaborateUs)request.getAttribute("collaborateUs");
			List<ProductCategory> productCategoryList = (List<ProductCategory>)request.getAttribute("productCategoryList");
			List<ArtForm> artFormList = (List<ArtForm>)request.getAttribute("artFormList");
			
			%>
			
	
			
			
			
			
	<!-- page header -->
	<header class="only-color">
		<%@include file="header_top.jsp" %>
		<%@include file="header.jsp" %>
	</header>
	<!-- / page header -->

	<!-- page content -->
	<div class="page-content container clear-fix">
		<div class="grid-col-row">
			<div class="grid-col grid-col-9">
				<!-- main content -->
				<main>
					<section class="clear-fix">
						<h2>Please enter your <font color="#0066FF"> details</font></h2>	
					
						<form:form onsubmit="return doValidate()"  action="${pageContext.request.contextPath}/CustomerDetailsAdd"  method="post"  modelAttribute="collaborateUs" class="contact-form alt clear-fix">
         		
         				<form:input type="hidden"    path="type" />
						<form:input type="hidden"    path="collaborateWith" />
						
						<div class="form-group">
							<form:input type="text" required="required" class="login-input" placeholder="Name *" path="name"/>
						</div>		
						 <p></p>
						
						<div class="form-group">
							<form:input type="email"  class="login-input" placeholder="Email" path="email"/>
						</div>
						<p></p>
						
						<div class="form-group">
							<form:input type="text" maxlength="10"  required="required" class="login-input" placeholder="Mobile Number *" path="phone"/>
						</div>
						<p></p>
						
						<!-- <table width="200" border="1">
						  <tr>
							<td><input type="button" value="Generate OTP" class="button-fullwidth cws-button bt-color-4 border-radius smaller">	</td>
							<td>&nbsp;&nbsp;&nbsp;</td>
							<td>
								<div class="form-group">
									<input type="text" class="login-input" placeholder="Enter OTP" name="otp">
								</div>
							</td>
						  </tr>
						</table>
						<p></p> -->
						
						<div>
							<p class="form-row form-row-wide select-arrow">
								<form:select required="required" path="gender" id="gender" class="select_category" rel="select_category">
									<form:option value="" selected="selected">Gender</form:option>
									<form:option value="Male">Male</form:option>
									<form:option value="Female">Female</form:option>
									<form:option value="Other">Not to Disclose</form:option>
								</form:select>
							</p>
						</div>
						<p></p>
						
						<div class="form-group">
							<form:input class="login-input"  placeholder="Enter Your Address" path="requirements"/>
						</div>
						<!-- <p></p>	
						 <input type="file" name="cv" />  -->
							<br>						
						<center ><input type="submit" value="Place my order" class="button-fullwidth cws-button bt-color-3 border-radius"></center>
						
					</form:form>
					</section>
					<hr class="divider-color" />
					
				</main>
				<!-- / main content -->
			</div>
			<div class="grid-col grid-col-3 sidebar">
				<!-- widget categories -->
					<aside class="widget-categories">
						<h2>Shop by Category</h2>
						<hr class="divider-big" />
						<ul style="height:170px;overflow:auto;">
							<%
							for(int i=0;i<productCategoryList.size();i++)
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
						<ul style="height:170px;overflow:auto;">
							<%
							for(int i=0;i<artFormList.size();i++)
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
	<!-- / page content -->

	<%@include file="footer.jsp" %>
	
	
	<script>
	function validateEmail(email) { //Validates the email address
		//alert(email)
	    var emailRegex = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	    return emailRegex.test(email);
	}

	function validatePhone(phone) { //Validates the phone number
		//alert(phone)
	    var phoneRegex = /^(\+91-|\+91|0)?\d{10}$/; // Change this regex based on requirement
	    return phoneRegex.test(phone);
	}

	function doValidate() {
	   /* if (!validateEmail(document.getElementById("email").value) ){
	    alert("Invalid Email");
	    return false;
	} */
	   if (!validatePhone(document.getElementById("phone").value) ){
		    alert("Invalid Phone No");
		    return false;
		}

	}
	</script>
	
	
	</body>
</html>