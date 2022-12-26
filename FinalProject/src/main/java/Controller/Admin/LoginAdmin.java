package Controller.Admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.User;
import Services.IUserServices;
import Services.Impl.UserServices;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = { "/login", "/logout" })
public class LoginAdmin extends HttpServlet {

	IUserServices user = new UserServices();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURL().toString();
		HttpSession session1 = req.getSession();
		Object obj = session1.getAttribute("userLogin");
		
		if (url.contains("/login")) {
			Cookie[] cookies = req.getCookies();
			resp.setContentType("text/html");
			if (cookies != null) {
				for (Cookie cook : cookies) {
					if (cook.getName().equals("cookUname")) {
						req.setAttribute("username", cook.getValue());
					} else if (cook.getName().equals("cookPass")) {
						req.setAttribute("password", cook.getValue());
					}
				}
			}
			if (!session1.isNew() && obj != null) {
				resp.sendRedirect("admin/home");
			}
			else {
				req.getRequestDispatcher("/view/admin/login.jsp").forward(req, resp);
			}
		} else if (url.contains("/logout")) {
			session1.invalidate();
			resp.sendRedirect("login");
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String remember = req.getParameter("remember");

		if (remember != null && remember.equals("1")) {
			Cookie cookieUname = new Cookie("cookUname", username);
			Cookie cookiePass = new Cookie("cookPass", password);
			resp.addCookie(cookiePass);
			resp.addCookie(cookieUname);

		}

		User userLogin = user.loginUser(username, password);
		if (userLogin == null) {
			req.setAttribute("mess", "Sai tài khoản mật khẩu");
		} else {
			if (!userLogin.isActive()) {
				req.setAttribute("mess", "Tài khoản đã bị khóa");
			} else if (userLogin.getId_role() == 3) {
				HttpSession session = req.getSession();
				session.setAttribute("userLogin", userLogin);
				/* session.setMaxInactiveInterval(10000); */
				
			} else if (userLogin.getId_role() == 1 || userLogin.getId_role() == 2) {
				req.setAttribute("mess", "Bạn không phải là quản trị viên");
			}
		}
		resp.sendRedirect("login");
	}
}
