menu-academico<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@page import="java.util.List"%>
      <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
     <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
     
     
<!DOCTYPE HTML>
<html>
<head>
<title>Pooled Admin Panel Category Flat Bootstrap Responsive Web Template | Home :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Pooled Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link rel="stylesheet" href='<c:url value="/resources/bootstrap-4.4.1-dist/css/bootstrap.min.css"/>'/>
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->

<link rel="stylesheet" href='<c:url value="/resources/css/style.css"/>'/> 
<link rel="stylesheet" href='<c:url value="/resources/css/morris.css"/>'/> 

<!-- Graph CSS -->
<link rel="stylesheet" href='<c:url value="/resources/css/font-awesome.css"/>'/> 

<!-- jQuery -->

<script src='<c:url value="/resources/JS/jquery-2.1.4.min.js"/>'></script>  
<script src='<c:url value="/resources/JS/custom.js"/>'></script> 
<!-- //jQuery -->
<link href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'/>
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<!-- lined-icons -->
<link rel="stylesheet" href='<c:url value="/resources/css/icon-font.min.css"/>'/> 

<!-- //lined-icons -->
</head> 
<body>
   <div class="page-container">
   <!--/content-inner-->
<div class="left-content container">
	
	<div class="row">
				
			<div class= "col-sm-12 col-md-5"  class="form-group" >
					<h1>Sản Phẩm</h1>
					<label for="tensanpham">Tên Sản Phẩm</label> <br>
				<p>	<input  id="tensanpham" name="tensanpham"  class="form-control"  placeholder="Xin Mời Nhập Tên Sản Phẩm"/> <p>
					
					<label for="giatien">Giá Tiền</label> <br>
				<p>	<input  id="giatien" name = "giatien"  class="form-control"  placeholder="Xin Mời Nhập Vào Giá Tiền"/> </p>
					
					
					<label>Dành Cho</label> <br>
					<label class="checkbox-inline"><input name="danhcho"  type="checkbox" value="nam" name="nam">Nam</label> 
					<label class="checkbox-inline"><input name="danhcho"  type="checkbox" value="nam" name ="nam">Nữ</label> <br>
					
					
					
					<div class="form-group">
						  <label for="sel1">Danh Mục</label>
						  <select class="form-control" id="sel1">
						    	
						    		<c:forEach var="listdanhmuc" items="${danhmuc_post_admin}">
						    			<option>${listdanhmuc.getTendanhmuc()}</option>
						    			
						    		
						    		
						    		</c:forEach>
						    
						    
						    
						    
						  </select>
					</div>
					
					
					<div class="form-group">
							  <label for="comment">Mô Tả</label>
							  <textarea class="form-control" rows="5" id="mota" name ="mota" ></textarea>
					</div>
					
				<p>	<label>
							<label for="giatien">Hình Ảnh</label>
							<input  id="hinhanh" name="hinhanh"  class="form-control"  type="file" placeholder="Hình Ảnh"/>
	
					</label> </p> <br/>
					
					<button type="button" class="btn btn-primary add-sanpham" style="margin-top: 10px">Thêm Sản Phẩm</button>
			</div>	
			
		<div class= "col-sm-12 col-md-7">
					<table id="paging-sanpham1" class="table">
							<thead> 
								<tr> 
										<th>
												<div class="checkbox">
																	
												  	<label><input id="allbutton" type="checkbox" ></label>
																	  	
												</div>			
										</th>
										<th>Tên Sản Phẩm</th>
										<th>Giá Tiền</th>
										<th>Dành Cho</th>
								</tr>
							</thead>
													
							<tbody>
									<c:forEach var="value" items="${listSanPhamQuanLy}" >
												<tr> 
														<td>
																<div class="checkbox">
																  	<label><input type="checkbox" value="${value.getMasanpham()}"></label>
																</div>
														</td>
														<td>${ value.getTensanpham()} </td>
														<td>${ value.getGiatien()} </td>
														<td>${ value.getGianhcho()} </td>
												</tr>											
									</c:forEach>
							</tbody>	
					</table>
				
				
				<button type="button" class="btn btn-danger" id="delete-sanpham">Xóa Sản Phẩm</button>
			
						
			<Center>
						<nav aria-label="Page navigation example">
								  <ul class="pagination">
								  <li class="page-item"><a class="page-link" href="#">Previous</a></li>
								  
								  <c:forEach var="i"  begin="1" end = "${allsanpham}" >
								  	
								  	<c:choose>
								  			 <c:when test="${i == 1}">
								  			
								  				<li class="page-item active paging-item"><a  href="#">${i} </a></li>
								  			
								  			</c:when>
								  			<c:otherwise>
								  					
								  						<li class="paging-item page-item "><a href="#">${i} </a></li>
								  				
								  			</c:otherwise> 
								  	</c:choose>
								  </c:forEach>
								    <li class="page-item"><a class="page-link" href="#">Next</a></li>
								  </ul>
						</nav>
		
			</Center>
				
			
			
	</div>
				
				
				
	</div>
	
		
