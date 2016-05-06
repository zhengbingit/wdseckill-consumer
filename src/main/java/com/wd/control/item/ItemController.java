package com.wd.control.item;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.collections.set.SynchronizedSet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.wd.entity.Item;
import com.wd.entity.User;
import com.wd.service.items.IItemService;

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
	 * 
	 * @param item
	 * @return
	 * @throws IOException
	 * @throws IllegalStateException
	 */
	@RequestMapping("/addItem")
	public String addItem(@RequestParam("file") CommonsMultipartFile file, Item item, HttpServletRequest request)
			throws IllegalStateException, IOException {
		// 文件类型
		String type = file.getOriginalFilename();
		type = type.substring(type.lastIndexOf(".") + 1);
		// 文件名
		Date date = new Date();
		StringBuffer pic = new StringBuffer();
		pic.append(date.getTime());
		pic.append(".");
		pic.append(type);

		@SuppressWarnings("deprecation")
		String path = request.getRealPath("/upload");

		file.transferTo(new File(path + "/" + pic.toString()));
		itemService.addItemService(item);
		User user = (User) request.getSession().getAttribute("user");
		int u_id = user.getU_id();
		return "/item/listStoreItem.do?u_id=" + u_id;
	}

	/**
	 * 删除商品
	 * 
	 * @param i_id
	 * @return
	 */
	@RequestMapping("/deleteItem")
	public String deleteItem(HttpServletRequest request) {
		int u_id = Integer.parseInt(request.getParameter("u_id"));
		int i_id = Integer.parseInt(request.getParameter("i_id"));
		System.out.println(u_id + "--" + i_id);
		System.out.println(itemService.deleteItemService(i_id));
		return "/item/listStoreItem.do?u_id=" + u_id;
	}

	/**
	 * 根据商品id获得该商品详情
	 * 
	 * @param i_id
	 * @return
	 */
	@RequestMapping("/getItem")
	public String getItem(HttpServletRequest request, ModelMap model) {
		int i_id = Integer.parseInt(request.getParameter("i_id"));
		Item item = itemService.getItemService(i_id);
		model.addAttribute("item", item);
		if (item.getI_killtime() != null) {
			String surplusTime = surplusTime(item.getI_killtime());
			System.out.println(surplusTime);
			model.addAttribute("surplusTime", surplusTime);
		}
		return "/itemDetails.jsp";
	}

	/**
	 * 编辑商品
	 * 
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping("/toUpdateItem")
	public String toUpdateItem(HttpServletRequest request, ModelMap model) {
		int i_id = Integer.parseInt(request.getParameter("i_id"));
		Item item = itemService.getItemService(i_id);
		model.addAttribute("item", item);
		if (item.getI_killtime() != null) {
			String surplusTime = surplusTime(item.getI_killtime());
			model.addAttribute("surplusTime", surplusTime);
		}
		return "/itemsRelease.jsp";
	}

	/**
	 * 更新商品详情
	 * 
	 * @param item
	 * @return
	 * @throws IOException 
	 * @throws IllegalStateException 
	 */
	@RequestMapping("/updateItem")
	public String updateItem(@RequestParam MultipartFile[] files, Item item, HttpServletRequest request) throws IllegalStateException, IOException {
		String[] i_imgs = {"1.jpg","2.jpg","3.jpg"};
		// 文件类型
		if(files != null && files.length > 0) {
			for (int i = 0; i < files.length; i++) {
				String type = files[i].getOriginalFilename();
				type = type.substring(type.lastIndexOf(".") + 1);
				// 文件名
				Date date = new Date();
				StringBuffer pic = new StringBuffer();
				pic.append(date.getTime());
				pic.append(".");
				pic.append(type);
				//获得保存文件路径
				@SuppressWarnings("deprecation")
				String path = request.getRealPath("/upload");
				//输出文件到本地
				System.out.println(path);
				files[i].transferTo(new File(path + "/" + pic.toString()));
				if(!files[i].isEmpty()) {
					i_imgs[i] = pic.toString();
				}
			}
		}
		if(!i_imgs[0].isEmpty()) {
			item.setI_img1(i_imgs[0]);
		}
		if(!i_imgs[1].isEmpty()) {
			item.setI_img2(i_imgs[1]);
		}
		if(!i_imgs[2].isEmpty()) {
			item.setI_img3(i_imgs[2]);
		}
		item.setI_time(new Date());
		System.out.println(item);
		//更新数据库
		System.out.println(itemService.editItemService(item));
		User user = (User) request.getSession().getAttribute("user");
		int u_id = user.getU_id();
		return "/item/listStoreItem.do?u_id=" + u_id;
	}

	/**
	 * 获得商品列表
	 * 
	 * @return
	 */
	@RequestMapping("/listItem")
	public String listItem(ModelMap model) {
		model.addAttribute("list_items", itemService.listItemsService());
		return "/itemsList.jsp";
	}

	/**
	 * 获得商品列表（未登录）
	 * 
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
	 * 
	 * @param u_id
	 * @return
	 */
	@RequestMapping("/listStoreItem")
	public String listStoreItem(HttpServletRequest request, ModelMap model) {
		int u_id = Integer.parseInt(request.getParameter("u_id"));
		List<Item> list_items = itemService.listStoreItemsService(u_id);
		for (Item item : list_items) {
			Date date2 = item.getI_killtime();
			if (date2 != null) {
				item.setSurplustime(surplusTime(date2));
			}
		}
		model.addAttribute("list_items", list_items);
		if (list_items.size() != 0) {
			// 获得当前查看店铺的店铺名与店铺Id
			model.addAttribute("storeName", list_items.get(0).getUser().getU_store());
			model.addAttribute("storeId", list_items.get(0).getUser().getU_id());
		}
		return "/userItemsList.jsp";
	}

	/**
	 * 计算秒杀剩余时间
	 * 
	 * @param date2
	 * @return
	 */
	private String surplusTime(Date date2) {
		System.out.println(date2);
		Date date = new Date();
		long temp = date2.getTime() - date.getTime(); // 相差毫秒数
		long hours = temp / 1000 / 3600; // 相差小时数
		long temp2 = temp % (1000 * 3600);
		long mins = temp2 / 1000 / 60; // 相差分钟数
		String surplustime = hours + ":" + mins;
		return surplustime;
	}

}
