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
					       
					        <li  class="active"><a href='<c:url value="/"/>'>HOME PAGE</a></li>
					         <li class="dropdown">
					          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
					          <ul class="dropdown-menu">
					            <li><a href="#">Action</a></li>
					            <li><a href="#">Another action</a></li>
					            <li><a href="#">Something else here</a></li>
					            <li role="separator" class="divider"></li>
					            <li><a href="#">Separated link</a></li>
					            <li role="separator" class="divider"></li>
					            <li><a href="#">One more separated link</a></li>
					          </ul>
					        </li>
					         <li><a href="#"> SERVICE</a></li>
					          <li><a href="#">CONTACT</a></li> 
					          
					       
					      </ul>
					     
					      <ul class="nav navbar-nav navbar-right">
					        <li><a href="dangnhap">LOGIN</a></li>
					          <li><a href="#">Registration</a></li>
					          
					          
					          
					         
					          
					          <li id="giohang">  <a href='<c:url value="/giohang"/>'><img id="icon_rohang" src='<c:url value="/resources/img/icon_rohang.png"/>'/>
					          
					          
					          
					          
					          
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
												
													<div class=" col-sm-8 col-md-8">
															<div class="row" style="margin-top: 15px">
																	<div class=" col-sm-4  col-md-4" >
															
																			<img  src='<c:url value="/resources/img/sanpham/${dssanpham.getHinhsanpham()}"/>'/>
																	</div >
																	
																	<div  class=" col-sm-8 col-md-8">
																			<h3 id="tensp" data-masp="${dssanpham.getMasanpham()}" >${dssanpham.getTensanpham()}</h3> 
																			<h4  id="giatien"  data-value ="${dssanpham.getGiatien()}" style="color: red">${dssanpham.getGiatien()} USD</h4>
																				<table class="table">
																					<tbody>
																							
																							<thead class="thead-dark ">
																											<h4><td>Color</td></h4>	
																											<h4><td> Size</td></h4>	
																											<h4><td>Amount </td></h4>		
																							 </thead>
												
																							<c:forEach var="chitietsanpham" items="${dssanpham.getChitietsanpham()}">
																										<tr class="table-primary">
																										
																												<td class="mau" data-mamau = "${chitietsanpham.getMausanpham().getMamau()}"> ${chitietsanpham.getMausanpham().getTenmau()} </td>
																												<td class="size" data-masize = "${chitietsanpham.getSizesanpham().getMasize()}"> ${chitietsanpham.getSizesanpham().getSize() } </td>
																												<td class="soluong" data-soluong = "${chitietsanpham.getSoluong()}"> ${chitietsanpham.getSoluong()} </td>
																												<td><button data-machitiet = "${chitietsanpham.getMachitietsanpham()}" class="btn btn-primary btn-giohang">Giỏ Hàng</button> </td>	
																												
																									
																										</tr>
																							
																							</c:forEach>	
																					</tbody>	
																						
																				</table>
																	</div> 
																
															
															</div>														
													</div>
													<div class=" col-sm-2  col-md-2">
														<span>${dssanpham.getMota()}</span>														
													
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