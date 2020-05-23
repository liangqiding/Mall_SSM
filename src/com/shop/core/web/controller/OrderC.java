package com.shop.core.web.controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.shop.common.utils.Page;
import com.shop.core.po.Order;
import com.shop.core.po.User;
/**
 * ��Ʒ��������
 */
import com.shop.core.service.OrderService;


@Controller
public class OrderC {
	
	@Autowired
	private OrderService orderService;
	// �ͻ���Դ
	@Value("${customer.from.type}")
	private String FROM_TYPE;
	// �ͻ�������ҵ
	@Value("${customer.industry.type}")
	private String INDUSTRY_TYPE;
	// �ͻ�����
	@Value("${customer.level.type}")
	private String LEVEL_TYPE;
	/**
	 *  ��Ʒ�б�
	 */
	protected int id;
	@RequestMapping(value = "/O.action")
	public String list(HttpServletRequest request,@RequestParam(defaultValue="1")Integer page,
			@RequestParam(defaultValue="12")Integer rows, Model model) {
		// ������ѯ���пͻ�
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("USER_SESSION");
		 int id=user.getUser_id();
		Order orders=new Order();
		
		orders.setData_id(user.getUser_id());
		Page<Order> order = orderService
				.findOrderList(page, rows,orders);
		
		model.addAttribute("page", order);
		
	return "order";
	}
	//����
	@RequestMapping(value = "/M.action")
	public String listO(HttpServletRequest request,@RequestParam(defaultValue="1")Integer page,
			@RequestParam(defaultValue="12")Integer rows, Model model) {
		// ������ѯ���пͻ�
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("USER_SESSION");
		 int id=user.getUser_id();
		Order orders=new Order();
		
		orders.setData_id(user.getUser_id());
		Page<Order> order = orderService
				.findOrderListm(page, rows,orders);
		
		model.addAttribute("page", order);
		
	return "orderm";
	}
}