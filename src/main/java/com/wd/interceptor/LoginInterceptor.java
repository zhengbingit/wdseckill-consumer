package com.wd.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor {
	private List<String> allowedPass;

	/**
	 * 在DispatcherServlet处理后执行-----清理工作
	 */
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception e)
			throws Exception {
	}

	/**
	 * 在请求处理的方法之后执行
	 */
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView model)
			throws Exception {
		System.out.println("——————————————处理后——————————————");
	}

	/**
	 * 在请求处理的方法之前执行 如果返回TRUE，那么执行下一个拦截器，如果返回FALSE那么不执行下一个拦截器
	 */
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// 获得当前请求的路径
		String url = request.getRequestURL().toString();

		// 判断是否已经登录
		Object user = request.getSession().getAttribute("user");
		System.out.println("获得Session:"+user);
		System.out.println("url:"+url);
		if (user != null) {
			return true;
		}
		if(url.endsWith("listItemNoLogin.do") || url.endsWith("login.do") || url.endsWith("register.do")) {
			return true;
		}
		// 如果没有登录，限制访问的页面
		for (String temp : allowedPass) {
			if (url.endsWith(temp)) {
				response.sendRedirect(request.getContextPath() + "/item/listItemNoLogin.do");
				return false;
			}
		}
		
		// 如果既没有登录，当前请求也不在允许的List内，跳转到登录页面
		response.sendRedirect(request.getContextPath() + "/user/login.do");
		return false;
	}

	public void setAllowedPass(List<String> allowedPass) {
		this.allowedPass = allowedPass;
	}
}
