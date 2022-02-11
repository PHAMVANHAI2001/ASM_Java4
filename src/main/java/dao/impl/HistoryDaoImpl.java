package dao.impl;

import java.util.List;

import dao.AbstractDao;
import dao.HistoryDao;
import entities.History;

public class HistoryDaoImpl extends AbstractDao<History> implements HistoryDao {

	@Override
	public List<History> findByUser(String username) {
		String sql = "Select o from History o Where o.user.username = ?0 And o.video.isActive = 1"
				+  " ORDER by o.viewDate DESC";
		return super.findMany(History.class, sql, username);
	}

	@Override
	public List<History> findByUserAndisLike(String username) {
		String sql = "Select o from History o Where o.user.username = ?0 And o.isLike = 1 And o.video.isActive = 1"
				+  " ORDER by o.viewDate DESC";
		return super.findMany(History.class, sql, username);
	}

	@Override
	public History findByUserIdAndVideoId(Integer userId, Integer videoId) {
		String sql = "Select o From History o Where o.user.id = ?0 And o.video.id = ?1 And o.video.isActive = 1";
		return super.findOne(History.class, sql, userId, videoId);
	}
}
