package com.wd.control.order;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wd.entity.Orders;
import com.wd.entity.Pages;
import com.wd.entity.User;
import com.wd.service.order.IOrderService;

@Controller
@RequestMapping("/order")
public class OrderController {
	//页面列表每页页展现40个主题,大于40个分页展现。默认按照时间倒排
	private static final int PAGESIZE = 40;
	//默认显示第一页
	private static int PAGENUM = 1;
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
	public String listOrder(ModelMap model, HttpSession session, HttpServletRequest request) {
		if(request.getParameter("pageNum") != null) {
			PAGENUM = Integer.parseInt(request.getParameter("pageNum"));
		}
		User user = (User)session.getAttribute("user");
		Pages pages = orderService.listOrdersService(PAGENUM, PAGESIZE, user.getU_id());
		List<Orders> list_orders = (List<Orders>)pages.getList();
		model.addAttribute("list_orders", list_orders);
		model.addAttribute("pages", pages.getPages());
		model.addAttribute("pagenow", PAGENUM);
		return "/userOrders.jsp";
	}
	
}
