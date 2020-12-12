package com.handong.ourapp.food;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FoodServiceImpl implements FoodService{
	
	@Autowired
	FoodDAO FoodDAO;
	
	@Override
	public int insertFood(FoodVO vo) {
		return FoodDAO.insertFood(vo);
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

	@Override
	public void saveImage(Map<String, Object> hmap) throws SQLException {
		// TODO Auto-generated method stub
		FoodDAO.saveImage(hmap);
	}

	@Override
	public Map<String, Object> getByteImage() {
		// TODO Auto-generated method stub
		return FoodDAO.getByteImage();
	}
	
	
}

