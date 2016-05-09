package com.wd.control.pay;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wd.entity.User;
import com.wd.service.pay.IPayService;

@Controller
@RequestMapping("/pay")
public class PayController {
	@Autowired
	private IPayService payService;
	public void setPayService(IPayService payService) {
		this.payService = payService;
	}
	/**
	 * 下单压测，仅针对单个商品下单
	 * @param buyer_id 买家id
	 * @param item_id 商品id
	 * @param quantity 下单数量
	 * @return
	 */
	@RequestMapping("/confirm_order")
	public String payOne(int buyer_id, int item_id, int quantity) {
		System.out.println("直接购买");
		System.out.println(payService.payOneService(buyer_id, item_id, quantity));
		return "redirect:/order/listOrder.do";
	}
	
	/**
	 * 购物车或秒杀购买
	 * 	由点击“购买”、“购物车”进入
	 * 	跳转至下单页面
	 * @return
	 */
	@RequestMapping("/payCart")
	public String payCart(int[] c_id, HttpSession session) {
		System.out.println("通过购物车购买");
		User user = (User)session.getAttribute("user");
		System.out.println(payService.payListService(c_id, user.getU_id()));
		return "redirect:/order/listOrder.do";
	}
	
}
