package com.shop.core.dao;



import java.util.List;

import com.shop.core.po.Order;


public interface OrdDao {
	public Order findOrder(Integer id);
	public int createOrder(Order order);
	 // �ͻ��б�
		public List<Order> selectOrderList(Order order);
		// �ͻ���
		public Integer selectOrderListCount(Order order);
		
		// �ͻ��б�
				public List<Order> selectOrderListm(Order order);
				// �ͻ���
				public Integer selectOrderListCountm(Order order);
}
