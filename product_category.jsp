<%@page import="com.karumoti.model.Product"%>
<%@page import="com.karumoti.model.ProductCategory"%>
<%@page import="com.karumoti.model.ArtForm"%>
<%@page import="java.util.stream.Collectors"%>
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
		body {
		  font-family: Arial;
		}
		
		* {
		  box-sizing: border-box;
		}
		
		form.example input[type=text] {
		  padding: 10px;
		  font-size: 17px;
		  border: 1px solid grey;
		  float: left;
		  width: 80%;
		  background: #f1f1f1;
		}
		
		form.example button {
		  float: left;
		  width: 20%;
		  padding: 5px;
		  background: #2196F3;
		  color: white;
		  font-size: 17px;
		  border: 1px solid grey;
		  border-left: none;
		  cursor: pointer;
		}
		
		form.example button:hover {
		  background: #0b7dda;
		}
		
		form.example::after {
		  content: "";
		  clear: both;
		  display: table;
		}
	</style>
	
	<script>

	function myFunc1()
	{
		  
		 var  catId = $("#myCat").val();
		 var artFormId = $("#myArtForm").val();
		 var searchbox = $("#searchtxt").val();
		 
		// alert(catId)
		 
		 if(searchbox == "")
			 {
			 searchbox = "all"
			 }
		   window.location = "${pageContext.servletContext.contextPath}/product_category/" + catId+"/"+artFormId+"/"+searchbox;
			  
	}
	
	function fun()
	{
		myFunc1()
		return false
	}
	</script>
	
</head>
<body>

			<%
				List<Product> productList1 = (List<Product>)request.getAttribute("productList");
				
				List<ArtForm> artFormList = (List<ArtForm>)request.getAttribute("artFormList");
				List<ArtForm> artFormList1 = new ArrayList<ArtForm>();
												
				String categoryId = "";
				String categoryNames = "";
				
				String artFormId = "";
				String artFormNames = "";
								
				try
				{
					categoryId = (String)request.getAttribute("categoryId");
				}
				catch(Exception e)
				{
					categoryId = "";
				}
				
				if(categoryId == null || categoryId.equals(""))
				{
					categoryId = "0";
				}
				
				
				try
				{
					categoryNames = (String)request.getAttribute("categoryNames");
				}
				catch(Exception e)
				{
					categoryNames = "";
				}
				
				
				try
				{
					artFormId = (String)request.getAttribute("artFormId");
				}
				catch(Exception e)
				{
					artFormId = "";
				}
				
				if(artFormId == null || artFormId.equals(""))
				{
					artFormId = "0";
				}
				
				
				try
				{
					artFormNames = (String)request.getAttribute("artFormNames");
				}
				catch(Exception e)
				{
					artFormNames = "";
				}
							
				
				String searchText = "";
				String searchingText = "";
				try
				{
					searchText = (String)request.getAttribute("searchText");
				}
				catch(Exception e)
				{
					searchText = "";
				}
				if(searchText == null || searchText.equals("all"))
				{
					searchingText = "";
				}
				else
				{
					searchingText = searchText;
				}
				
							
				List<Product> productList = null;
				if(!searchingText.equals("") && !searchingText.equals("all"))
				{
					productList = new ArrayList<Product>();
					for(int b=0;b<productList1.size();b++)
					{
						if(productList1.get(b).getName().toLowerCase().contains(searchingText.toLowerCase()))
						{
							productList.add(productList1.get(b));
						}
					}
				}
				else
				{
					productList = productList1;
				}
				if(productList.size()>0)
				{
					for(int k=0;k<productList.size();k++)
					{
						int artId = productList.get(k).getArtFormId();
						for(int j=0;j<artFormList.size();j++)
						{
							if(artId == artFormList.get(j).getId() )
							{
								artFormList1.add(artFormList.get(j));
								break;
							}
						}
					}
				}
			
			
			 List list = artFormList1.stream().distinct().collect(Collectors.toList());
			artFormList1  = (List<ArtForm>)list; 
			%>
			
	<!-- page header -->
	<header class="only-color">
		<%@include file="header_top.jsp" %>
		<%@include file="header.jsp" %>
	</header>
	<!-- / page header -->
	<div class="page-content grid-row">
		<main>
		
		<div class="grid-col-row">
		<hr class="divider-color"><br>
					<div class="isotope">
					
										
						<div class="item" >
						<input type="hidden" value="<%=categoryId %>" id="myCat">
						<h2><b>Search : </b></h2>	
						</div>
						
						<div class="item" >
						<select id="myArtForm" onchange="myFunc1()">
					<option value='0'>Select ArtForm</option>
					
					<%
					for(int a=0;a<artFormList1.size();a++)
					{
						String artFormName = artFormList1.get(a).getArtFormName();
						String artId = String.valueOf(artFormList1.get(a).getId());
						
							if(artFormName.equals(artFormNames))
							{
							%>
							<option selected value='<%=artId%>'><%=artFormName%></option>
							<%
							}
							else
							{
							%>
							<option value='<%=artId%>'><%=artFormName%></option>
							<%
							}
						
					}
					%>
					</select>
					</div>
						
						
					<div class="item" >
					<form class="example" onsubmit="return fun()">
  						<input type="hidden" id="searchtxt" placeholder="Search for Product" value="<%=searchingText %>"  name="search" >
  						<!-- <button type="button" onclick="myFunc1()"><i class="fa fa-search"></i></button> -->
					</form>
					
					<b><i>Want to view all products from our Collections? <font color="cyan">
					<a href="${pageContext.servletContext.contextPath}/buy_product_category">Yes</a></font></i></b>
			</div>
			
			
					
		</div>
		<hr class="divider-color"><br>
		</div>
		
			<div class="isotope-container">
				 <div class="isotope-header clear-fix">
					<h2 class="margin-none"><%=categoryNames %></h2>	
				</div>
				<div class="grid-col-row">
					<div class="isotope">
					
						<%
						
						if(!artFormId.equals("0"))
						{
							List<Product> productList2 = new ArrayList<Product>();
							for(int b=0;b<productList.size();b++)
							{
								if(productList.get(b).getArtFormId()==Integer.parseInt(artFormId))
								{
									productList2.add(productList.get(b));
								}
							}
							productList = productList2;
							
							
						}
						
						
						
							for(int i=0;i<productList.size();i++)
							{
								Product product = productList.get(i);
								
								
								
						%>
					
						<div class="item">
							<div class="picture" >
								<div >
									<a href="${pageContext.servletContext.contextPath}/product/<%=product.getId()%>" >
								
								<img style="height:270px;" src="${pageContext.servletContext.contextPath}/resources/UploadImage/Product/<%=product.getId()%>/<%=product.getDisplayPicture() %>" data-at2x="${pageContext.servletContext.contextPath}/resources/UploadImage/Product/<%=product.getId()%>/<%=product.getDisplayPicture() %>" alt>
							</a>
							
							</div>
							</div>
							<center><h5><%=product.getName() %></h5></center>
														
							<p align="center">
								
									<a href="${pageContext.servletContext.contextPath}/product/<%=product.getId()%>" class="cws-button bt-color-3 border-radius">View Product Details</a>&nbsp;&nbsp;
									<a href="${pageContext.servletContext.contextPath}/artisan/<%=product.getArtisanId()%>" class="cws-button bt-color-3 border-radius">View Creator</a> 
							</p>
						</div>
						
						<%} %>
						
					</div>
				</div> 
				
			</div>
			
		</main>
	</div>
	
	
	<%@include file="footer.jsp" %>
	
</body>
</html>