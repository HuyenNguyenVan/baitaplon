package com.Nguyenvanhuyen.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Nguyenvanhuyen.DAO.ChiTietHoaDon_DAO;
import com.Nguyenvanhuyen.imp.ChiTietHoaDon_IM;

import nguyenvanhuyen.entity.ChiTietHoaDon;

@Service
public class ChiTietHoaDon_Service implements ChiTietHoaDon_IM{

	
		
	@Autowired
	ChiTietHoaDon_DAO chiTietHoaDon_DAO ;
	
	
	public boolean save_ChiTietHoaDon(ChiTietHoaDon chiTietHoaDon) {
		
		return chiTietHoaDon_DAO.save_ChiTietHoaDon(chiTietHoaDon);
	}
	
		
}
