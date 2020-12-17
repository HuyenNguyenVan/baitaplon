<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<jsp:include page="header.jsp"></jsp:include>
<meta http-equiv="Conten-Type" content="text/html" ; charset="UTF-8">


<link rel="stylesheet" href="resources/Styles/styles.css">
<title>Insert title here</title>
</head>
<body>

	<div id="header" class="container-fluid">
		<nav class="navbar navbar-default none_nav">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#"><img
						src='<c:url value="/resources/img/icon_yame_shop.png"/>' /></a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-center">

						<li class="active"><a href="#">HOME PAGE</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">Product <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<c:forEach var="dmsp" items="${lisdmsp}">
									<ul class="mymenu">

										<li><a
											href='<c:url value="/sanpham/${dmsp.getMadanhmuc()}"/>'>${dmsp.getTendanhmuc()}</a>
										</li>

									</ul>
								</c:forEach>
							</ul></li>
						<li><a href="#"> SERVICE</a></li>
						<li><a href="#">CONTACT</a></li>


					</ul>

					<ul class="nav navbar-nav navbar-right">
					<li> <c:choose>
								<c:when test="${tendangnhapkytudau != null}">
								
									<span id="hienthitendangnhap"> ${tendangnhapkytudau} </span>
										
								</c:when>
								<c:otherwise>
									<li><a href="dangnhap">LOGIN</a></li> 
								</c:otherwise>
					</c:choose> </li>
					 
						<li> <a href="dangky">  </a> Đăng Ký</li>
						<li><a href="giohang"><img id="icon_rohang"
								src='<c:url value="/resources/img/icon_rohang.png"/>' /> <c:if
									test="${soluong_giohang_trangchu > 0 }">

									<div class="cart">
										<span>${soluong_giohang_trangchu}</span>
									</div>

								</c:if> <c:if
									test="${soluong_giohang_trangchu  <= 0 || soluong_giohang_trangchu == null  }">

									<div>
										<span>${soluong_giohang_trangchu}</span>
									</div>

								</c:if> </a></li>

					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
		<div class="event_header container wow pulse">
			<span style="font-size: 20px"> Day 17/10 - 23/10/2029</span> <br>
			<span style="font-size: 50px"> Buy 1 get 1 free </span> <br>
			<button>WATCH NOW</button>

		</div>


	</div>


	<div id="infor" class="container ">
		<div class="row">
			c<div class="col-12  col-sm-4 col-md-4 wow fadeInLeft"
				data-wow-duration="1s">
				<img class="icon"
					src='<c:url value="/resources/img/icon_chatluong.png"/>' /> <br />
				<span style="font-size: 32px; font-weight: 500;">Quality</span> <br />
				<span>We will be committed to bringing you the best product</span>
			</div>


			<div class="col-12 col-sm-4 col-md-4  wow fadeInDown"
				data-wow-duration="1s" data-wow-delay="1">
				<img class="icon"
					src='<c:url value="/resources/img/icon_conheo.png"/>' /> <br /> <span
					style="font-size: 32px; font-weight: 500;">Cost savings</span> <br />
				<span>Pledge the best price in Vietnam, pledge to help you
					save more than 20% for each product</span>
			</div>


			<div class="col-12  col-sm-4  col-md-4 wow fadeInUp"
				data-wow-duration="300" data-wow-delay="2">
				<img class="icon"
					src='<c:url value="/resources/img/icon_giaohang.png"/>' /> <br />
				<span style="font-size: 32px; font-weight: 500;">Delivery</span> <br />
				<span>Commitment to delivery to customers.To give customers
					the fastest</span>
			</div>
		</div>


	</div>
	<div id="title-sanpham" class="container" >
		<span>Hot products</span>

		<div class="row" style="margin-top: 42px">


			<c:forEach var="listsanpham" items="${list}" >

				<div class="col-md-3 col-sm-6" id="suly-hover">
					<a href="chitiet/${listsanpham.getMasanpham()}">
						<div class="sanpham wow zoomIn">
							<img alt="hinh"
								src='<c:url value="/resources/img/sanpham/${listsanpham.getHinhsanpham()}"/>' /><br>
							<span> ${listsanpham.getTensanpham()}</span> <br> 
							<span class="giatien"> ${listsanpham.getGiatien()} USD</span>


						</div>

					</a>
				</div>

			</c:forEach>

		</div>
	</div>

	<!-- END SAN PHẨM NÈ! <3  -->


	<div id="footer" class="contaner-fluid">
		<div class="row">


			<div class=" col-sm-4  col-md-4 wow tada">
				<p>
					<span class="title-footer">Information SHOP</span>
				</p>
				<br /> <span class="sub-infor">Yame is a prestigious fashion
					brand that always guarantees the best product quality for customers</span>

			</div>

			<div class=" col-sm-4  col-md-4 wow tada">
				<p>
					<span class="title-footer">CONTACT</span>
				<p>
					<span class="sub-infor">Xuan Giang Soc Son Thanh Pho Ha Noi
					</span> <br /> <span class="sub-infor">nguyevanhuyen512000@gmail.com</span>
					<br /> <span>0977306395</span>
			</div>

			<div class=" col-sm-4 col-md-4 wow tada">
				<p>
					<span class="title-footer">Feedback</span>
				</p>
				<form action="" method="post">
					<input name="tennv" class="material-textinput"
						style="margin-bottom: 8px" type="text" placeholder="Email">
					<textarea name="tuoi" rows="4" cols="50" placeholder="Container"></textarea>
					<button class="material-primary-button">Submit</button>
				</form>
			</div>
		</div>

	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>