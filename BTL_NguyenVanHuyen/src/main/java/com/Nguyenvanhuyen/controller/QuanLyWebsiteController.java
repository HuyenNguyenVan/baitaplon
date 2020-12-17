package com.Nguyenvanhuyen.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Nguyenvanhuyen.service.Danhmucservice;
import com.Nguyenvanhuyen.service.SanPhamservice;

import nguyenvanhuyen.entity.DanhMucSanPham;
import nguyenvanhuyen.entity.SanPham;

@Controller
@RequestMapping("quanly")
public class QuanLyWebsiteController {
		
	@Autowired
	SanPhamservice sanphamservice;
	
	@Autowired
	Danhmucservice danhmucsanphamservice;
	
	
	@GetMapping
	public String Defaul( ModelMap map)
		{
		
			List<SanPham> listSanPham = sanphamservice.Laydanhsachsanpham(0);
			
			List<SanPham> AllSanPham = sanphamservice.Laydanhsachsanpham(-1);
			
			map.addAttribute("listSanPhamQuanLy", listSanPham);
			
			double tongpage =  Math.ceil((double)AllSanPham.size()/5);
			
			map.addAttribute("allsanpham",tongpage );
			
			
			List<DanhMucSanPham> listdanhmucsanpham = danhmucsanphamservice.LayDanhMucSanPhamCT();
			
			map.addAttribute("danhmuc_post_admin", listdanhmucsanpham);
			
			return"quanlysanpham";
		}
	
	
}
