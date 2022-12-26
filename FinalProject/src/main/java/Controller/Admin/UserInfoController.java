package Controller.Admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import Model.User;
import Services.IUserServices;
import Services.Impl.UserServices;

@SuppressWarnings("serial")
@WebServlet("/admin/info")
public class UserInfoController extends HttpServlet {
	IUserServices userService = new UserServices();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();
		User obj = (User)session.getAttribute("account");

		if(obj == null) {
			resp.sendRedirect(req.getContextPath() + "/login");
		}else {
			User userLogged = userService.findById(obj.getId());
			req.setAttribute("userLogged", userLogged);
			String action = req.getParameter("action");
			if (action == null) {
				doGet_index(req, resp);
			} else {
				if (action.equalsIgnoreCase("find")) {
					doGet_find(req, resp);
				}
			}
		}
		
	}
	private void doGet_find(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		int id = Integer.parseInt(req.getParameter("id"));
		User user = userService.findById(id);
		Gson gson = new Gson();
		PrintWriter writer = resp.getWriter();
		writer.print(gson.toJson(user));
		writer.flush();
		writer.close();
		
	}
	private void doGet_index(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		req.setAttribute("userList", userService.findAll());
		req.setAttribute("roleList", userService.findAllRole());
		req.getRequestDispatcher("/view/admin/user_info.jsp").forward(req, resp);
	}
}
