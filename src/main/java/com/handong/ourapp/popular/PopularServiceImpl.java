package com.handong.ourapp.popular;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

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

	@Override
	public void saveImage(Map<String, Object> hmap) throws SQLException {
		// TODO Auto-generated method stub
		PopularDAO.saveImage(hmap);
	}

	@Override
	public Map<String, Object> getByteImage() {
		// TODO Auto-generated method stub
		return PopularDAO.getByteImage();
	}
	
	
}

