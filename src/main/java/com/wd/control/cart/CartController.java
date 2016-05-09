package com.wd.control.cart;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wd.entity.Cart;
import com.wd.entity.User;
import com.wd.service.cart.ICartService;

@Controller
@RequestMapping("/cart")
public class CartController {
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
	public String listCart(ModelMap model, HttpSession session) {
		User user = (User)session.getAttribute("user");
		List<Cart> list_carts = cartService.listCart(user.getU_id());
		model.addAttribute("list_carts", list_carts);
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
