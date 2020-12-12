package com.handong.ourapp.food;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public interface FoodService {

	public int insertFood(FoodVO vo);
	public int deleteFood(int seq);
	public int updateFood(FoodVO vo);
	public FoodVO getFood(int seq);
	public List<FoodVO> getFoodList();
	public void saveImage(Map<String, Object> hmap) throws SQLException;
	public Map<String, Object> getByteImage();
}
