package com.Nguyenvanhuyen.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.Nguyenvanhuyen.imp.DanhMucipm;

import nguyenvanhuyen.entity.DanhMucSanPham;


@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class DanhMucDAO  implements DanhMucipm{
	
	@Autowired
	SessionFactory sessionFactory;
		
	
	
	@Transactional
	public List<DanhMucSanPham> LayDanhMucSanPhamCT() {
		
		Session session = sessionFactory.getCurrentSession();
		String query = "from danhmucsanpham ";
		List<DanhMucSanPham> lisdanhmucsanpham = (List<DanhMucSanPham>)session.createQuery(query).getResultList();
		
		return lisdanhmucsanpham;
	}








}
