<%@page import="com.karumoti.model.Product"%>
<%@page import="com.karumoti.model.ProductCategory"%>
<%@page import="com.karumoti.model.ArtForm"%>
<%@page import="java.util.HashMap"%>
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

	function myFunc()
	{
		  
		 var  catId= $("#myCat").val();
		 var  childCatId= 0;
		 var artFormId = $("#myArtForm").val();
		 var searchbox = $("#searchtxt").val();
		 
		 if(searchbox == "")
			 {
			 searchbox = "all"
			 }
		 
		 window.location = "${pageContext.servletContext.contextPath}/buy_product_artform/" + catId+"/"+childCatId+"/"+artFormId+"/"+searchbox;
			  
	}
	function myFunc1()
	{
		  
		 var  catId = $("#myCat").val();
		 var  childCatId = $("#myChildCat").val();
		 var artFormId = $("#myArtForm").val();
		 var searchbox = $("#searchtxt").val();
		 
		 if(searchbox == "")
			 {
			 searchbox = "all"
			 }
		   window.location = "${pageContext.servletContext.contextPath}/buy_product_artform/" + catId+"/"+childCatId+"/"+artFormId+"/"+searchbox;
			  
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
			
			
				HashMap<String, List<Product>> artFormWiseProduct = (HashMap<String, List<Product>>)request.getAttribute("artFormWiseProduct");
				List<String> artFormNameList = (List<String>)request.getAttribute("artFormNameList");
				
				List<ProductCategory> parentCategoryList = (List<ProductCategory>)request.getAttribute("parentCategoryList");		
				List<ArtForm> artFormList = (List<ArtForm>)request.getAttribute("artFormList");
				
				List<String> artFormNameList1 = null;
				List<String> categoryNameList1 = null;
				
				List<ProductCategory> childCategoryList = new ArrayList<ProductCategory>();
				
				
				
				String categoryId = "";
				String categoryNames = "";
				
				String childCategoryId = "";
				String childCategoryNames = "";
				
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
					childCategoryId = (String)request.getAttribute("childCategoryId");
				}
				catch(Exception e)
				{
					childCategoryId = "";
				}
				
				if(childCategoryId == null || childCategoryId.equals(""))
				{
					childCategoryId = "0";
				}
				
				
				try
				{
					childCategoryNames = (String)request.getAttribute("childCategoryNames");
				}
				catch(Exception e)
				{
					childCategoryNames = "";
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
				
								
				if(artFormNames != null)
				{
					if(!artFormNames.equals("") && !artFormNames.equals("ALL"))
					{
						artFormNameList1 = new ArrayList<String>();
						artFormNameList1.add(artFormNames);
					}
					else
					{
						artFormNameList1 = artFormNameList;
					}
				}
				else
				{
					artFormNameList1 = artFormNameList;
				}
				
				
				if(!categoryId.equals("0"))
				{
					childCategoryList = (List<ProductCategory>)request.getAttribute("childCategoryList");
				}
			%>
				
	<!-- page header -->
	<header class="only-color">
		<%@include file="header_top.jsp" %>
		<%@include file="header.jsp" %>
	</header>
	<!-- / page header -->
	
	
	
	<div class="page-content grid-row">
		<main>
		
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
		<div class="grid-col-row">
		<hr class="divider-color"><br>
					<div class="isotope">
					
										<div class="item" style="width: calc(25% - 30px);margin-left: 30px;">
					<h2><b>Search : </b></h2>
			</div>
					
					
					
					<div class="item" style="width: calc(25% - 30px);margin-left: 30px;">
						<select id="myArtForm" onchange="myFunc1()">
					<option value='0'>Select Art Form</option>
					
					<%
					for(int a=0;a<artFormList.size();a++)
					{
						String artFormName = artFormList.get(a).getArtFormName();
						String artId = String.valueOf(artFormList.get(a).getId());
						
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
					
					
					<div class="item" style="width: calc(25% - 30px);margin-left: 30px;">
				<select id="myCat" onchange="myFunc()">
					<option value='0'>Select Product Category</option>
					
					<%
					for(int a=0;a<parentCategoryList.size();a++)
					{
						String catName = parentCategoryList.get(a).getCategoryName();
						String catId = String.valueOf(parentCategoryList.get(a).getId());
						
							if(catName.equals(categoryNames))
							{
							%>
							<option selected value='<%=catId%>'><%=catName%></option>
							<%
							}
							else
							{
							%>
							<option value='<%=catId%>'><%=catName%></option>
							<%
							}
						
					}
					%>
					</select>
					</div>
					
						<div class="item" style="width: calc(25% - 30px);margin-left: 30px;">
							<select id="myChildCat" onchange="myFunc1()">
					<option value='0'>Select Product Sub Category</option>
					
					<%
					for(int a=0;a<childCategoryList.size();a++)
					{
						String childCatName = childCategoryList.get(a).getCategoryName();
						String childCatId = String.valueOf(childCategoryList.get(a).getId());
						
							if(childCatName.equals(childCategoryNames))
							{
							%>
							<option selected value='<%=childCatId%>'><%=childCatName%></option>
							<%
							}
							else
							{
							%>
							<option value='<%=childCatId%>'><%=childCatName%></option>
							<%
							}
						
					}
					%>
					</select>
						</div>
						
						
						
						
					
								
								<form class="example" onsubmit="return fun()">
  						<input type="hidden" id="searchtxt" placeholder="Search for Product" value="<%=searchingText %>"  name="search" >
  						<!-- <button type="button" onclick="myFunc1()"><i class="fa fa-search"></i></button> -->
					</form>
								
					
		</div>
		
		<hr class="divider-color"><br>
		</div>
			<%
				for(int i=0;i<artFormNameList1.size();i++)
				{
					List<Product> productList1 = artFormWiseProduct.get(artFormNameList1.get(i));
					List<Product> productList2 = null;
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
					
					
					if(categoryId.equals("0"))
					{
						productList2 = productList;
					}
					else
					{
						productList2 = new ArrayList<Product>();
						
						if(childCategoryId.equals("0"))
						{
							for(int p=0;p<productList.size();p++)
							{
								if(productList.get(p).getCategoryId() == Integer.parseInt(categoryId))
								{
									productList2.add(productList.get(p));
								}
							}
							
							
							for(int q=0;q<childCategoryList.size();q++)
							{
							
								for(int p=0;p<productList.size();p++)
								{
									if(productList.get(p).getCategoryId() == childCategoryList.get(q).getId())
									{
										productList2.add(productList.get(p));
									}
								}
							}
							
						}
						else
						{
							for(int p=0;p<productList.size();p++)
							{
								if(productList.get(p).getCategoryId() == Integer.parseInt(childCategoryId))
								{
									productList2.add(productList.get(p));
								}
							}
						}
						
					}
					
					
					if(productList2.size()>0)
					{
			%>
						
			<div class="isotope-container">
				<div class="isotope-header clear-fix">
					<h2 class="margin-none"><%=artFormNameList1.get(i) %></h2>	
				</div>
				<div class="grid-col-row">
					<div class="isotope">
					<%
						for(int j=0;j<productList2.size();j++)
						{
							Product product = productList2.get(j);
					%>
						<div class="item">
							<div class="picture" >
								<div >
									<a href="${pageContext.servletContext.contextPath}/product/<%=product.getId()%>" >
								
								<img src="${pageContext.servletContext.contextPath}/resources/UploadImage/Product/<%=product.getId()%>/<%=product.getDisplayPicture() %>" data-at2x="${pageContext.servletContext.contextPath}/resources/UploadImage/Product/<%=product.getId()%>/<%=product.getDisplayPicture() %>" alt>
							</a>
							</div>
							</div>
							<center><h5><%=product.getName() %></h5></center>
						<%-- 	<p>
								<form class="subscribe" action="${pageContext.servletContext.contextPath}/product/<%=product.getId()%>">
															
									<center><input type="submit" value="View Product Details"></center>
								</form> --%>
								
								<!--
										<input type="submit" value="View Creator">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									-->
								
								<%-- <form class="subscribe" action="${pageContext.servletContext.contextPath}/artisan/<%=product.getArtisanId()%>">
									<input type="submit" value="View Creator">	
								</form> --%>
								
							<!-- </p> -->
							
							<p align="center">
								
									<a href="${pageContext.servletContext.contextPath}/product/<%=product.getId()%>" class="cws-button bt-color-3 border-radius">View Product Details</a>&nbsp;&nbsp;
									<a href="${pageContext.servletContext.contextPath}/artisan/<%=product.getArtisanId()%>" class="cws-button bt-color-3 border-radius">View Creator</a> 
							</p>
						</div>
						
						
					<%} %>
						
					</div>
					<%if(i != (artFormNameList.size()-1) ) 
						{
					%>
					<hr class="divider-color">
					<%	} %>
					
				</div>
			</div>
			<%} }%>
		
			
		</main>
	</div>
	</main>
	</div>
	
	<%@include file="footer.jsp" %>
	
	
</body>
</html>