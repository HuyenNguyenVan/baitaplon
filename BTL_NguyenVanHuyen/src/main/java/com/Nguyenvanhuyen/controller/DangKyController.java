package com.Nguyenvanhuyen.controller;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Nguyenvanhuyen.service.Nhanvienservice;

import nguyenvanhuyen.entity.NhanVien;

@Controller
@RequestMapping("dangky")
public  class DangKyController {

//	public static final Pattern VALID_EMAIL_ADDRESS_REGEX = 
//		    Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$", Pattern.CASE_INSENSITIVE);
//			
//	public static boolean validate(String emailStr) {
//		        Matcher matcher = VALID_EMAIL_ADDRESS_REGEX .matcher(emailStr);
//		        return matcher.find();
//		} 
//	
//	 @GetMapping()   
//	public String DangKy()
//	{
//		
//		if(validate(tendangnhap))
//		{
//				if(matkhau.equals(nhaplaimk))
//				{
//					NhanVien ThemNv = new NhanVien();
//					ThemNv.setTendangnhap(tendangnhap);
//					ThemNv.setMatkhau(matkhau);
//					
//					nhanvienservice.ThemNhanVien(ThemNv);
//					
//					map.addAttribute("dangnhapthanhcong", "Chúc Mừng Bạn Đã Đăng Nhập Thành");					
//					
//					
//					
//					
//				}
//				else {
//					
//					System.out.println("Mật Khẩu Trùng Khớp");
//				}
//	
//		}else {
//				
//			System.out.println("Tên Đăng Ký Không Hợp Lệ!");
//			
//		}
//		return "viewDangKy";
//		
//	}
		
}
