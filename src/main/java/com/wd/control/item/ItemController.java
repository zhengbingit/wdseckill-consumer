package com.wd.control.item;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wd.entity.Item;
import com.wd.service.items.IItemService;
import com.wd.service.user.IUserService;

@Controller
@RequestMapping("/item")
public class ItemController {
	@Autowired
	private IItemService itemService;
	public void setItemService(IItemService itemService) {
		this.itemService = itemService;
	}
	
	/**
	 * 发布商品
	 * @param item
	 * @return
	 */
	@RequestMapping("/addItem")
	public String addItem(Item item) {
		itemService.addItemService(item);
		return "";
	}
	
	/**
	 * 删除商品
	 * @param i_id
	 * @return
	 */
	@RequestMapping("deleteItem")
	public String deleteItem(HttpServletRequest request) {
		int u_id = Integer.parseInt(request.getParameter("u_id"));
		int i_id = Integer.parseInt(request.getParameter("i_id"));
		System.out.println(u_id+"--"+i_id);
		System.out.println(itemService.deleteItemService(i_id));
		return "/item/listStoreItem.do?u_id=" + u_id;
	}
	
	/**
	 * 根据商品id获得该商品详情
	 * @param i_id
	 * @return
	 */
	@RequestMapping("/getItem")
	public String getItem(HttpServletRequest request) {
		int i_id = Integer.parseInt(request.getParameter("i_id"));
		itemService.getItemService(i_id);
		return "";
	}
	
	/**
	 * 更新商品详情
	 * @param item
	 * @return
	 */
	@RequestMapping("/updateItem")
	public String updateItem(Item item) {
		itemService.editItemService(item);
		return "";
	}
	
	/**
	 * 获得商品列表
	 * @return
	 */
	@RequestMapping("/listItem")
	public String listItem(ModelMap model) {
		model.addAttribute("list_items", itemService.listItemsService());
		return "/itemsList.jsp";
	}
	
	/**
	 * 获得商品列表（未登录）
	 * @param model
	 * @return
	 */
	@RequestMapping("/listItemNoLogin")
	public String listItemNoLogin(ModelMap model) {
		model.addAttribute("list_items", itemService.listItemsNoLoginService());
		return "/itemsListNoLogin.jsp";
	}
	
	/**
	 * 获得卖家店铺的商品列表
	 * @param u_id
	 * @return
	 */
	@RequestMapping("/listStoreItem")
	public String listStoreItem(HttpServletRequest request,ModelMap model) {
		int u_id = Integer.parseInt(request.getParameter("u_id"));
		List<Item> list_items = itemService.listStoreItemsService(u_id);
		model.addAttribute("list_items", list_items);
		if(list_items.size()!=0){
			model.addAttribute("storeName", list_items.get(0).getUser().getU_store());
		}
		return "/userItemsList.jsp";
	}
	
}
