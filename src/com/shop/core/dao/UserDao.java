package com.shop.core.dao;


import org.apache.ibatis.annotations.Param;

import com.shop.common.utils.Page;
import com.shop.core.po.User;
/**
 * �û�DAO��ӿ�
 */
public interface UserDao {
	/**
	 * ͨ���˺ź������ѯ�û�
	 */
	public User findUser(@Param("usercode") String usercode,
			                @Param("password") String password);
	
	
	
	public User findUsercode(@Param("usercode") String usercode);
	
	public int insert(User user);
	public Page<User> findUserlist(String user_code);
}
