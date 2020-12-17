package com.Nguyenvanhuyen.controller;


import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.MatrixVariable;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.Nguyenvanhuyen.service.Danhmucservice;
import com.Nguyenvanhuyen.service.SanPhamservice;
import com.mysql.cj.xdevapi.SessionFactory;

import nguyenvanhuyen.entity.ChucVu;
import nguyenvanhuyen.entity.DanhMucSanPham;
import nguyenvanhuyen.entity.GioHang;
import nguyenvanhuyen.entity.NhanVien;
import nguyenvanhuyen.entity.SanPham;


@Controller
@RequestMapping("/")
public class Trangchu {
	
	
	@Autowired
	org.hibernate.SessionFactory sessionFactory;
	
	
	@Autowired
	SanPhamservice sanphamservice;
	
	@Autowired
	Danhmucservice danhmucsanphamservice;
	
	@GetMapping("/themnhanvien")
	@Transactional
	public String ThemNhanVien()
	{
					NhanVien nhanVien = new NhanVien();
					nhanVien.setHoten("Nguyễn Văn Thành");
					nhanVien.setDiachi("Hà Nội");
					
					ChucVu chucVu = new ChucVu();
					chucVu.setTenchucve("Giám Đốc Văn Phòng");
					nhanVien.setChucvu(chucVu);
					
					Session session = sessionFactory.getCurrentSession();
					session.save(nhanVien);
					
			return"trangchu";
	}
	
	
	
	
	@GetMapping
	public String Defaul(ModelMap modelMap, HttpSession httpSession)
	{	
			
		if(httpSession.getAttribute("tendangnhap") != null)
		{
			String chuoihientai = (String) httpSession.getAttribute("tendangnhap");
			String chuoicat = chuoihientai.substring(0,1).toUpperCase();
			modelMap.addAttribute("tendangnhapkytudau", chuoicat);	
		}
		
		
		List<SanPham> sanphamlist = sanphamservice.Laydanhsachsanpham(0);
		
		modelMap.addAttribute("list", sanphamlist);
		
		System.out.println(sanphamlist.get(0).getGiatien());
		
		List<DanhMucSanPham> listdanhmucsanpham = danhmucsanphamservice.LayDanhMucSanPhamCT();
		
		modelMap.addAttribute("lisdmsp", listdanhmucsanpham);
		
		
		if( null != httpSession.getAttribute("giohang")) {
			
			List<GioHang> listgiohang =  (List<GioHang>) httpSession.getAttribute("giohang");
			modelMap.addAttribute("soluong_giohang_trangchu", listgiohang.size());
		}
		return"trangchu";
	}
	
	 
	
}
	
	
	

