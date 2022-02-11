package service;

import java.util.List;

import entities.Video;

public interface VideoService {
	Video findById(Integer id);
	Video findByHref(String href);
	List<Video> findAll();
	List<Video> findAll(int pageNumber,int pageSize);
	Video create(Video entity);
	Video delete(String  href);
	Video update(Video entity);
	Video register(String href, String title, String poster, String description);
}