package dao;

import java.util.List;

import entities.History;

public interface HistoryDao {
	List<History> findByUser(String username);
	List<History> findByUserAndisLike(String username);
	History findByUserIdAndVideoId(Integer userid,Integer videoid);
	History create(History entity);
	History update(History entity);
}
