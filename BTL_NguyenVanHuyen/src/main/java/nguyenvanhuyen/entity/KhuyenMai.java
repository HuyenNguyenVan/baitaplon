package nguyenvanhuyen.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

@Entity(name = "khuyenmai")
public class KhuyenMai {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int makhuyenmai;
	String tenkhuyenmai;
	String thoigianbandau;
	String thoigianketthuc;
	String mota;
	String hinhkhuyenmai;
	int giagiam;
	
	
	@ManyToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "CHITIETSANPHAM",
	joinColumns = {@JoinColumn(name = "makhuyenmai" , referencedColumnName = "makhuyenmai")},
	inverseJoinColumns = {@JoinColumn(name = "masanpham",referencedColumnName = "masanpham")}
			)
	Set<SanPham> danhsachsanpham;

	
	public int getMakhuyenmai() {
		return makhuyenmai;
	}


	public void setMakhuyenmai(int makhuyenmai) {
		this.makhuyenmai = makhuyenmai;
	}


	public String getTenkhuyenmai() {
		return tenkhuyenmai;
	}


	public void setTenkhuyenmai(String tenkhuyenmai) {
		this.tenkhuyenmai = tenkhuyenmai;
	}


	public String getThoigianbandau() {
		return thoigianbandau;
	}


	public void setThoigianbandau(String thoigianbandau) {
		this.thoigianbandau = thoigianbandau;
	}


	public String getThoigianketthuc() {
		return thoigianketthuc;
	}


	public void setThoigianketthuc(String thoigianketthuc) {
		this.thoigianketthuc = thoigianketthuc;
	}


	public String getMota() {
		return mota;
	}


	public void setMota(String mota) {
		this.mota = mota;
	}


	public String getHinhkhuyenmai() {
		return hinhkhuyenmai;
	}


	public void setHinhkhuyenmai(String hinhkhuyenmai) {
		this.hinhkhuyenmai = hinhkhuyenmai;
	}


	public int getGiagiam() {
		return giagiam;
	}


	public void setGiagiam(int giagiam) {
		this.giagiam = giagiam;
	}


	public Set<SanPham> getDanhsachsanpham() {
		return danhsachsanpham;
	}


	public void setDanhsachsanpham(Set<SanPham> danhsachsanpham) {
		this.danhsachsanpham = danhsachsanpham;
	}
	 
	
	
	
	
	
	
}
