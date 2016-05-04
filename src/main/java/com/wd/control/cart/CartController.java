package com.wd.control.cart;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wd.entity.Cart;
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
		cartService.addCart(cart);
		return "";
	}
	
	/**
	 * 购物车列表
	 * @return
	 */
	@RequestMapping("/listCart")
	public String listCart(ModelMap model, HttpServletRequest request) {
		List<Cart> list_carts = cartService.listCart(Integer.parseInt(request.getParameter("u_id")));
		model.addAttribute("list_carts", list_carts);
		return "";
	}
	
}
