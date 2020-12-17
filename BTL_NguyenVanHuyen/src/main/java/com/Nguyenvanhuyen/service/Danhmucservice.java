package com.Nguyenvanhuyen.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Nguyenvanhuyen.DAO.DanhMucDAO;
import com.Nguyenvanhuyen.imp.DanhMucipm;

import nguyenvanhuyen.entity.DanhMucSanPham;



@Service
public class Danhmucservice implements DanhMucipm {

	@Autowired
	DanhMucDAO danhMucDAO;
	
	
	public List<DanhMucSanPham> LayDanhMucSanPhamCT() {
	
		return danhMucDAO.LayDanhMucSanPhamCT();
	}


	
}
