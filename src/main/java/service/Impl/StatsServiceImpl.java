package service.Impl;

import java.util.List;

import dao.StatsDao;
import dao.impl.StatsDaoImpl;
import dto.VideoLikedInfo;
import service.StatsService;

public class StatsServiceImpl implements StatsService{
	private StatsDao dao;
	
	public StatsServiceImpl() {
		dao = new StatsDaoImpl();
	}

	@Override
	public List<VideoLikedInfo> findVideoLikedInfo() {
		return dao.findVideoLikedInfo();
	}
	
}
