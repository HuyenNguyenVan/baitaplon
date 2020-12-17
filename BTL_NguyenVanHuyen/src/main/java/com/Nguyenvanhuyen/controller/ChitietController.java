package com.Nguyenvanhuyen.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.Nguyenvanhuyen.service.Danhmucservice;
import com.Nguyenvanhuyen.service.SanPhamservice;

import nguyenvanhuyen.entity.DanhMucSanPham;
import nguyenvanhuyen.entity.GioHang;
import nguyenvanhuyen.entity.SanPham;



@Controller
@RequestMapping("chitiet/")
@SessionAttributes("giohang")
public class ChitietController {
	
	@Autowired
	SanPhamservice sanphamservice;
	   
	 
	@Autowired
	Danhmucservice danhmucsanphamservice;
	
	@GetMapping("{masanpham}")
	public String defaul(@PathVariable int masanpham , ModelMap modelMap , HttpSession http)
			{
				
				
				if(http.getAttribute("giohang") != null)
				{
					
					List<GioHang> listgh =   (List<GioHang>) http.getAttribute("giohang");
					
					modelMap.addAttribute("dsgiohang", listgh.size());
				}
						
				
				SanPham sanpham =  sanphamservice.Laydanhsachchitietsanpham(masanpham);
				
				modelMap.addAttribute("dssanpham", sanpham);
				
			
				
				List<DanhMucSanPham> listdanhmucsanpham = danhmucsanphamservice.LayDanhMucSanPhamCT();
				
				modelMap.addAttribute("lisdmsp", listdanhmucsanpham);
							
				
				return"chitiet";
			}
		
}
