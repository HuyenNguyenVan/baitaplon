package com.Nguyenvanhuyen.DAO;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.persistence.Embeddable;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.Nguyenvanhuyen.imp.SanPhamipm;

import nguyenvanhuyen.entity.ChiTietSanPham;
import nguyenvanhuyen.entity.NhanVien;
import nguyenvanhuyen.entity.SanPham;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class SanPhamDAO implements SanPhamipm{

		@Autowired
		SessionFactory sessionFactory ;
	
		@Transactional
		public List<SanPham> Laydanhsachsanpham(int sanphambatdau) {
				
				Session session = sessionFactory.getCurrentSession();
				List<SanPham> phams = new ArrayList<SanPham>();
				if(sanphambatdau < 0)
					{
						String query = "from sanpham";				
						 phams	= (List<SanPham>) session.createQuery(query).getResultList();	
					}
				else {
					
					phams = (List<SanPham>) session.createQuery("From sanpham ").setFirstResult(sanphambatdau).setMaxResults(20).getResultList();
				}
				return phams;
					// đây là load... danh sách sản phẩm của phần trang chủ
		}
		
		
		@Transactional
		public SanPham Laydanhsachchitietsanpham(int masanpham) {
				
				Session session = sessionFactory.getCurrentSession();
				
				String query = "from sanpham sp where sp.masanpham = " + masanpham;
				
				SanPham phams	= (SanPham) session.createQuery(query).getSingleResult();
				
				return phams;
		
				// đây là lấy chi tiết sản phẩm.
		}
		
		
		@Transactional
		public List<SanPham> LayMaDanhMucSanPham(int IdDanhMuc) {
			
				Session session = sessionFactory.getCurrentSession();
				
				String query = "from sanpham sp where sp.danhmucsanpham.madanhmuc = " + IdDanhMuc ;
				
				List<SanPham> phams	= (List<SanPham>) session.createQuery(query).getResultList();
				
				return phams;
				// đây là lấy danh mục sản phẩm
		}

		
		@Transactional
		public void AdminQuanLy(int masp) {
			
			Session session = sessionFactory.getCurrentSession();
			SanPham sanPham = session.get(SanPham.class, masp);
			
			Set<ChiTietSanPham> listChiTietSanPham = sanPham.getChitietsanpham();
			
			for (ChiTietSanPham chiTietSanPham : listChiTietSanPham) {
				
				session.createQuery("delete chitiethoadon where machitietsanpham = " + chiTietSanPham.getMachitietsanpham()).executeUpdate();
				
			}
			session.createQuery("delete chitietkhuyenmai where masanpham = " + masp).executeUpdate();
			
			session.createQuery("delete chitietsanpham where masanpham = " + masp).executeUpdate();
			
			session.createQuery("delete sanpham where masanpham = " + masp).executeUpdate();
						// do chúng ta @Embeddable nên nó sẽ tự động Case = all nên hibernet không thể xóa được mối quan hệ của nó phải xóa bằng tay!
		}
		
		// đây là đoạn code giúp admin xóa sản phẩm
			
}
