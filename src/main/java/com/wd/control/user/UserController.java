package com.wd.control.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wd.entity.User;
import com.wd.service.user.IUserService;

@Controller
@RequestMapping("/user")
public class UserController {
	public UserController() {
		System.out.println("加载!");
	}
	@Autowired 
	private IUserService userService;
	public void setUserService(IUserService userService) {
		System.out.println("装载userService");
		this.userService = userService;
	}
	/**
	 * 注册
	 * @return
	 */
	@RequestMapping("/register")
	public String addUserController(User user) {
		userService.addUserService(user);
		return "/user/login.do";
	}
	
	/**
	 * 登录
	 * @param user
	 * @return
	 */
	@RequestMapping("/login")
	public String loginUserController(User user, HttpSession session) {
		// 如果登录成功，将用户加入session，并跳转到 所有商品列表页面
		User u = userService.loginService(user);
		if(u!=null){
			session.setAttribute("user", u);
			System.out.println("Session 已加入");
			return "/item/listItem.do";
		}
		// 如果登录失败，跳转至登录页面，重新登录
		else {
			return "/userLogin.jsp";
		}
	}
}
