package com.shop.core.service;



import com.shop.common.utils.Page;
import com.shop.core.po.Order;

public interface OrderService {
	public Order findOrder(Integer id);
	public int createOrder(Order order);
	// ��ѯ�ͻ��б�
		public Page<Order> findOrderList(Integer page, Integer rows,Order orders);
		
		public Page<Order> findOrderListm(Integer page, Integer rows,Order orders);
}
