package Controller.Admin;

import java.io.IOException;

<<<<<<< Updated upstream
import javax.servlet.RequestDispatcher;
=======
>>>>>>> Stashed changes
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

<<<<<<< Updated upstream
@SuppressWarnings("serial")
=======
>>>>>>> Stashed changes
@WebServlet("/admin/home")
public class HomeControllerAdmin extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
<<<<<<< Updated upstream
		RequestDispatcher rq = req.getRequestDispatcher("/view/admin/home.jsp");
		rq.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
	}
	
=======
		req.getRequestDispatcher("/view/admin/home.jsp").forward(req, resp);
	}
>>>>>>> Stashed changes
	
}
