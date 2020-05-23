package com.shop.core.po;

public class Order {
	
	
	private Integer o_id;
	private Integer o_oid;
	private Integer o_cid;
	private Integer o_uid;
	private Integer o_sum;
	private Integer o_cnum;
	private Integer o_price;
	private String o_state;
	private String o_address;
	private String o_name;
	private Integer start;            // ��ʼ��
	private Integer rows; 
	private Integer data_id; 
	private Integer o_mid;
	
	public Integer getO_mid() {
		return o_mid;
	}
	public void setO_mid(Integer o_mid) {
		this.o_mid = o_mid;
	}
	public Integer getO_sum() {
		return o_sum;
	}
	public void setO_sum(Integer o_sum) {
		this.o_sum = o_sum;
	}
	public Integer getData_id() {
		return data_id;
	}
	public void setData_id(Integer data_id) {
		this.data_id = data_id;
	}
	public Integer getO_uid() {
		return o_uid;
	}
	public void setO_uid(Integer o_uid) {
		this.o_uid = o_uid;
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
	public Integer getO_id() {
		return o_id;
	}
	public void setO_id(Integer o_id) {
		this.o_id = o_id;
	}
	public Integer getO_oid() {
		return o_oid;
	}
	public void setO_oid(Integer o_oid) {
		this.o_oid = o_oid;
	}
	public Integer getO_cid() {
		return o_cid;
	}
	public void setO_cid(Integer o_cid) {
		this.o_cid = o_cid;
	}
	public Integer getO_cnum() {
		return o_cnum;
	}
	public void setO_cnum(Integer o_cnum) {
		this.o_cnum = o_cnum;
	}
	public Integer getO_price() {
		return o_price;
	}
	public void setO_price(Integer o_price) {
		this.o_price = o_price;
	}
	public String getO_state() {
		return o_state;
	}
	public void setO_state(String o_state) {
		this.o_state = o_state;
	}
	public String getO_address() {
		return o_address;
	}
	public void setO_address(String o_address) {
		this.o_address = o_address;
	}
	public String getO_name() {
		return o_name;
	}
	public void setO_name(String o_name) {
		this.o_name = o_name;
	}
	@Override
	public String toString() {
		return "Order [o_id=" + o_id + ", o_oid=" + o_oid + ", o_cid=" + o_cid + ", o_cnum=" + o_cnum + ", o_price="
				+ o_price + ", o_state=" + o_state + ", o_address=" + o_address + ", o_name=" + o_name + ", start="
				+ start + ", rows=" + rows + "]";
	}

}
