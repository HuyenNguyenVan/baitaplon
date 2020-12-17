package com.Nguyenvanhuyen.DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.Nguyenvanhuyen.imp.ChiTietHoaDon_IM;

import nguyenvanhuyen.entity.ChiTietHoaDon;
import nguyenvanhuyen.entity.ChiTietHoaDonId;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class ChiTietHoaDon_DAO  implements ChiTietHoaDon_IM{

	
	@Autowired
	SessionFactory sessionFactory;
	
	
	
	
	@Transactional
	public boolean  save_ChiTietHoaDon(ChiTietHoaDon chiTietHoaDon) {
		
		Session session = sessionFactory.getCurrentSession();
		ChiTietHoaDonId id  = (ChiTietHoaDonId) session.save(chiTietHoaDon);
		
		if(null != id)
		{
			return true;
		}
		else {
			return false;
		}
		
		
	}

}
