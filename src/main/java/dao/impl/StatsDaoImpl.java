package dao.impl;

import java.util.ArrayList;
import java.util.List;

import dao.AbstractDao;
import dao.StatsDao;
import dto.VideoLikedInfo;

public class StatsDaoImpl extends AbstractDao<Object[]> implements StatsDao{

	@Override
	public List<VideoLikedInfo> findVideoLikedInfo() {
		String sql = "select v.id, v.title, v.href, sum(cast(h.isLike as int)) as totalLike"
				+ " from video v left join history h on v.id = h.videoId"
				+ " Where v.isActive = 1"
				+ " group by v.id, v.title, v.href"
				+ " order by sum(cast(h.isLike as int)) desc";
		List<Object[]> objects = super.findManyByNativeQuery(sql);
		List<VideoLikedInfo> result = new ArrayList<>();
		objects.forEach(object -> {
			VideoLikedInfo videolikedinfo = setDataVideoLikedInfo(object);
			result.add(videolikedinfo);
		});
		return result;
	}

	private VideoLikedInfo setDataVideoLikedInfo(Object[] object) {
		VideoLikedInfo videolikedinfo = new VideoLikedInfo();
		videolikedinfo.setVideoid((Integer)object[0]);
		videolikedinfo.setTitle((String) object[1]);
		videolikedinfo.setHref((String) object[2]);
		videolikedinfo.setTotallike(object[3] == null ? 0 : (Integer)object[3]);
		return videolikedinfo;
	}
}
