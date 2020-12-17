package com.Nguyenvanhuyen.DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.annotations.Proxy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PostMapping;

import com.Nguyenvanhuyen.imp.NhanvienIpm;

import nguyenvanhuyen.entity.NhanVien;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class NhanVienDAO implements NhanvienIpm{
	
	@Autowired
	SessionFactory sessionFactory;	
	@Transactional
	public void ThemNhanVien(NhanVien nhanvien) {
		
		Session session = 	sessionFactory.getCurrentSession();
		
		session.save(nhanvien);
	
	}

	@Transactional
	public boolean KiemTraDangNhap(String tendangnhap, String matkhau) {
		Session session = sessionFactory.getCurrentSession();
		
		try {
			
			//String sql = "from nhanvien where tendangnhap = " + tendangnhap + "and matkhau = " + matkhau;
			NhanVien nv = (NhanVien) session.createQuery("from nhanvien where tendangnhap = '" + tendangnhap + "' AND matkhau = '" + matkhau +"'").getSingleResult();
			
			if(nv != null)
			{
				return true;
			}
			
		} catch (Exception e) {
				return false;
		}
		
		return false;		
	}

}
