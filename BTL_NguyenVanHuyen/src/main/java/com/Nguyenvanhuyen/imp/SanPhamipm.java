package com.Nguyenvanhuyen.imp;

import java.util.List;

import nguyenvanhuyen.entity.DanhMucSanPham;
import nguyenvanhuyen.entity.NhanVien;
import nguyenvanhuyen.entity.SanPham;

public interface SanPhamipm {
	
	
		List<SanPham> Laydanhsachsanpham(int sanphambatdau);
		public SanPham Laydanhsachchitietsanpham(int masanpham);
		public List<SanPham> LayMaDanhMucSanPham(int IdDanhMuc);
		public void AdminQuanLy(int masp);
}
