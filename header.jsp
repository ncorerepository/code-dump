<%@page import="com.karumoti.model.WebsiteCategory"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

</head>
<body>

			<%
				List<WebsiteCategory> websiteCategoryList1 = (List<WebsiteCategory>)request.getAttribute("websiteCategoryList");
			%>
<!-- sticky menu -->
		<div class="sticky-wrapper">
			<div class="sticky-menu">
				<div class="grid-row clear-fix">
					<!-- logo -->
					<a href="${pageContext.servletContext.contextPath}/" class="logo">
						<img src="${pageContext.servletContext.contextPath}/resources/karumoti/img/logo.png"  data-at2x="${pageContext.servletContext.contextPath}/resources/karumoti/img/logo.png" alt>
						<!-- <h1>NCoRe</h1> -->
					</a>
					<!-- / logo -->
					<nav class="main-nav">
						<ul class="clear-fix">
						
						<%
				
							for(int i=0; i<websiteCategoryList1.size(); i++)
								{
								WebsiteCategory websiteCategory1 = websiteCategoryList1.get(i);
						%>
							<li>
								<a href="${pageContext.servletContext.contextPath}/<%=websiteCategory1.getServerUrl()%>"><%=websiteCategory1.getName() %></a>
							</li>
														
							<% } %>
						</ul>
					</nav>
				</div>
			</div>
		</div>
		<!-- sticky menu -->
</body>
</html>