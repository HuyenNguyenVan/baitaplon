package com.Nguyenvanhuyen.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Nguyenvanhuyen.DAO.SanPhamDAO;
import com.Nguyenvanhuyen.imp.SanPhamipm;

import nguyenvanhuyen.entity.SanPham;

@Service
public class SanPhamservice  implements SanPhamipm {

	@Autowired
	SanPhamDAO sanPhamDAO;
	
	public List<SanPham> Laydanhsachsanpham(int sanphambatdau) {
		
	 return	sanPhamDAO.Laydanhsachsanpham(sanphambatdau);
		
		
		
	}

	public SanPham Laydanhsachchitietsanpham(int masanpham) {
		
				return 	sanPhamDAO.Laydanhsachchitietsanpham(masanpham);
				
	}

	public List<SanPham> LayMaDanhMucSanPham(int IdDanhMuc) {
		
		return sanPhamDAO.LayMaDanhMucSanPham(IdDanhMuc);
	}

	public void AdminQuanLy(int masp) {
		
		sanPhamDAO.AdminQuanLy(masp);
		
	}

}
