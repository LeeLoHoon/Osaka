package com.handong.ourapp.popular;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PopularServiceImpl implements PopularService{
	
	@Autowired
	PopularDAO PopularDAO;
	
	@Override
	public int insertPopular(PopularVO vo) {
		return PopularDAO.insertPopular(vo);
	}

	@Override
	public int deletePopular(int seq) {
		// TODO Auto-generated method stub
		return PopularDAO.deletePopular(seq);
	}

	@Override
	public int updatePopular(PopularVO vo) {
		// TODO Auto-generated method stub
		return PopularDAO.updatePopular(vo);
	}

	@Override
	public PopularVO getPopular(int seq) {
		// TODO Auto-generated method stub
		return PopularDAO.getPopular(seq);
	}

	@Override
	public List<PopularVO> getPopularList() {
		// TODO Auto-generated method stub
		return PopularDAO.getPopularList();
	}
	
	
}

