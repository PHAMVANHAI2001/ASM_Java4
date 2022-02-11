package controller.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import constant.SessionAttr;
import entities.User;
import entities.Video;
import service.VideoService;
import service.Impl.VideoServiceImpl;

/**
 * Servlet implementation class VideoController
 */
@WebServlet(name = "VideoControllerOfAdmin", urlPatterns = { "/admin/video", "/admin/video/edit","/admin/video/add","/admin/video/delete","/admin/video/update"})
public class VideoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private VideoService videoservice = new VideoServiceImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public VideoController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		User currentUser = (User) session.getAttribute(SessionAttr.CURRENT_USER);
		if (currentUser != null && currentUser.getIsAdmin() == Boolean.TRUE) {
			String action = req.getParameter("action");
			switch(action) {
			case "view":
				doGetOverView(req,resp);
				break;
			case "add":
				doGetAdd(req,resp);
				break;
			case "detele":
				doGetDelete(req,resp);
				break;
			}
		}else {
			resp.sendRedirect("index");
		}
	}
	
	private void doGetDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("application/json");
		String href = req.getParameter("href");
		Video videoDelete = videoservice.delete(href);
		if(videoDelete != null) {
			resp.setStatus(204);
		}
		else {
			resp.setStatus(400);
		}
	}

	private void doGetAdd(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Video> videos = videoservice.findAll();
		req.setAttribute("videos", videos);
		req.getRequestDispatcher("/views/admin/edit-video.jsp").forward(req, resp);
	}

	private void doGetOverView(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Video> videos = videoservice.findAll();
		req.setAttribute("videos", videos);
		req.getRequestDispatcher("/views/admin/list-video.jsp").forward(req, resp);
	}

	/*
	 * private void doPostCreate(HttpServletRequest req, HttpServletResponse resp) {
	 * String href = req.getParameter("href"); String title =
	 * req.getParameter("title"); String poster = req.getParameter("poster"); String
	 * description = req.getParameter("description"); Video video =
	 * videoservice.register(href, title, poster, description); }
	 */
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		User currentUser = (User) session.getAttribute(SessionAttr.CURRENT_USER);
		if (currentUser != null && currentUser.getIsAdmin() == Boolean.TRUE) {
			String action = req.getParameter("action");
			switch(action) {
			case "view":
				doGetOverView(req,resp);
				break;
			case "add":
				doGetAdd(req,resp);
				break;
			}
		}else {
			resp.sendRedirect("index");
		}
	}

}
