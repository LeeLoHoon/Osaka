package com.handong.ourapp.popular;

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
public class PopularDAO{
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public int insertPopular(PopularVO vo) {
		
		
		return sqlSession.insert("Popular.insertPopular", vo);
		
	}
	
	public int deletePopular(int seq) {
		return sqlSession.delete("Popular.deletePopular", seq);
	}
	
	public int updatePopular(PopularVO vo) {
		return sqlSession.update("Popular.updatePopular", vo);
	}

	public PopularVO getPopular(int seq) {
		return sqlSession.selectOne("Popular.getPopular", seq);
	}
	
	public List<PopularVO> getPopularList() {
		return sqlSession.selectList("Popular.getPopularList");
	}
	
}