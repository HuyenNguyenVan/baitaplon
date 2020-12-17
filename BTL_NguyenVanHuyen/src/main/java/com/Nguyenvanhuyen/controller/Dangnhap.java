package com.Nguyenvanhuyen.controller;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.Nguyenvanhuyen.service.Nhanvienservice;

import nguyenvanhuyen.entity.NhanVien;

@Controller
@RequestMapping("/dangnhap")
@SessionAttributes("tendangnhap")
public class Dangnhap {

	@Autowired
	Nhanvienservice nhanvienservice;
	
	
	@GetMapping
	public String Defaul()
	{
		
		return"dangnhap";
	}
	
	
		
		
	
}
