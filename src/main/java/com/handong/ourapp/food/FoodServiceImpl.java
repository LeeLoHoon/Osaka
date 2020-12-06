package com.handong.ourapp.food;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FoodServiceImpl implements FoodService{
	
	@Autowired
	FoodDAO FoodDAO;
	
	@Override
	public int insertFood(FoodVO vo) {
		return FoodDAO.insertBoard(vo);
	}

	@Override
	public int deleteFood(int seq) {
		// TODO Auto-generated method stub
		return FoodDAO.deleteFood(seq);
	}

	@Override
	public int updateFood(FoodVO vo) {
		// TODO Auto-generated method stub
		return FoodDAO.updateFood(vo);
	}

	@Override
	public FoodVO getFood(int seq) {
		// TODO Auto-generated method stub
		return FoodDAO.getFood(seq);
	}

	@Override
	public List<FoodVO> getFoodList() {
		// TODO Auto-generated method stub
		return FoodDAO.getFoodList();
	}
	
	
}

