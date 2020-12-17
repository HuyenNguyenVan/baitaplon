package com.Nguyenvanhuyen.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.Nguyenvanhuyen.service.Nhanvienservice;
import com.Nguyenvanhuyen.service.SanPhamservice;

import nguyenvanhuyen.entity.GioHang;
import nguyenvanhuyen.entity.SanPham;

@Controller
@RequestMapping("/API")
@SessionAttributes({"tendangnhap","giohang"})
public class APIcontroller {
		
	@Autowired
	Nhanvienservice  nhanvienservice;
	
	@Autowired
	SanPhamservice SanPhamService;
	
		@GetMapping("dangnhap")
		@ResponseBody  
		public String KiemTraDangNhap(@RequestParam String tendangnhap , @RequestParam String matkhau,ModelMap map ,HttpSession httpSession) {
					
			boolean kt = nhanvienservice.KiemTraDangNhap(tendangnhap, matkhau);
//			String chuoihientai = (String) httpSession.getAttribute("tendangnhap");
//			String chuoicat = chuoihientai.substring(0,1); 
			map.addAttribute("tendangnhap", tendangnhap);
			return ""+kt;
		}
	    
		
	
		
       	@GetMapping("/themvaogiohang")
		@ResponseBody
		public String ChucNangThemVaoGioHang(HttpSession httpSession ,@RequestParam int masp ,@RequestParam  int masize , @RequestParam String  tensp,
				@RequestParam String giatien , @RequestParam int soluong , @RequestParam int mamau , String tensize , @RequestParam String tenmau,@RequestParam int machitiet)
		{
			if(httpSession.getAttribute("giohang") == null)
			{
				List<GioHang> listgiohang = new ArrayList<GioHang>();                                                                                                                                            
				
				GioHang gioHang = new GioHang();                                                                                                                                              
				
				gioHang.setMasp(masp);
			    gioHang.setMasize(masize);
				gioHang.setTensp(tensp);                                                                                                                    
				gioHang.setGiatien(giatien);
				gioHang.setSoluong(1);
				gioHang.setMamau(mamau);
				gioHang.setTensize(tensize);
				gioHang.setTenmau(tenmau);
				gioHang.setMachitiet(machitiet);
				listgiohang.add(gioHang);
				
				httpSession.setAttribute("giohang", listgiohang);
				                                                                                                                                               	
			}
			else {
					
				List<GioHang> dsgiohang =  (List<GioHang>) httpSession.getAttribute("giohang");
				
					int index = CheckIndex(httpSession, masp, masize, mamau);
					
					if(index == -1)
					{	
					GioHang gioHang = new GioHang();
					gioHang.setMasp(masp);
				    gioHang.setMasize(masize);
					gioHang.setTensp(tensp);
					gioHang.setGiatien(giatien);
					gioHang.setSoluong(1);
					gioHang.setMamau(mamau);
					gioHang.setTensize(tensize);
					gioHang.setTenmau(tenmau);
					gioHang.setMachitiet(machitiet);
					dsgiohang.add(gioHang);
						
						
					           }else {
						
						int soluongcapnhat = dsgiohang.get(index).getSoluong() + 1;
						
						dsgiohang.get(index).setSoluong(soluongcapnhat);
							
					}
			}	
					
			return ""; 
			 
		}
				
			private int CheckIndex (HttpSession httpSession, int masp , int masize , int mamau)
					{
						
						List<GioHang> giohangIndex = (List<GioHang>) httpSession.getAttribute("giohang");
							for(int i = 0; i < giohangIndex.size() ; i++)
							{
								if(giohangIndex.get(i).getMasp() == masp &&  giohangIndex.get(i).getMasize() == masize && giohangIndex.get(i).getMamau() == mamau )
								{
									
									return i;
								}
								
								
							}
							return -1;
							
					}
			
			
			@GetMapping("SoluongThem")
			@ResponseBody
			public String  ThemChucTiepVaoRoHang(HttpSession http, ModelMap modelMap) {
						
				List<GioHang> listgh = (List<GioHang>) http.getAttribute("giohang");
				modelMap.addAttribute("soluonggiohangtrangchu", listgh);
				  return listgh.size() + "";
					
			}
			
			@GetMapping("CapNhapGioHang")
			@ResponseBody
			public void CapNhapGioHang(HttpSession httpSession, @RequestParam int soluong, @RequestParam int masp , @RequestParam int mamau , @RequestParam  int masize)
			{
				if(  null != httpSession.getAttribute("giohang") )
					{
						int index = CheckIndex(httpSession, masp, masize, mamau);
						List<GioHang> giohang = (List<GioHang>) httpSession.getAttribute("giohang");
						
						giohang.get(index).setSoluong(soluong);
					}
		
				
			}
			
			@GetMapping("xoasanpham")
			@ResponseBody
			public void xoagiohang(HttpSession httpSession, @RequestParam int masp , @RequestParam int mamau , @RequestParam  int masize)
			{
				if(  null != httpSession.getAttribute("giohang") )
					{
						int index = CheckIndex(httpSession, masp, masize, mamau);
						List<GioHang> giohang = (List<GioHang>) httpSession.getAttribute("giohang");
						
						giohang.remove(index);
						 
					}
				
				// đây là xóa 1 sản phầm trong giỏ hàng;
			}  
			
			
			@GetMapping(path = "phantrang",produces ="text/plain;charset=utf-8")
			@ResponseBody
			public String PhanTrang(int vitribatdau){
				
					List<SanPham> listsanpham = SanPhamService.Laydanhsachsanpham(vitribatdau);
						
					String html =" ";
					for (SanPham sanPham : listsanpham) {
						 html +="<tr>";
						 
						 html += "<td><div class='checkbox'><label><input type='checkbox' value= '" + sanPham.getMasanpham() + "'></label></div></td>";	
						 html +="<td>" + sanPham.getTensanpham() + "</td>";
						 html +="<td>" + sanPham.getGiatien() + "</td>";
						 html +="<td>" + sanPham.getGianhcho() + "</td>";
						
						 html +="</tr>";
					
					}
							// đây là sử lý phân trang này
						
						return html;
					}
			
			
			@GetMapping("QuanLySanPhamAdmin")
			@ResponseBody
			public void QuanLySanPhamAdmin(@RequestParam int masp) {
				
				  SanPhamService.AdminQuanLy(masp);
			
				  // đây là đoạn code giúp admin xóa sản phẩm trong dữ liệu
			}  
			
			@Autowired 
			ServletContext server; // sẽ giúp lấy đường dẫn để lưu ảnh vào thư mục
			
			@PostMapping("Uploadfile")
			@ResponseBody
			public void Uploadfile(MultipartHttpServletRequest request) {
				String path_save_file = server.getRealPath("/resources/img/sanpham/");	 
				Iterator<String> listfiles = request.getFileNames();
				MultipartFile multipartFile = request.getFile(listfiles.next());
				File file = new File(path_save_file + multipartFile.getOriginalFilename());
				try {
						multipartFile.transferTo(file);
				} catch (IllegalStateException | IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
					 System.out.println("vào đây nè!"); 
					System.out.println(file);
				  // đoạn code upload hinh ảnh admin
			}
			
			
			  
						
}
	

