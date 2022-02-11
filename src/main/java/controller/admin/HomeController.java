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
import dto.VideoLikedInfo;
import entities.User;
import service.StatsService;
import service.Impl.StatsServiceImpl;

@WebServlet(urlPatterns = "/admin", name = "HomeControllerOfAdmin")
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private StatsService statsservice = new StatsServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		User currentUser = (User) session.getAttribute(SessionAttr.CURRENT_USER);
		if (currentUser != null && currentUser.getIsAdmin() == Boolean.TRUE) {
			List<VideoLikedInfo> videos = statsservice.findVideoLikedInfo();
			req.setAttribute("videos", videos);
			req.getRequestDispatcher("/views/admin/home.jsp").forward(req, resp);
		} else {
			resp.sendRedirect("index");
		}
	}
}
