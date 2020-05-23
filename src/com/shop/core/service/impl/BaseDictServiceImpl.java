package com.shop.core.service.impl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.shop.core.dao.BaseDictDao;
import com.shop.core.po.BaseDict;
import com.shop.core.service.BaseDictService;
/**
 * �����ֵ�Service�ӿ�ʵ����
 */
@Service("baseDictService")
public class BaseDictServiceImpl implements BaseDictService{	
	@Autowired
	private BaseDictDao baseDictDao;
	//�����������ѯ�����ֵ�
	public List<BaseDict> findBaseDictByTypeCode(String typecode) {
		return baseDictDao.selectBaseDictByTypeCode(typecode);
	}
}
