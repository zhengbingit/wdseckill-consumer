package com.wd.control.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wd.entity.User;
import com.wd.service.user.IUserService;

@Controller
@RequestMapping("/user")
public class UserController {
	public UserController() {
	}
	@Autowired 
	private IUserService userService;
	public void setUserService(IUserService userService) {
		this.userService = userService;
	}
	/**
	 * 注册
	 * @return
	 */
	@RequestMapping("/register")
	public String addUserController(User user, HttpSession session) {
		String[] password = user.getU_pwd().split(",");
		user.setU_money(100000);
		user.setU_pwd(password[0]);
		System.out.println("完成User" + user);
		if(userService.addUserService(user) && password[0].equals(password[1])) {
			session.setAttribute("user", user);
			return "redirect:/item/listItem.do";
		}else {
			return "/userRegister.jsp";
		}
	}
	
	/**
	 * 登录
	 * @param user
	 * @return
	 */
	@RequestMapping("/login")
	public String loginUserController(User user, HttpSession session) {
		// 如果登录成功，将用户加入session，并跳转到 所有商品列表页面
		System.out.println("登录："+user);
		User u = userService.loginService(user);
		if(u!=null){
			session.setAttribute("user", u);
			return "redirect:/item/listItem.do";
		}
		// 如果登录失败，跳转至登录页面，重新登录
		else {
			return "/userLogin.jsp";
		}
	}
}
