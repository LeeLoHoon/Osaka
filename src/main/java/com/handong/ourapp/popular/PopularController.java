package com.handong.ourapp.popular;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
@RequestMapping(value="/popular")
public class PopularController{
	
    
	@Autowired
	private PopularServiceImpl popularService;
	
	@RequestMapping(value="/popularlist",method=RequestMethod.GET)
	public String foodlist(Model model) {
		model.addAttribute("popularlist",popularService.getPopularList());
		return "popularlist";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String addPost() {
		return "addpostform";
	}
	   
	@RequestMapping(value="/addok",method=RequestMethod.GET)
	public String addPostOk(PopularVO vo) {
		if(popularService.insertPopular(vo)==0)
			System.out.println("데이터 추가 실패");
		else
			System.out.println("데이터 추가 성공");
		return "redirect:popularlist";
	}
	
	@RequestMapping(value="/editform/{id}",method=RequestMethod.GET)
	public String editPost(@PathVariable("id") int id, Model model) {
		PopularVO popularVO = popularService.getPopular(id);
		model.addAttribute("u", popularVO);
		return "editform";
	}
	
	@RequestMapping(value="/editok",method=RequestMethod.POST)
	public String editPostOk(PopularVO vo) {
		if(popularService.updatePopular(vo)==0)
			System.out.println("데이터 추가 실패");
		else
			System.out.println("데이터 추가 성공");
		return "redirect:popularlist";
	}
	
	
	@RequestMapping(value="/deleteok/{id}",method=RequestMethod.GET)
	public String deletePostOk(@PathVariable("id") int id) {
		if(popularService.deletePopular(id)==0)
			System.out.println("데이터 추가 실패");
		else
			System.out.println("데이터 추가 성공");
		return "redirect:../popularlist";
	}
	   
	   
	
}