package com.shop.core.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.shop.core.dao.Imgdao;

import com.shop.core.po.Img;
import com.shop.core.service.ImgService;


@Service("imgService")
@Transactional
public class ImgServiceImpl implements ImgService {
	@Autowired
	private Imgdao imgdao;
	
	public Integer Addimg(Img img) {
		// TODO �Զ����ɵķ������
		return imgdao.Addimg(img);
	}

	@Override
	public Img selectimg(Integer id) {
		// TODO �Զ����ɵķ������
		Img img=imgdao.selectimg(id);
		return img;
	}

	

}