</div>



  <!--//content-inner-->
			<!--/sidebar-menu-->
				<div class="sidebar-menu">
					<header class="logo1">
						<a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span> </a> 
					</header>
						<div style="border-top:1px ridge rgba(255, 255, 255, 0.15)"></div>
                           <div class="menu">
									<ul id="menu" >
										<li><a href="index.html"><i class="fa fa-tachometer"></i> <span>Dashboard</span><div class="clearfix"></div></a></li>
										
										
										 <li id="menu-academico" ><a href="inbox.html"><i class="fa fa-envelope nav_icon"></i><span>Sản Phẩm</span><div class="clearfix"></div></a></li>
									<li><a href="gallery.html"><i class="fa fa-picture-o" aria-hidden="true"></i><span>Gallery</span><div class="clearfix"></div></a></li>
									<li id="menu-academico" ><a href="charts.html"><i class="fa fa-bar-chart"></i><span>Charts</span><div class="clearfix"></div></a></li>
									 <li id="menu-academico" ><a href="#"><i class="fa fa-list-ul" aria-hidden="true"></i><span> Short Codes</span> <span class="fa fa-angle-right" style="float: right"></span><div class="clearfix"></div></a>
										   <ul id="menu-academico-sub" >
										   <li id="menu-academico-avaliacoes" ><a href="icons.html">Icons</a></li>
											<li id="menu-academico-avaliacoes" ><a href="typography.html">Typography</a></li>
											<li id="menu-academico-avaliacoes" ><a href="faq.html">Faq</a></li>
										  </ul>
										</li>
									<li id="menu-academico" ><a href="errorpage.html"><i class="fa fa-exclamation-triangle" aria-hidden="true"></i><span>Error Page</span><div class="clearfix"></div></a></li>
									  <li id="menu-academico" ><a href="#"><i class="fa fa-cogs" aria-hidden="true"></i><span> UI Components</span> <span class="fa fa-angle-right" style="float: right"></span><div class="clearfix"></div></a>
										   <ul id="menu-academico-sub" >
										   <li id="menu-academico-avaliacoes" ><a href="button.html">Buttons</a></li>
											<li id="menu-academico-avaliacoes" ><a href="grid.html">Grids</a></li>
										  </ul>
										</li>
									 <li><a href="tabels.html"><i class="fa fa-table"></i>  <span>Tables</span><div class="clearfix"></div></a></li>
									<li><a href="maps.html"><i class="fa fa-map-marker" aria-hidden="true"></i>  <span>Maps</span><div class="clearfix"></div></a></li>
							        <li id="menu-academico" ><a href="#"><i class="fa fa-file-text-o"></i>  <span>Pages</span> <span class="fa fa-angle-right" style="float: right"></span><div class="clearfix"></div></a>
										 <ul id="menu-academico-sub" >
											<li id="menu-academico-boletim" ><a href="calendar.html">Calendar</a></li>
											<li id="menu-academico-avaliacoes" ><a href="signin.html">Sign In</a></li>
											<li id="menu-academico-avaliacoes" ><a href="signup.html">Sign Up</a></li>
											

										  </ul>
									 </li>
									<li><a href="#"><i class="fa fa-check-square-o nav_icon"></i><span>Forms</span> <span class="fa fa-angle-right" style="float: right"></span><div class="clearfix"></div></a>
									  <ul>
										<li><a href="input.html"> Input</a></li>
										<li><a href="validation.html">Validation</a></li>
									</ul>
									</li>
								  </ul>
								</div>
							  </div>
							  <div class="clearfix"></div>		
							</div>
							<script>
							var toggle = true;
										
							$(".sidebar-icon").click(function() {                
							  if (toggle)
							  {
								$(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
								$("#menu span").css({"position":"absolute"});
							  }
							  else
							  {
								$(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
								setTimeout(function() {
								  $("#menu span").css({"position":"relative"});
								}, 400);
							  }
											
											toggle = !toggle;
										});
							</script>
<!--js -->
<script src='<c:url value="/resources/JS/jquery.nicescroll.js"/>'></script>

<script src='<c:url value="/resources/JS/scripts.js"/>'></script>    


<!-- Bootstrap Core JavaScript -->
<script src='<c:url value="/resources/JS/bootstrap.min.js"/>'></script>   

   <!-- /Bootstrap Core JavaScript -->	   
<!-- morris JavaScript -->
<script src='<c:url value="/resources/JS/raphael-min.js"/>'></script> 
<script src='<c:url value="/resources/JS/morris.js"/>'></script> 

<script>
	$(document).ready(function() {
		//BOX BUTTON SHOW AND CLOSE
	   jQuery('.small-graph-box').hover(function() {
		  jQuery(this).find('.box-button').fadeIn('fast');
	   }, function() {
		  jQuery(this).find('.box-button').fadeOut('fast');
	   });
	   jQuery('.small-graph-box .box-close').click(function() {
		  jQuery(this).closest('.small-graph-box').fadeOut(200);
		  return false;
	   });
	   
	    //CHARTS
	    function gd(year, day, month) {
			return new Date(year, month - 1, day).getTime();
		}
		
		graphArea2 = Morris.Area({
			element: 'hero-area',
			padding: 10,
        behaveLikeLine: true,
        gridEnabled: false,
        gridLineColor: '#dddddd',
        axes: true,
        resize: true,
        smooth:true,
        pointSize: 0,
        lineWidth: 0,
        fillOpacity:0.85,
			data: [
				{period: '2014 Q1', iphone: 2668, ipad: null, itouch: 2649},
				{period: '2014 Q2', iphone: 15780, ipad: 13799, itouch: 12051},
				{period: '2014 Q3', iphone: 12920, ipad: 10975, itouch: 9910},
				{period: '2014 Q4', iphone: 8770, ipad: 6600, itouch: 6695},
				{period: '2015 Q1', iphone: 10820, ipad: 10924, itouch: 12300},
				{period: '2015 Q2', iphone: 9680, ipad: 9010, itouch: 7891},
				{period: '2015 Q3', iphone: 4830, ipad: 3805, itouch: 1598},
				{period: '2015 Q4', iphone: 15083, ipad: 8977, itouch: 5185},
				{period: '2016 Q1', iphone: 10697, ipad: 4470, itouch: 2038},
				{period: '2016 Q2', iphone: 8442, ipad: 5723, itouch: 1801}
			],
			lineColors:['#ff4a43','#a2d200','#22beef'],
			xkey: 'period',
            redraw: true,
            ykeys: ['iphone', 'ipad', 'itouch'],
            labels: ['All Visitors', 'Returning Visitors', 'Unique Visitors'],
			pointSize: 2,
			hideHover: 'auto',
			resize: true
		});
		
	   
	});
	</script>
</body>
</html>