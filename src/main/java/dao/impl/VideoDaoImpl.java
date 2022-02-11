package dao.impl;

import java.util.List;

import dao.AbstractDao;
import dao.VideoDao;
import entities.Video;

public class VideoDaoImpl extends AbstractDao<Video> implements VideoDao{

	@Override
	public Video findById(Integer id) {
		return super.findById(Video.class, id);
	}
	
	@Override
	public Video findByHref(String href) {
		String sql = "Select o from Video o Where o.href = ?0";
		return super.findOne(Video.class, sql, href);
	}

	@Override
	public List<Video> findAll() {
		return super.findAll(Video.class, true);
	}

	@Override
	public List<Video> findAll(int pageNumber, int pageSize) {
		return super.findAll(Video.class, true,pageNumber,pageSize);
	}



}
