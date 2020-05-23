package com.shop.core.po;
import java.io.Serializable;
import java.util.Date;
/**
 * �ͻ��־û���
 */
public class Customer implements Serializable {
	private static final long serialVersionUID = 1L;
	private Integer s_id;          // ���
	private String s_name;         // ����
	private Integer s_user_id;    // ������id
	private Integer s_create_id;  // ������id
	private String s_supplier;      // ������
	private String s_class;        //���
	private String s_state;       // ��Ʒ״̬
	private String s_linkman;     // ��ע
	private Integer s_xsum;       // ����
	private Integer s_ksum;      // ���
	private Integer s_price;     // �۸�
	private String cust_address;     // ��ϸ��Ϣ
	private Date cust_createtime;    // ����ʱ��	
	private Integer start;            // ��ʼ��
	private Integer rows;             // ��ȡ����
	private String img; 
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public Integer getS_id() {
		return s_id;
	}
	public void setS_id(Integer s_id) {
		this.s_id = s_id;
	}
	public String getS_name() {
		return s_name;
	}
	public void setS_name(String s_name) {
		this.s_name = s_name;
	}
	public Integer getS_user_id() {
		return s_user_id;
	}
	public void setS_user_id(Integer s_user_id) {
		this.s_user_id = s_user_id;
	}
	public Integer getS_create_id() {
		return s_create_id;
	}
	public void setS_create_id(Integer s_create_id) {
		this.s_create_id = s_create_id;
	}
	public String getS_supplier() {
		return s_supplier;
	}
	public void setS_supplier(String s_supplier) {
		this.s_supplier = s_supplier;
	}
	public String getS_class() {
		return s_class;
	}
	public void setS_class(String s_class) {
		this.s_class = s_class;
	}
	public String getS_state() {
		return s_state;
	}
	public void setS_state(String s_state) {
		this.s_state = s_state;
	}
	public String getS_linkman() {
		return s_linkman;
	}
	public void setS_linkman(String s_linkman) {
		this.s_linkman = s_linkman;
	}
	public Integer getS_xsum() {
		return s_xsum;
	}
	public void setS_xsum(Integer s_xsum) {
		this.s_xsum = s_xsum;
	}
	public Integer getS_ksum() {
		return s_ksum;
	}
	public void setS_ksum(Integer s_ksum) {
		this.s_ksum = s_ksum;
	}
	public Integer getS_price() {
		return s_price;
	}
	public void setS_price(Integer s_price) {
		this.s_price = s_price;
	}
	public String getCust_address() {
		return cust_address;
	}
	public void setCust_address(String cust_address) {
		this.cust_address = cust_address;
	}
	public Date getCust_createtime() {
		return cust_createtime;
	}
	public void setCust_createtime(Date cust_createtime) {
		this.cust_createtime = cust_createtime;
	}
	public Integer getStart() {
		return start;
	}
	public void setStart(Integer start) {
		this.start = start;
	}
	public Integer getRows() {
		return rows;
	}
	public void setRows(Integer rows) {
		this.rows = rows;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "Customer [s_id=" + s_id + ", s_name=" + s_name + ", s_user_id=" + s_user_id + ", s_create_id="
				+ s_create_id + ", s_supplier=" + s_supplier + ", s_class=" + s_class + ", s_state=" + s_state
				+ ", s_linkman=" + s_linkman + ", s_xsum=" + s_xsum + ", s_ksum=" + s_ksum + ", s_price=" + s_price
				+ ", cust_address=" + cust_address + ", cust_createtime=" + cust_createtime + ", start=" + start
				+ ", rows=" + rows + "]";
	}
	
	
	
}
