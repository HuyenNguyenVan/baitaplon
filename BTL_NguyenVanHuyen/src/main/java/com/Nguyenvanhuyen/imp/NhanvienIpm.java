package com.Nguyenvanhuyen.imp;

import nguyenvanhuyen.entity.NhanVien;

public interface NhanvienIpm {
		
		boolean KiemTraDangNhap(String tendangnhap , String matkhau);
		void ThemNhanVien(NhanVien nhanvien);
		
}	
