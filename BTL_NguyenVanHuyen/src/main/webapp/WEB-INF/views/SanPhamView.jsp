<%@page import="java.util.List"%>
      <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
     <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="header.jsp"></jsp:include>
<meta charset="UTF-8">
<meta http-equiv="Conten-Type" content="text/html"; charset="UTF-8" >
<link rel="stylesheet" href="resources/Styles/styles.css">
<title>Insert title here</title>
</head>
<body >
		
		<div id="header-chitiet"  class="container-fluid">
				<nav class="navbar navbar-default none_nav">
					  <div class="container-fluid">
					    <!-- Brand and toggle get grouped for better mobile display -->
					    <div class="navbar-header">
					      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
					        <span class="sr-only">Toggle navigation</span>
					        <span class="icon-bar"></span>
					        <span class="icon-bar"></span>
					        <span class="icon-bar"></span>
					      </button>
					      <a class="navbar-brand" href='<c:url value="/"/>'><img src='<c:url value="/resources/img/icon_yame_shop.png"/>'/></a>
					    </div>
					
					    <!-- Collect the nav links, forms, and other content for toggling -->
					    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					      <ul class="nav navbar-nav navbar-center">	
					       
					        <li  class="active"><a href="/trangchu">HOME PAGE</a></li>
					         <li class="dropdown">
					          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Product <span class="caret"></span></a>
					          <ul class="dropdown-menu">
					           			
					            		<c:forEach var="dmsp" items="${lisdmsp}">	
												<ul class="mymenu">
															
													<li><a href='<c:url value="/sanpham/${dmsp.getMadanhmuc()}"/>'>${dmsp.getTendanhmuc() }</a>  </li>
													
												</ul>
										</c:forEach>
					         
					          </ul>
					        </li>
					         <li><a href="#"> SERVICE</a></li>
					          <li><a href="#">CONTACT</a></li> 
					          
					       
					      </ul>
					     
					      <ul class="nav navbar-nav navbar-right">
					        <li><a href="dangnhap">LOGIN</a></li>
					          <li><a href="#">Registration</a></li>
					          
					          
					          
					          
					          
					          <li id="giohang">  <a href="#"><img id="icon_rohang" src='<c:url value="/resources/img/icon_rohang.png"/>'/>
					          
					          
					          
					          
					          
					         <c:if test="${dsgiohang > 0 }">
					         
					        		<div class="cart"><span >${dsgiohang}</span>   </div> 
					         
					         </c:if> 
					         
					         
					           <c:if test="${dsgiohang  <= 0 || dsgiohang == null  }">
					         
					        	 <div> <span >${dsgiohang}</span> </div>	
					         
					         </c:if>  
					          
					          </a>   
					             </li> 
					      </ul>
					    </div><!-- /.navbar-collapse -->
					  </div><!-- /.container-fluid -->
					</nav>				
		</div>
							
							<!-- END SAN PHẨM NÈ! <3  -->
							
								<!-- STAR CHI TIET  -->
								<div class="container">
								
										<div class="row">
													<div class=" col-sm-2  col-md-2">
															<h3> Portfolio</h3>
														<c:forEach var="dmsp" items="${lisdmsp}">	
																<ul class="mymenu">
															
																	<li><a href="">${dmsp.getTendanhmuc()}   </a>  </li>
																</ul>
																</c:forEach>
														
													</div>
												
													<div class=" col-sm-10 col-md-10">
															<div class="row" style="margin-top: 15px">
																		
																		<c:forEach var="listsanpham" items="${list}" >
																	
																					<div class="col-md-3 col-sm-6">
																							<a href="chitiet/${listsanpham.getMasanpham()}">	
																									<div class="sanpham wow zoomIn">
																											<img alt="hinh"  src='<c:url value="/resources/img/sanpham/${listsanpham.getHinhsanpham()}"/>'/><br>
																											<span> ${listsanpham. getTensanpham()}</span> <br>
																											<span class="giatien"> ${listsanpham.getGiatien()} USD</span>
																									
																									
																									</div>
																							
																							</a>
																					</div>
												
																		</c:forEach>												
															</div>
													</div>
									
								</div>
										
								<!-- STAR CHI TIET  -->
						
							<div  id="footer" class="contaner-fluid">
								<div class="row">
								
								
										<div class=" col-sm-4  col-md-4 wow tada">
											<p>	<span class="title-footer">Information SHOP</span> </p> <br/>
											<span class="sub-infor">Yame is a prestigious fashion brand that always guarantees the best product quality for customers</span>
											
										</div>
										
										
										<div class=" col-sm-4  col-md-4 wow tada"> 
										<p>	<span class="title-footer">CONTACT</span> <p>
										<span class="sub-infor">Xuan Giang Soc Son Thanh Pho Ha Noi </span> <br/>
										<span class="sub-infor">nguyevanhuyen512000@gmail.com</span> <br/>
										<span>0977306395</span>
										</div>
										
										
										<div class=" col-sm-4 col-md-4 wow tada">
											<p>	<span class="title-footer">Feedback</span> </p>
											<form action="" method="post">
													<input name="tennv"  class="material-textinput" style="margin-bottom: 8px" type="text" placeholder="Email">
													<textarea name="tuoi" rows="4" cols="50" placeholder="Container"></textarea>
													<button class="material-primary-button">Submit</button>
												
											
											</form>
											
										</div>
									
								
								</div>
									
									
							</div>
		
		
		
	

	
	
	
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>