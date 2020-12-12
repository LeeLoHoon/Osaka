package com.handong.ourapp.popular;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public interface PopularService {

	public int insertPopular(PopularVO vo);
	public int deletePopular(int seq);
	public int updatePopular(PopularVO vo);
	public PopularVO getPopular(int seq);
	public List<PopularVO> getPopularList();
	public void saveImage(Map<String, Object> hmap) throws SQLException;
	public Map<String, Object> getByteImage();
}
