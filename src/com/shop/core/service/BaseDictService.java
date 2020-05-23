package com.shop.core.service;
import java.util.List;
import com.shop.core.po.BaseDict;
/**
 * �����ֵ�Service�ӿ�
 */
public interface BaseDictService {
	//�����������ѯ�����ֵ�
	public List<BaseDict> findBaseDictByTypeCode(String typecode);	
}
