package com.wd.control.order;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wd.entity.Orders;
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
	public String addOrder(Orders orders) {
		orderService.addOrdersService(orders);
		return "";
	}
	
	public String listOrder(ModelMap model, HttpServletRequest request) {
		List<Orders> list_orders = orderService.listOrdersService(Integer.parseInt(request.getParameter("u_id")));
		model.addAttribute("list_orders", list_orders);
		return "";
	}
}
