<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@page import="com.karumoti.bean.AddToCartProduct"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style>
.badge {
  padding-left: 9px;
  padding-right: 9px;
  -webkit-border-radius: 9px;
  -moz-border-radius: 9px;
  border-radius: 9px;
}

.label-warning[href],
.badge-warning[href] {
  background-color: #c67605;
}
#lblCartCount {
    font-size: 14px;
    background: #ff0000;
    color: #fff;
    padding: 0 5px;
    vertical-align: top;
    margin-left: -10px; 
}

</style>

</head>
<body>
<!-- header top panel -->
		<div class="page-header-top">
			<div class="grid-row clear-fix">
			<%
			HttpSession session1 = request.getSession();
//			session1.setMaxInactiveInterval(5*24*60*60);
			
			List<AddToCartProduct> addToCartProductList1 = new ArrayList<AddToCartProduct>();
			
			if( (List<AddToCartProduct>)session1.getAttribute("AddToCart")!= null)
			{
				addToCartProductList1 = (List<AddToCartProduct>)session1.getAttribute("AddToCart");
			}
			
			HttpServletRequest httpRequest = (HttpServletRequest) request;
			String ipAddress = httpRequest.getRemoteAddr();
			

			%>
				<address>
					<a href="tel:+91-7603040606" class="phone-number"><i class="fa fa-phone"></i>+91-7603040606</a>
					
					<a href="mailto:business.ncore@gmail.com" class="email"><i class="fa fa-envelope-o"></i>business.ncore@gmail.com</a>
				</address>
				<div class="header-top-panel" style="width:100px;">
				<%-- <address>
					 <a href="${pageContext.servletContext.contextPath}/view_cart" >
					<!--<i class="fa fa-shopping-cart" ></i> -->
					<i class="fa" style="font-size:24px">&#xf07a;</i>
					<%if(addToCartProductList1.size()>0)
						{%>
					<span class='badge badge-warning' id='lblCartCount'> <%=addToCartProductList1.size() %> </span>
					<%} %>
					 </a> 
				</address>	 --%>
				</div>
			</div>
		</div>
		<!-- / header top panel -->
</body>
</html>