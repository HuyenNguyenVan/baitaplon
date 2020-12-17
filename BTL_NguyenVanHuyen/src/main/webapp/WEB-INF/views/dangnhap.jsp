 <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head> 
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="header.jsp"></jsp:include>
</head>
<body id="body-login" class="container" >
	
	<div id="body-flex-login">
			<div id="container-login"  >
					<div id="container-login-left" class="col-12  col-sm-4 col-md-4" >
							<div id="header-top-left" class="header-login">
								<span id="text-logo">WELCOME</span> <br>
								<span id="hint-text-login">Create your style with Minishop!</span>
							</div>
							
			
							<div id="header-bottom-left">
								<p><img alt="icon_oval" src='<c:url value="/resources/img/icon_oval.png" />'/> 	<span>Always updated with the latest fashion trends</span> </p>
								<p><img alt="icon_oval" src='<c:url value="/resources/img/icon_oval.png" />'/>	<span>50% off all items for VIP guests </span> </p>
								<p><img alt="icon_oval" src='<c:url value="/resources/img/icon_oval.png" />'/>	<span>Dedicated advice to create up your style</span> </p>
								
							</div>						
						
						
					</div>
					
					
					<div id="container-login-right" class="col-12  col-sm-4 col-md-4" >
					
								<div id="header-top-right" class="header-login">
								
										<span class="actived" id="dangnhapne" >LOGIN</span> /  <span  id="dangkyne">Registration</span>
							
								</div>
								
								<div id="container-center-login-right">
								
								
										<div class="container-login-from" id=" container-center-login-right">
												
										<input id="tendangnhap1" name="tendangnhap"  class="material-textinput input-ion-email" type="text" placeholder="Email"> <br> <p> </p>
										<input  id ="matkhau1" name="matkhau" class="material-textinput input-ion-password" type="password" placeholder="Password"> <br> <p> </p>
										
					 						<br/>   <div class="alert alert-success" id="ketqua1">
													    
													  </div>
										
										<input id ="dangnhap" class="material-primary-button" type="submit" value="LOGIN">
		
										</div>
										
										
										
										<div  class="container-signup-from" id=" container-center-login-right">
											<form action="" method="post">
														<input id="tendangnhap1" name="tendangnhap"  class="material-textinput input-ion-email" type="text" placeholder="Email"> <br> <p> </p>
														<input  id ="matkhau1" name="matkhau" class="material-textinput input-ion-password" type="password" placeholder="Password"> <br><p> </p>
														<input  id ="nhaplaimatkhau1" name="nhaplaimk" class="material-textinput input-ion-password" type="password" placeholder=" Again Password"> <br>
									 					
														
														<input id ="dangnhap" class="material-primary-button" type="submit" value="Registration">
										
											</form>	
										
										</div>
									
								</div>
							
							
								<div id="container-social-login" class="col-12  col-sm-4 col-md-4">
								
											<img alt="icon_oval" src='<c:url value="/resources/img/icon_facebook.png" />'/> 
											<img alt="icon_oval" src='<c:url value="/resources/img/icon_google.png" />'/> 
									
								</div>	
								
								<span>${tendangnhap}</span>
								
					</div>
					
					
	
	
			</div>
		
	
		
	</div>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>