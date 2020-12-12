package com.handong.ourapp.popular;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


@Controller
@RequestMapping(value = "/popular")
public class PopularController {

	@Autowired
	private PopularServiceImpl popularService;
	
	@Autowired
	private PopularDAO dao;

	@RequestMapping(value = "/popularlist", method = RequestMethod.GET)
	public String foodlist(Model model) {
		model.addAttribute("popularlist", popularService.getPopularList());
		return "popularlist";
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String addPost() {
		return "addpostform";
	}
<<<<<<< HEAD
=======

	@RequestMapping(value="/addok")
	public String addPostOk(@RequestParam("photo1") MultipartFile photo,PopularVO vo) {
		
	
		try {
			vo.setPhoto(photo.getBytes());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(popularService.insertPopular(vo)==0)
			System.out.println("데이터 추가 실패");
		else
			System.out.println("데이터 추가 성공");
		
		return "redirect:popularlist";
	}
>>>>>>> detail
	     
	/**
	 * 파일태그를 위한 폼태그
	 * @return
	 */
	/*
	@RequestMapping(value="/formFile")
	public String formFile() {
	    return "formFile";
	}*/
	 
	/**
	 * 파일처리 컨트롤러
	 * @param vo
	 * @return
	 */
	/*
	@RequestMapping(value="/addok", method = RequestMethod.POST)
	public String saveImage(PopularVO vo) {
	    try {
	    
	        Map<String, Object> hmap = new HashMap<String, Object>();
	        hmap.put("photo", vo.getPhoto());
	        dao.saveImage(hmap);   
	        System.out.println("데이터 추가 성공!!!!!!");
	    } catch (Exception e) {
	    	System.out.println("데이터 추가 실패");
	        e.printStackTrace();
	    }
	    return "redirect:/popular/popularlist";
	}

*/

<<<<<<< HEAD
	
	@RequestMapping(value = "/addok", method = RequestMethod.POST)
	public String addPostOk(PopularVO vo) {
		if (popularService.insertPopular(vo) == 0)
			System.out.println("데이터 추가 실패");
		else System.out.println("데이터 추가 성공");
		return "redirect:popularlist";
	}
	
=======

	/*
	 * @RequestMapping(value = "/addok", method = RequestMethod.GET) public String
	 * addPostOk(PopularVO vo) { if (popularService.insertPopular(vo) == 0)
	 * System.out.println("데이터 추가 실패"); else System.out.println("데이터 추가 성공"); return
	 * "redirect:popularlist"; }
	 */
	
	@RequestMapping(value = "/detail/{id}", method = RequestMethod.GET)
	public String detailPost(@PathVariable("id") int id, Model model) {
		PopularVO popularVO = popularService.getPopular(id);
		model.addAttribute("u", popularVO);
		return "detailform";
	}
	
	
>>>>>>> detail
	@RequestMapping(value = "/editform/{id}", method = RequestMethod.GET)
	public String editPost(@PathVariable("id") int id, Model model) {
		PopularVO popularVO = popularService.getPopular(id);
		model.addAttribute("u", popularVO);
		return "editform";
	}
	
	@RequestMapping(value = "/view/{id}", method = RequestMethod.GET)
	public String viewPost(@PathVariable("id") int id, Model model) {
		PopularVO popularVO = popularService.getPopular(id);
		model.addAttribute("u", popularVO);
		return "view";
	}

	@RequestMapping(value = "/editok", method = RequestMethod.POST)
	public String editPostOk(PopularVO vo) {
		if (popularService.updatePopular(vo) == 0)
			System.out.println("데이터 추가 실패");
		else
			System.out.println("데이터 추가 성공");
		return "redirect:popularlist";
	}

	@RequestMapping(value = "/deleteok/{id}", method = RequestMethod.GET)
	public String deletePostOk(@PathVariable("id") int id) {
		if (popularService.deletePopular(id) == 0)
			System.out.println("데이터 추가 실패");
		else
			System.out.println("데이터 추가 성공");
		return "redirect:../popularlist";
	}

}