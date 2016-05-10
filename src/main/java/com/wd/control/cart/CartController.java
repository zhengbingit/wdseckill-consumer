package com.wd.control.cart;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wd.entity.Cart;
import com.wd.entity.Pages;
import com.wd.entity.User;
import com.wd.service.cart.ICartService;

@Controller
@RequestMapping("/cart")
public class CartController {
	//页面列表每页页展现40个主题,大于40个分页展现。默认按照时间倒排
	private static final int PAGESIZE = 40;
	//默认显示第一页
	private static int PAGENUM = 1;
	@Autowired
	private ICartService cartService;
	public void setCartService(ICartService cartService) {
		this.cartService = cartService;
	}
	
	/**
	 * 加入购物车
	 * @return
	 */
	@RequestMapping("/addCart")
	public String addCart(Cart cart) {
		cart.setC_time(new Date());
		System.out.println(cart);
		cartService.addCart(cart);
		return "redirect:/cart/listCart.do";
	}
	
	/**
	 * 购物车列表
	 * @return
	 */
	@RequestMapping("/listCart")
	public String listCart(ModelMap model, HttpSession session, HttpServletRequest request) {
		if(request.getParameter("pageNum") != null) {
			PAGENUM = Integer.parseInt(request.getParameter("pageNum"));
		}
		User user = (User)session.getAttribute("user");
		Pages pages = cartService.listCart(PAGENUM, PAGESIZE, user.getU_id());
		List<Cart> list_carts = (List<Cart>)pages.getList();
		//获得信息总条数
		model.addAttribute("pages", pages.getPages());
		model.addAttribute("list_carts", list_carts);
		model.addAttribute("pagenow", PAGENUM);
		return "/userCarts.jsp";
	}
	
	/**
	 * 在购物车中点击购买-跳转至收银台（其中商品库存减1）
	 * 可能是购买多个商品
	 * @return
	 */
	@RequestMapping("/tobuyCart")
	public String buyCart(int[] c_id, ModelMap model) {
		List<Cart> list_carts = new ArrayList<Cart>();
		System.out.println(c_id.length+":length");
		double amount = 0;
		for (int i = 0; i < c_id.length; i++) {
			Cart cart = cartService.getCart(c_id[i]);
			list_carts.add(cart);
			amount += cart.getItem().getI_price() * cart.getC_count() + cart.getItem().getI_postage();
		}
		model.addAttribute("amount",amount);
		model.addAttribute("list_carts", list_carts);
		model.addAttribute("formPath", "../pay/payCart.do");
		return "/userPay.jsp";
	}
	
}
