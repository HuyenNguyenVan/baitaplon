package com.Nguyenvanhuyen.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("dashboard")
public class dashboardContronller {
	
	@GetMapping
	public String Defaul()
			{
					
	
				return"dashboard";
			}
	
	
	
	
}
