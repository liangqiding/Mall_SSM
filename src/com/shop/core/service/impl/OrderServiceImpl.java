package com.shop.core.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shop.common.utils.Page;
import com.shop.core.dao.OrdDao;
import com.shop.core.po.Order;
import com.shop.core.service.OrderService;
@Service("orderService")
@Transactional
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrdDao ordDao;
	@Override
	public Order findOrder(Integer id) {
		// TODO �Զ����ɵķ������
		return ordDao.findOrder(id);
	}
	@Override
	public int createOrder(Order order) {
		// TODO �Զ����ɵķ������
		return ordDao.createOrder(order);
	}
	
	//
	public Page<Order> findOrderList(Integer page, Integer rows,Order orders) {
		// �����ͻ�����
		// ��ǰҳ
		orders.setStart((page-1) * rows) ;
		// ÿҳ��
		orders.setRows(rows);
		// ��ѯ�ͻ��б�
		List<Order> ordera = 
				ordDao.selectOrderList(orders);
		// ��ѯ�ͻ��б��ܼ�¼��
		Integer count = ordDao.selectOrderListCount(orders);
		// ����Page���ض���
		Page<Order> result = new Page<>();
		
		result.setPage(page);
		result.setRows(ordera);
		result.setSize(rows);
		result.setTotal(count);
		return result;
	}
	
	public Page<Order> findOrderListm(Integer page, Integer rows,Order orders) {
		// �����ͻ�����
		// ��ǰҳ
		orders.setStart((page-1) * rows) ;
		// ÿҳ��
		orders.setRows(rows);
		// ��ѯ�ͻ��б�
		List<Order> ordera = 
				ordDao.selectOrderListm(orders);
		// ��ѯ�ͻ��б��ܼ�¼��
		Integer count = ordDao.selectOrderListCountm(orders);
		// ����Page���ض���
		Page<Order> result = new Page<>();
		
		result.setPage(page);
		result.setRows(ordera);
		result.setSize(rows);
		result.setTotal(count);
		return result;
	}
	

}
