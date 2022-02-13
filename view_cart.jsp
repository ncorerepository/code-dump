<%@page import="com.karumoti.bean.AddToCartProduct"%>
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
				List<AddToCartProduct> addToCartProductList = (List<AddToCartProduct>)request.getAttribute("addToCartProductList");
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
			
			<%-- <script type="text/javascript">
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
			</script> --%>
			
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
			
	<!-- page header -->
	<header class="only-color">
		<%@include file="header_top.jsp" %>
		<%@include file="header.jsp" %>
	</header>

	<!-- / page header -->
	<div class="page-content woocommerce">
		<div class="container clear-fix">
			<!-- Shop -->
			<div class="title clear-fix">
				<h2 class="title-main">Cart</h2>
				<a href="${pageContext.servletContext.contextPath}/buy_product_category" class="button-back">Back to shopping<i class="fa fa-angle-double-right"></i></a>
			</div>
			<div id="content" role="main">
				<form action="#" method="post">
					<table class="shop_table cart">
						<thead>
							<tr>
								<th class="product-thumbnail">Product</th>
								<th class="product-name">&nbsp;</th>
								<th class="product-price">Price</th>
								<th class="product-quantity">Quantity</th>
								<th class="product-subtotal">Total</th>
								<th class="product-remove">&nbsp;</th>
							</tr>
						</thead>
						<tbody>		
						
						<%
						double tot = 0.0;
							for(int i=0;i<addToCartProductList.size();i++)
							{
								AddToCartProduct product = addToCartProductList.get(i);
								tot = tot + Double.parseDouble(product.getTotalPrice());
						%>						
							<tr class="cart_item">
								<td class="product-thumbnail">
									<a href="${pageContext.servletContext.contextPath}/product/<%=product.getId()%>">
										<img src="${pageContext.servletContext.contextPath}/resources/UploadImage/Product/<%=product.getId()%>/<%=product.getProductImage() %>" data-at2x="${pageContext.servletContext.contextPath}/resources/UploadImage/Product/<%=product.getId()%>/<%=product.getProductImage() %>" class="attachment-shop_thumbnail wp-post-image" alt="">
									</a>					
								</td>
								<td class="product-name">
									<a href="${pageContext.servletContext.contextPath}/product/<%=product.getId()%>"><%=product.getProductName() %> </a>			
								</td>
								<td class="product-price">
									<span class="amount">INR <%=product.getPrice() %></span>			
								</td>
								<td class="product-quantity">
									<table >
										<tr>
											<td style="width:20px;">
												<a href="${pageContext.servletContext.contextPath}/minus_quantity/<%=product.getId() %>" ><img  src="${pageContext.servletContext.contextPath}/resources/karumoti/img/minus.jpg"></a>
											</td>
											<td >
												<b><font color="#000000"><%=product.getQuantity() %></font></b>
											</td>
											<td style="width:20px;">
												<a href="${pageContext.servletContext.contextPath}/add_quantity/<%=product.getId() %>" ><img src="${pageContext.servletContext.contextPath}/resources/karumoti/img/plus.jpg"></a>
											</td>
										</tr>
									</table>
								<%-- <div class="quantity buttons_added">
									<input disabled type="number" id="quantity" step="1" min="0" name="cart" value="<%=product.getQuantity() %>" title="Qty" class="input-text qty text">
									</div> --%>	
											
								</td>
								<td class="product-subtotal">
									<span class="amount">INR <%=product.getTotalPrice()%></span>		
								</td>
								<td class="product-remove">
									<a href="${pageContext.servletContext.contextPath}/remove_to_cart/<%=product.getId() %>" class="remove" title="Remove this item"></a>	
								</td>
							</tr>
							<%} %>
							<tr>
								<td colspan="6" class="actions">
									<!-- <div class="coupon">
										<label for="coupon_code">Coupon:</label> 
										<input type="text" name="coupon_code" class="input-text corner-radius-top" id="coupon_code" value="" placeholder="Coupon code">
										<input type="submit" class="cws-button corner-radius-bottom" name="apply_coupon" value="Apply Coupon">	
									</div>
									<input type="submit" class="cws-button bt-color-5" name="update_cart" value="Update Cart"> -->
									<%if(addToCartProductList.size()>0)
										{
										%>
									<a href="${pageContext.servletContext.contextPath}/add_cust_details" class="cws-button bt-color-3 border-radius">Proceed to Checkout</a> 
										<%} %>
								</td>
							</tr>
						</tbody>
					</table>
				</form>
				<hr class="divider-color" />
				<div class="cart-collaterals">	

					<div class="cart_totals ">	
						<h3>Cart Totals</h3>
						<table>
							<tbody>
								<tr class="cart-subtotal">
									<th>Cart Subtotal</th>
									<td><span class="amount">INR <%=tot %></span></td>
								</tr>
								<tr class="shipping">
									<th>Shipping</th>
									<td>	
										Free Shipping		
									</td>
								</tr>
								<tr class="order-total">
									<th>Order Total</th>
									<td><span class="amount">INR <%=tot %></span></td>
								</tr>			
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!--Shop -->
		</div>
	</div>
	
	<script type="text/javascript">
/* 
$(function () {
    $("#state-navbar a").on('change', function () {

        var stateId = $(this).attr('data-id');
             
        $("#loader1").show();
        $.ajax({
	        type: 'GET',
	        url: "${pageContext.servletContext.contextPath}/state/" + stateId,
	        success: function(data){
	        	 $("#loader1").hide();
	            var option="";
	            $('#location-list').empty();
	            $("#location-list").append("<option value='state_"+stateId+"' selected='selected'>All</option>")
	            for(var i=0; i<data.length; i++){
	                $("#location-list").append("<option value='"+data[i].id + "'>"+data[i].name + "</option>")
	            }
	            
	            $("#location-list option:first-child").trigger('change');
	        },
	        error:function(){
	        	 $("#loader1").hide();
	            //alert("error");
	        }

	    });
        
    });
}); */
</script>
	
	<%@include file="footer.jsp" %>
	
</body>
</html>