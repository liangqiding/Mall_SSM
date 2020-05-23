package com.shop.core.web.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shop.core.po.User;
import com.shop.core.service.UserService;
/**
 * �û���������
 */
@Controller
public class UserController {
	// ����ע��
	@Autowired
	private UserService userService;
	/**
	 * �û���¼
	 */
	@RequestMapping(value = "/login.action", method = RequestMethod.POST)
	public String login(String usercode,String password, Model model, 
                                                          HttpSession session) {
		// ͨ���˺ź������ѯ�û�
		User user = userService.findUser(usercode, password);
		if(user != null){		
			// ���û�������ӵ�Session
			session.setAttribute("USER_SESSION", user);
			// ��ת����ҳ��
//			return "customer";
			return "redirect:customer/S.action";
		}
		
		model.addAttribute("msg", "�˺Ż�����������������룡");
		
         // ���ص���¼ҳ��
		
		return "login";
	}
	
	
	/**
	 * ���ҵ�¼
	 */
	@RequestMapping(value = "/login2.action", method = RequestMethod.POST)
	public String login2(String usercode,String password, Model model, 
                                                          HttpSession session) {
		// ͨ���˺ź������ѯ�û�
		User user = userService.findUser(usercode, password);

		
		if(user != null&&user.getUser_vip()>=0){		
			// ���û�������ӵ�Session
			session.setAttribute("USER_SESSION", user);
			// ��ת����ҳ��
//			return "customer";
			return "redirect:customer/list.action";
		}
		
		model.addAttribute("msg", "�˺Ż�����������������룡");
		
         // ���ص���¼ҳ��
		
		return "login2";
	}

	
	/**
	 * ģ������������ת���ͻ�����ҳ��ķ���
	 */
	@RequestMapping(value = "/toCustomer.action")
	public String toCustomer() {
	    return "customer";
	}
	
	/**
	 * �˳���¼
	 */
	@RequestMapping(value = "/logout.action")
	public String logout(HttpSession session) {
	    // ���Session
	    session.invalidate();
	    // �ض��򵽵�¼ҳ�����ת����
	    return "redirect:login.action";
	}
	/**
	 * ���û���½ҳ����ת
	 */
	@RequestMapping(value = "/login.action", method = RequestMethod.GET)
	public String toLogin() {
	    return "login";
	}
	/**
	 * ���û���½ҳ����ת
	 */
	@RequestMapping(value = "/zuce.action", method = RequestMethod.GET)
	public String toLogin1() {
	    return "login";
	}
	//��indexҳ����ת
	@RequestMapping(value = "/index.action")
	public String toindex() {
	    return "index-main";
	}
	
	//��
		@RequestMapping(value = "/mjdl.action")
		public String toindex2() {
		    return "login2";
		}
}
