package com.handong.ourapp.food;

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
@RequestMapping(value="/food")
public class FoodController{
	
    
	@Autowired
	private FoodServiceImpl foodService;
	
	@RequestMapping(value="/foodlist",method=RequestMethod.GET)
	public String foodlist(Model model) {
		model.addAttribute("foodlist",foodService.getFoodList());
		return "foodlist";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String addPost() {
		return "addpostform";
	}
	   
	@RequestMapping(value="/addok",method=RequestMethod.GET)
	public String addPostOk(FoodVO vo) {
		if(foodService.insertFood(vo)==0)
			System.out.println("데이터 추가 실패");
		else
			System.out.println("데이터 추가 성공");
		return "redirect:foodlist";
	}
	
	@RequestMapping(value="/editform/{id}",method=RequestMethod.GET)
	public String editPost(@PathVariable("id") int id, Model model) {
		FoodVO popularVO =foodService.getFood(id);
		model.addAttribute("u", popularVO);
		return "editform";
	}
	
	@RequestMapping(value="/editok",method=RequestMethod.POST)
	public String editPostOk(FoodVO vo) {
		if(foodService.updateFood(vo)==0)
			System.out.println("데이터 추가 실패");
		else
			System.out.println("데이터 추가 성공");
		return "redirect:foodlist";
	}
	
	
	@RequestMapping(value="/deleteok/{id}",method=RequestMethod.GET)
	public String deletePostOk(@PathVariable("id") int id) {
		if(foodService.deleteFood(id)==0)
			System.out.println("데이터 추가 실패");
		else
			System.out.println("데이터 추가 성공");
		return "redirect:../foodlist";
	}
	   
	   
	
}