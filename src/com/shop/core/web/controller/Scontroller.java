package com.shop.core.web.controller;

import java.util.List;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.common.utils.Page;
import com.shop.core.po.BaseDict;
import com.shop.core.po.Customer;
import com.shop.core.po.Order;
import com.shop.core.po.User;
import com.shop.core.service.BaseDictService;
import com.shop.core.service.CustomerService;
/**
 * ��Ʒ��������
 */
import com.shop.core.service.OrderService;
@Controller
public class Scontroller {
	
	// ����ע��
	@Autowired
	private CustomerService customerService;
	@Autowired
	private BaseDictService baseDictService;
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
	@RequestMapping(value = "/customer/S.action")
	public String list(@RequestParam(defaultValue="1")Integer page,
			@RequestParam(defaultValue="6")Integer rows, 
			String custName, String custSource, String custIndustry,
			String custLevel, Model model) {
		// ������ѯ���пͻ�
		Page<Customer> customers = customerService
				.findCustomerList(page, rows, custName, 
                                        custSource, custIndustry,custLevel);
		model.addAttribute("page", customers);
		
		// �ͻ���Դ
		List<BaseDict> fromType = baseDictService
				.findBaseDictByTypeCode(FROM_TYPE);
		// �ͻ�������ҵ
		List<BaseDict> industryType = baseDictService
				.findBaseDictByTypeCode(INDUSTRY_TYPE);
		// �ͻ�����
		List<BaseDict> levelType = baseDictService
				.findBaseDictByTypeCode(LEVEL_TYPE);
		// ��Ӳ���
		model.addAttribute("fromType", fromType);
		model.addAttribute("industryType", industryType);
		model.addAttribute("levelType", levelType);
		model.addAttribute("custName", custName);
		model.addAttribute("custSource", custSource);
		model.addAttribute("custIndustry", custIndustry);
		model.addAttribute("custLevel", custLevel);
//		return "customer";
		return "index-main";
	}
	
	/**
	 * �ͻ����� 
	 */
	@RequestMapping("/customer/buy.action")
	@ResponseBody
	public String Update(HttpServletRequest request,HttpServletResponse response,Customer customer) {
		
		 Order order=new Order();
		 //��ַ
		 order.setO_address(customer.getS_linkman());
		 //��������
		 order.setO_cnum(customer.getS_ksum());
		
		 //����
		 Customer g=customerService.getCustomerById(customer.getS_id());
		 //�жϿ��
		 
		 
		 if(customer.getS_ksum()>g.getS_ksum()||customer.getS_ksum()<=0){
			 return "FAIL";
			 }
		 
	int rows = customerService.update(customer);
	 if(rows < 0){
	        return "FAIL";
	    }
//���ɶ�����Ϣ
	 Customer customer1 = customerService.getCustomerById(customer.getS_id());
	 
	 //
	 HttpSession session = request.getSession();
		User user = (User) session.getAttribute("USER_SESSION");
		int id=user.getUser_id();
	 
		order.setO_mid(g.getS_create_id());
	 order.setO_uid(id);
	 order.setO_cid(customer1.getS_id());
	 //��Ʒ��
	 order.setO_name(customer1.getS_name());
	//
	 order.setO_sum(customer.getS_ksum()*customer1.getS_price());
	 //�۸�
	 order.setO_price(customer1.getS_price());
	 order.setO_state("δ����");
	 
	 int i=orderService.createOrder(order);
	 System.out.println("aaaaaaaaaaaaaaaaaaaaaa"+id);
	 return "OK";
}
//��β������
}
