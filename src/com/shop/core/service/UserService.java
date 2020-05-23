package com.shop.core.service;



import com.shop.core.po.User;
/**
 * �û�Service��ӿ�
 */
public interface UserService {
	// ͨ���˺ź������ѯ�û�
	public User findUser(String usercode,String password);
	
	public int insert(User user);
	public User findUsercode(String usercode);
	

	

	
	
//	public Page<User> findUserlist(String user_code);

	
}
