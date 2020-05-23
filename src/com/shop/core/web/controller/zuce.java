package com.shop.core.web.controller;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shop.core.po.User;
import com.shop.core.service.OrderService;
import com.shop.core.service.UserService;

@Controller
public class zuce{
	// ����ע��
	@Autowired
	private UserService userService;
	@Autowired
	private OrderService orderService;
	
	@RequestMapping(value = "/touser.action")
	public String toCustomer() {
	    return "zuce";
	}
	@RequestMapping(value = "/zuce1.action")
	public String toCustomer2() {
	    return "zuce";
	}
	
/**
 * ���
 */
@RequestMapping(value = "/zuce.action", method = RequestMethod.POST)

public String login1(User user, Model model, 
        HttpSession session) {
	// ͨ���˺ź������ѯ�û�
	User user2 = userService.findUsercode(user.getUser_code());
	
	if(user2 !=null){		
		// ���û�������ӵ�Session
//		session.setAttribute("USER_SESSION", user);
		// ��ת����ҳ��
//		return "customer";
		model.addAttribute("msg","ע��ʧ�ܣ����ֻ����Ѿ�ע��!");
		return "zuce";
	}
	
//	String password = user.getUser_password();
//	System.out.println("username="+username);
//	System.out.println("password="+password);
//	
	 userService.insert(user);
	model.addAttribute("msg","ע��ɹ�!");
	
	return "tp";
}
}