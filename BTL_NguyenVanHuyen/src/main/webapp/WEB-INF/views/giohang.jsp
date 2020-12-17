<%@page import="java.util.List"%>
      <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>
     <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="header.jsp"></jsp:include>
<meta charset="ISO-8859-1">
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
					          
					          
					          
					          
					          
					          <li id="giohang">  <a href="#"><img id="icon_rohang" src='<c:url value="/resources/img/icon_rohang.png"/>'/>
					         
					          
					          
					          
					          
					         <c:if test="${dsgiohang > 0 }">
					         
					        		<div class="cart"="cart"><span >${dsgiohang}</span>   </div> 
					         
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
									
										<div class="col-md-6 col-sm-12">
													 <table class="table">
													
																<thead>
																							<tr>
																											<td> <h4>Name San Pham</h4></td>
																											<td> <h5>Color</h5></td>	
																											<td> <h5>Size</h5> </td>	
																											<td> <h5>Amount</h5> </td>
																											<td> <h5>Price</h5> </td>
																													
																								</tr>
																							
																							
																	</thead>
															
															<tbody>
																		
																		<c:choose>
																					
																				<c:when test="${giohangs != null || giohangs > 0  }">
																				
																									<c:forEach var="value" items="${giohangs}">
																				
																				
																									<tr data-machitiet="${value.getMachitiet()}">
																												<td class="masp" data-masp ="${value.getMasp()}"> ${value.getTensp()}</td>
																												<td class="mau" data-mamau = "${value.getMamau()}"> ${value.getTenmau()} </td>
																												<td class="size" data-masize = "${value.getMasize()}"> ${value.getTensize() } </td>
																												<td class="soluong"  data-soluong = "${value.getSoluong()}"><input  class = "soluong-giohang" min = 1 type="number" value="${value.getSoluong()}">  </td>
																												<td class="giatien_giohang" data-value = "${value.getGiatien()}"> ${value.getGiatien()} </td>
																												
																												<td ><button class="btn btn-primary xoasp">Xoa</button></td>
																												
																									</tr>		
																					
																										</c:forEach>
																				</c:when>
																				
																					<%-- <c:when test="${giohangs != null || giohangs = 0}">
																							<h1>Bạn Chưa Đặt Sản Phẩm Nào</h1>
																						
																				</c:when> --%>
																			
																			 <c:otherwise>  
																		     		<h1>Bạn Chưa Đặt Sản Phẩm Nào</h1>
																		    </c:otherwise> 
																		
																		
																		
																		</c:choose>
																		
																		
																		
																<%-- 	<c:forEach var="value" items="${giohangs}">
																				
																				
																									<tr data-machitiet="${value.getMachitiet()}">
																												<td class="masp" data-masp ="${value.getMasp()}"> ${value.getTensp()}</td>
																												<td class="mau" data-mamau = "${value.getMamau()}"> ${value.getTenmau()} </td>
																												<td class="size" data-masize = "${value.getMasize()}"> ${value.getTensize() } </td>
																												<td class="soluong"  data-soluong = "${value.getSoluong()}"><input  class = "soluong-giohang" min = 1 type="number" value="${value.getSoluong()}">  </td>
																												<td class="giatien_giohang" data-value = "${value.getGiatien()}"> ${value.getGiatien()} </td>
																												
																												<td ><button class="btn btn-primary xoasp">Xoa</button></td>
																												
																									</tr>		
																					
																					
																						
																	</c:forEach> --%>
																	
															
															</tbody>
															
									
												</table>
												
												<h3><span id="tongtien"> Tong Tien</span>   </h3>	
												
									
										</div>
										<div class="col-md-6 col-sm-12"> 
														<h1>Thong Tin Nguoi Mua/Nhan</h1>
											<form action="" method="post">
											
											<div class="form-group">
															<label for="usr">Name Receiver's information</label>
															<input type="text" class="form-control" id="usr" name = "tenkhachhang">
											</div>
											
											<div class="form-group">
															<label for="phone">Contact Phone </label>
																	 
															<input type="text" class="form-control" id="phone" name="sodt">
											</div>
											
											<div class="radio">
											
											  <label><input type="radio" name="hinhthucgiaohang" checked>Giao Hang Tan Noi</label>
											  
											</div>
												
											<div class="radio">
											
											  <label><input type="radio" name="hinhthucgiaohang">Lay Hang Truc Tiep</label>
											  
											</div>
											
											
											<div class="form-group">
													<label for="diachi">Dia Chi Nhan Hang</label>
													<input type="text" class="form-control" id="diachi" name="diachigiaohang">
											</div>
											
											
											
											
											
											<div class="form-group">
													  <label for="ghichu">Ghi Chu:</label>
													  <textarea class="form-control" rows="5" id="ghichu" name="ghichu"></textarea>
											</div>									
															
															<br>
															
															
															<input type="submit"  class="btn btn-primary" value="Dat Hang">																																	
											
											</form>
											
												
												
												
													
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