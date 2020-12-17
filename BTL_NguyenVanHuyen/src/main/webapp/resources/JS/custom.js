$(document).ready(function(){
		
	$("#ketqua1").hide();	
	$("#dangnhap").click(function() {
		
			
		   var  tdn = $("#tendangnhap1").val();
		   var mk = $("#matkhau1").val();
			 
			$.ajax({
				
				url:"/shopbanhang/API/dangnhap",
				type:"GET",
				data:{
					tendangnhap : tdn,               
					matkhau : mk	
				},
					success : function(value){
					
					if(value == "true")
						{
							$("#ketqua1").show().text(" Login Success!" );
							
							chuoihientai = window.location.href;
							
						 chuoicat	= chuoihientai.replace("dangnhap" , "");
							window.location.replace(chuoicat);
						}	
					else {
						
						$("#ketqua1").show().text(" Login Not Success!");
					}
					
				}	
			})
	});
	
			
		// Cả Hai cái đoạn code dưới đây là ẩn hiện trang chủ đăng nhập
			
			$("#dangnhapne").click(function(){
				
				$(this).addClass("actived");
				$("#dangkyne").removeClass("actived");
				
				$(".container-login-from").show();
				$(".container-signup-from").hide();
						
				
			});  
			 
			
			$("#dangkyne").click(function(){
				
				
				$(this).addClass("actived");
				$("#dangnhapne").removeClass("actived");
				$(".container-login-from").hide();
				$(".container-signup-from").show();
					
				
			})
			
			 
			
			
			// đây là đoạn code thêm sản phẩm vào giỏ hàn Start
			$(".btn-giohang").click(function(){
					var mamau = $(this).closest("tr").find(".mau").attr("data-mamau");
					var masize = $(this).closest("tr").find(".size").attr("data-masize");
					var tenmau = $(this).closest("tr").find(".mau").text();
					var tensize = $(this).closest("tr").find(".size").text();
					var soluong = $(this).closest("tr").find(".soluong").text();
					var tensp = $("#tensp").text();
					var masp = $("#tensp").attr("data-masp");
					var giatien = $("#giatien").attr("data-value");
					var machitiet = $(this).attr("data-machitiet");
					
					
					
					$.ajax({
						
						url:"/shopbanhang/API/themvaogiohang",
						type:"GET",
						data:{
							
							masp : masp,
							masize : masize,
							mamau : mamau,
							tensp : tensp,
							giatien : giatien,
							tensize : tensize,
							soluong : soluong,
							tenmau : tenmau,
							machitiet:machitiet
							
						},	
					}).done(function() {
						
						$.ajax({
							// hiển thị số lượng giỏ hàng lên 
							url:"/shopbanhang/API/SoluongThem",
							type:"GET",
							success:function(value){
								$("#giohang").find("div").addClass("cart");
								$("#giohang").find("div").html("<span>" + value + "</span");		
							},
					});		
			});
			
				//// đây là đoạn code thêm sản phẩm vào giỏ hàn End
			});
			
			

			 GanTongTien();
			 			 
		function GanTongTien(isEventChange) {
			var TongThanhTien = 0;
			$(".giatien_giohang").each(function () {
				var giatien = $(this).text();
				console.log(giatien);
				var soluongmoithem = $(this).closest("tr").find(".soluong-giohang").val();
				var thanhtientungsanpham = soluongmoithem * parseInt(giatien);
				var format = parseInt(thanhtientungsanpham).toFixed(3).replace(/(\d)(?=(\d{3})+\.)/g, "$1.").toString()
				TongThanhTien = TongThanhTien + thanhtientungsanpham;
				var formatTongtien =  parseInt(TongThanhTien).toFixed(3).replace(/(\d)(?=(\d{3})+\.)/g, "$1.").toString()
				
			if(!isEventChange)
			{
				$(this).html(format);
			}
				$("#tongtien").html(formatTongtien);
			})	
		}
			
			$(".soluong-giohang").change(function() {
				var soluong = $(this).val();
				var tien = $(this).closest("tr").find(".giatien_giohang").attr("data-value");
				
				var tongtien = soluong * parseInt(tien);
				
				var format = tongtien.toFixed(3).replace(/(\d)(?=(\d{3})+\.)/g, "$1.").toString()
				
				$(this).closest("tr").find(".giatien").html(format);
			
				 GanTongTien(true);  
				 
				 	var mamau = $(this).closest("tr").find(".mau").attr("data-mamau");
					var masize = $(this).closest("tr").find(".size").attr("data-masize");
					var masp = $(this).closest("tr").find(".masp").attr("data-masp");
				
				 $.ajax({
						
						url:"/shopbanhang/API/CapNhapGioHang",
						type:"GET",
						data:{
							masp : masp,
							masize : masize,
							mamau : mamau,		
							soluong : soluong
						},
					})
				
			})
			
			
			$(".xoasp").click(function() {
				
				var self = $(this);
				var mamau = $(this).closest("tr").find(".mau").attr("data-mamau");
				var masize = $(this).closest("tr").find(".size").attr("data-masize");
				var masp = $(this).closest("tr").find(".masp").attr("data-masp");
			
				
				$.ajax({
					
					url : "/shopbanhang/API/xoasanpham",
					type : "GET",
					data : {
						masp : masp,
						masize : masize,
						mamau : mamau,			
					},
						success : function(value) {
							
							self.closest("tr").remove();
							
						}
				})	
			})
			
			//đoạn code trên đây là tải dữ liệu hình ảnh lên Admin quản lý sản phâm  Start
			
			$("body").on("click",".paging-item",function(){
				$(".paging-item").removeClass("active");
				$(this).addClass("active");		 
			var laydulieu = $(this).text();
			
			var vitribatdau = (laydulieu-1)*5;
				
			$.ajax({                                             
				
				url : "/shopbanhang/API/phantrang",
				type : "GET",
				data : {
					
					vitribatdau : vitribatdau
						
				},
					success : function(value) {
					
					var  sanpham_paging = $("#paging-sanpham").find("tbody")
					sanpham_paging.empty();
					sanpham_paging.append(value);	
							
						
					}
					
			})	
			})
			
			//đoạn code trên đây là tải dữ liệu hình ảnh lên Admin quản lý sản phâm  End
			
			$("#allbutton").change(function() {
				if(this.checked){
					
					$("#paging-sanpham1  input").each(function() {
						
						$(this).attr("checked",true);  
					})
					}
				else {
					
						$("#paging-sanpham1  input").each(function() {
							
								$(this).attr("checked",false);
												
						})
					
				}
				 
			})	
			
			
			$("#delete-sanpham").click(function(){
				
				$("#paging-sanpham1 > tbody input:checked").each(function() {
					
					var masp = $(this).val();
					var This= $(this);
					
					$.ajax({
						
						url : "/shopbanhang/API/QuanLySanPhamAdmin",
						type : "GET",
						data : {
							
							masp : masp,	
						},
							success: function(value) {	
								
								This.closest("tr").remove();
								
								
							}		
					})	
					
				})
					
			})
			
			var files = [];
			
			$("#hinhanh").change(function(event){
				files = event.target.files;
			    var forms = new FormData();
				forms.append("file",files[0]);
				
				$.ajax({
					
					url : "/shopbanhang/API/Uploadfile",
					type : "POST",
					data : forms,
					processData : false,
					enctype : "multipart/form-data", 
					success: function(value) {	
							
						}		
				})	
		})
					
			
			
			
			
			
			
})