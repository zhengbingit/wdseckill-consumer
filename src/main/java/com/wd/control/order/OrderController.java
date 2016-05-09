package com.wd.control.order;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wd.entity.Orders;
import com.wd.entity.User;
import com.wd.service.order.IOrderService;

@Controller
@RequestMapping("/order")
public class OrderController {
	@Autowired
	private IOrderService orderService;
	public void setOrderService(IOrderService orderService) {
		this.orderService = orderService;
	}
	
	/**
	 * 增加订单条目
	 * @param orders
	 * @return
	 */
	@RequestMapping("/addOrder")
	public String addOrder(Orders orders) {
		orders.setO_time(new Date());
		orderService.addOrdersService(orders);
		return "redirect:/order/listOrder.do";
	}
	
	/**
	 * 获得订单条目
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping("/listOrder")
	public String listOrder(ModelMap model, HttpSession session) {
		User user = (User)session.getAttribute("user");
		List<Orders> list_orders = orderService.listOrdersService(user.getU_id());
		model.addAttribute("list_orders", list_orders);
		return "/userOrders.jsp";
	}
	
}
