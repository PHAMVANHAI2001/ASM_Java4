package controller.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import dao.impl.UserDaoImpl;
import entities.User;
import service.UserService;
import service.Impl.UserServiceImpl;

/**
 * Servlet implementation class UserController
 */
@WebServlet(name = "UserControllerOfAdmin", urlPatterns = { "/admin/user", "/admin/user/add", "/admin/user/delete",
		"/admin/user/update","/admin/user/edit"  })
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserService userservice = new UserServiceImpl();
	private UserDao dao;

	public UserController() {
		super();
		dao = new UserDaoImpl();
	}

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<User> users = userservice.findAll();
		req.setAttribute("users", users);
		req.getRequestDispatcher("/views/admin/list-user.jsp").forward(req, resp);
		String path = req.getServletPath();
		switch (path) {
		case "/user/edit":
			doGetEdit(req, resp);
			break;
		default:
			break;
		}
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<User> users = userservice.findAll();
		req.setAttribute("users", users);
		String path = req.getServletPath();
		switch (path) {
		case "/user/add":
			doPostAdd(req, resp);
			break;
		case "/user/delete":
			doPostDelete(req, resp);
			break;
		case "/user/update":
			doPostUpdate(req, resp);
			break;
		default:
			break;
		}
	}

	private void doGetEdit(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub

	}

	private void doPostUpdate(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub

	}

	private void doPostDelete(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub

	}

	private void doPostAdd(HttpServletRequest req, HttpServletResponse resp) {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String email = req.getParameter("email");
		String fullname = req.getParameter("fullname");
		boolean isadmin = Boolean.parseBoolean(req.getParameter("role"));
		if (dao.findByUsername(username) != null) {
			req.setAttribute("error", "Username đã tồn tại!");
		} else if (dao.findByEmail(email) != null) {
			req.setAttribute("error", "Email đã tồn tại");
		} else {
			User user = userservice.register(username, password, email, fullname, isadmin);
			if (user == null) {
				req.setAttribute("error", "Đăng Ký Thất Bại!");
			} else {
				req.setAttribute("message", "Đăng Ký Thành Công!");
			}
		}
	}

}
