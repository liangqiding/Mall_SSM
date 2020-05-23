package com.shop.core.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.shop.core.dao.UserDao;
import com.shop.core.po.User;
import com.shop.core.service.UserService;
/**
 * �û�Service�ӿ�ʵ����
 */
@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {
	// ע��UserDao
	@Autowired
	private UserDao userDao;
	// ͨ���˺ź������ѯ�û�
	@Override
	public User findUser(String usercode, String password) {
		User user = this.userDao.findUser(usercode, password);
		return user;
	}
	@Override
	public int insert(User user) {
		// TODO �Զ����ɵķ������
		
		return userDao.insert(user);
	}
	@Override
	public User findUsercode(String usercode) {
		// TODO �Զ����ɵķ������
		return userDao.findUsercode(usercode);
	}

	
	
}
