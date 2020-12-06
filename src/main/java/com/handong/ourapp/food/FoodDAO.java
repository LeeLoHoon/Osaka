package com.handong.ourapp.food;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;


@Repository
public class FoodDAO{
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public int insertBoard(FoodVO vo) {
		
		
		return sqlSession.insert("Food.insertFood", vo);
		
	}
	
	public int deleteFood(int seq) {
		return sqlSession.delete("Food.deleteFood", seq);
	}
	
	public int updateFood(FoodVO vo) {
		return sqlSession.update("Food.updateFood", vo);
	}

	public FoodVO getFood(int seq) {
		return sqlSession.selectOne("Food.getFood", seq);
	}
	
	public List<FoodVO> getFoodList() {
		return sqlSession.selectList("Food.getFoodList");
	}
	
}


