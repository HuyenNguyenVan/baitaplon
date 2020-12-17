package com.Nguyenvanhuyen.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Nguyenvanhuyen.DAO.SaveInfororderDAO;
import com.Nguyenvanhuyen.imp.HoaDonIm;

import nguyenvanhuyen.entity.HoaDon;

@Service
public class HoaDonservice implements HoaDonIm {
	
	@Autowired
	SaveInfororderDAO saveInfororderDAO;
	
	
	public int  save_info_order(HoaDon hoaDon) {
		
		return saveInfororderDAO.save_info_order(hoaDon);
	}
	

}
