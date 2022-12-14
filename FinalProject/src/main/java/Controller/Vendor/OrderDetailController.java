package Controller.Vendor;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Order;
import Model.OrderItem;
import Services.IOrderItemServices;
import Services.IOrderServices;
import Services.Impl.OrderItemServicesImpl;
import Services.Impl.OrderServicesImpl;


@WebServlet(urlPatterns = {"/vendor/order/orderDetail"})
public class OrderDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	IOrderItemServices orderItemServices = new OrderItemServicesImpl();
	IOrderServices orderServices = new OrderServicesImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String orderId =  req.getParameter("orderId");
		Order order= new Order();
		order= orderServices.findById(Integer.parseInt(orderId));
		List<OrderItem> orderItems = orderItemServices.findByOrderId(Integer.parseInt(orderId));
		req.setAttribute("orderItems", orderItems);
		req.setAttribute("order", order);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/vendor/orderDetail.jsp");
		dispatcher.forward(req, resp);
	}
}
