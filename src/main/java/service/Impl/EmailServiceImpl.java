package service.Impl;

import javax.servlet.ServletContext;

import entities.User;
import service.EmailService;
import util.SendEmailUtil;

public class EmailServiceImpl implements EmailService{
	private static final String EMAIL_WELCOME_SUBJECT = "Chào mừng bạn đã đến với Online Entertaiments";
	private static final String EMAIL_FORGOT_PASSWORD = "Online Entertainment - New password";

	@Override
	public void sendEmail(ServletContext context, User recipient, String type) {
		String host = context.getInitParameter("host");
		String port = context.getInitParameter("port");
		String user = context.getInitParameter("user");
		String pass = context.getInitParameter("pass");
		try {
			String content = null;
			String subject = null;
			switch(type) {
			case "welcome":
				subject = EMAIL_WELCOME_SUBJECT;
				content = "Dear " +recipient.getFullname() + ", Cảm ơn bạn đã tạo tài khoản ở chúng tôi";
				break;
			case "forgot":
				subject = EMAIL_FORGOT_PASSWORD;
				content = "Dear " +recipient.getFullname() + ", mật khẩu mới của bạn là: " + recipient.getPassword();
				break;
				default:
					subject = "Online Entertainment";
					content = "Đây chỉ là email lỗi, đừng bận tâm về nó";
					break;
			}
			SendEmailUtil.sendEmail(host, port, user, pass, recipient.getEmail(), subject, content);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
