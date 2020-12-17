package com.Nguyenvanhuyen.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Nguyenvanhuyen.DAO.NhanVienDAO;
import com.Nguyenvanhuyen.imp.NhanvienIpm;

import nguyenvanhuyen.entity.NhanVien;



@Service
public class Nhanvienservice implements NhanvienIpm {
			
	@Autowired
	NhanVienDAO nhanVienDAO;
		
	
	public void ThemNhanVien(NhanVien nhanvien) {
		  nhanVienDAO.ThemNhanVien(nhanvien);
		
	}
                             

	public boolean KiemTraDangNhap(String tendangnhap, String matkhau) {
		return nhanVienDAO.KiemTraDangNhap(tendangnhap, matkhau);
	}
		
	

//	public boolean ThemNhanVien(NhanVien nhanvien) {
//		boolean ktthem =  nhanVienDAO.ThemNhanVien(nhanvien);
//		return ktthem;
//	}
	

	
}
