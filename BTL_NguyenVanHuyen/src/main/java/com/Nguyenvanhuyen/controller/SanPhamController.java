package com.Nguyenvanhuyen.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Nguyenvanhuyen.service.Danhmucservice;
import com.Nguyenvanhuyen.service.SanPhamservice;

import nguyenvanhuyen.entity.DanhMucSanPham;
import nguyenvanhuyen.entity.SanPham;

@Controller
@RequestMapping("sanpham")
public class SanPhamController {

	
	
	
	@Autowired
	Danhmucservice danhmucsanphamservice;
	
	@Autowired
	SanPhamservice sanPhamservice;
	

	@GetMapping("/{IdDanhMuc}") 
	public String Defaul(ModelMap modelMap ,@PathVariable int IdDanhMuc)
		{
			
		List<DanhMucSanPham> listdanhmucsanpham = danhmucsanphamservice.LayDanhMucSanPhamCT();
		
		modelMap.addAttribute("lisdmsp", listdanhmucsanpham);
		List<SanPham> lissanphamdanhmuc =  	sanPhamservice.LayMaDanhMucSanPham(IdDanhMuc);
		modelMap.addAttribute("list", lissanphamdanhmuc);
			
			return"SanPhamView";
		}
	
	
	
}
