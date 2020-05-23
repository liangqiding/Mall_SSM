package com.shop.core.web.controller;


import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;


import com.shop.core.po.Img;
import com.shop.core.service.ImgService;

@Controller
	public class Imgc {
		
		@Autowired
		private ImgService imgService ;
		@RequestMapping("/img.action")
		@ResponseBody
		public  String addImg(HttpServletRequest request,HttpSession session,
				@RequestParam(value="file" )MultipartFile pictureFile,Model model ) throws  IOException  {
	//这个RequestParam(value="file")的是我们在jsp的name=“file”
			// 使用UUID给图片重命名，并去掉四个“-”
			String name = UUID.randomUUID().toString().replaceAll("-", "");
			// 获取文件的扩展名
			String ext = FilenameUtils.getExtension(pictureFile
					.getOriginalFilename());
			// 设置图片上传路径
			String url = request.getSession().getServletContext()
					.getRealPath("/upload");
			System.out.println(url);
			// 以绝对路径保存重名命后的图片
			pictureFile.transferTo(new File(url + "/" + name + "." + ext));
			// 把图片存储路径保存到数据库
			Img img=new Img();
			img.setI_data("upload/" + name + "." + ext);
			
			
			int row=imgService.Addimg(img);
          if(row>0){
			model.addAttribute("msg-img","上传成功");
			 return "OK";
              }
             return "Fail";
                      }  
		//查看图片
//		@RequestMapping(value = "/imgList")
//		public String imgList(Model model) throws Exception {
//			Customer imgList= customerService.getCustomerById(1);
//			String imgnane=imgList.getImg();
//			System.out.println(imgnane);
//			model.addAttribute("imgList", imgnane);
//			return "index-main";
//		}
//		@RequestMapping(value = "/mjdl.action")
//		public String toindex2() {
//		    return "index-main";
//		}

}



