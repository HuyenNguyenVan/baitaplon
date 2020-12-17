package com.Nguyenvanhuyen.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Nguyenvanhuyen.service.ChiTietHoaDon_Service;
import com.Nguyenvanhuyen.service.HoaDonservice;

import nguyenvanhuyen.entity.ChiTietHoaDon;
import nguyenvanhuyen.entity.ChiTietHoaDonId;
import nguyenvanhuyen.entity.GioHang;
import nguyenvanhuyen.entity.HoaDon;

@Controller
@RequestMapping("giohang")
public class GiohangController {
		
	@Autowired
	HoaDonservice hoaDonservice;
	
	@Autowired 
	ChiTietHoaDon_Service chitietHoaDon_Service;
	
	
	@GetMapping
	public String LaySoLuong(ModelMap modelMap , HttpSession httpSession)
			{
				if( null != httpSession.getAttribute("giohang"))
				{
						List<GioHang> listgiohang =  (List<GioHang>) httpSession.getAttribute("giohang");
						modelMap.addAttribute("dsgiohang", listgiohang.size());
						modelMap.addAttribute("giohangs", listgiohang);
						
				}
				
				return"giohang";
			}
	
	
	
	@PostMapping
	public String Save_Information_Order (HttpSession httpSession,@RequestParam String tenkhachhang , @RequestParam String sodt, @RequestParam String diachigiaohang   , @RequestParam String hinhthucgiaohang , @RequestParam String ghichu)
		{
			// class này là dùng để khách hàng đặt hàng từ trong giỏ hàng	
		
				if( null != httpSession.getAttribute("giohang"))
				{
						List<GioHang> listgiohang =  (List<GioHang>) httpSession.getAttribute("giohang");
						
 						HoaDon hoaDon = new HoaDon();
						hoaDon.setTenkhachhang(tenkhachhang);
						hoaDon.setHinhthucgiaohang(hinhthucgiaohang);
						hoaDon.setSodt(sodt);
						hoaDon.setGhichu(ghichu);
						hoaDon.setDiachigiaohang(diachigiaohang);
						
						int id = hoaDonservice.save_info_order(hoaDon);
						if(id > 0 )
						{
							for(GioHang gioHang : listgiohang)
							{
								
								ChiTietHoaDonId chiTietHoaDonId = new ChiTietHoaDonId();
								chiTietHoaDonId.setMachitietsanpham(gioHang.getMachitiet());
								chiTietHoaDonId.setMahoadon(hoaDon.getMahoadon());
								
								ChiTietHoaDon chitiethoadon = new ChiTietHoaDon();
								chitiethoadon.setChiTietHoaDonId(chiTietHoaDonId);
								
								chitiethoadon.setGiatien(gioHang.getGiatien().toString());
								chitiethoadon.setSoluong(gioHang.getSoluong()); 
								
								chitietHoaDon_Service.save_ChiTietHoaDon(chitiethoadon);		
							}
			
						}			
				}
			return "giohang";
		}
  


	
}
