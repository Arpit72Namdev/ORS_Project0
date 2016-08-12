package com.sunilos.proj0.ctl;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

/**
 * Front controller intercepts all incoming requests and check if user is logged
 * in. If user is not logged in then it will redirect page to Login View.
 * 
 * It is mapped to URI "/*".
 * 
 * @author Business Delegate
 * @version 1.0
 * @Copyright (c) SunilOS
 */
public class FrontCtl extends HandlerInterceptorAdapter {

	/**
	 * If false value is returned then further execution chain will be stopped
	 * and you have to redirect your page to the target page.
	 * 
	 * It is called before request is executed by target controller.
	 */
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		if (session.getAttribute("user") == null) {
			request.setAttribute("error", "OOPS! Your session has been expired");
			RequestDispatcher rd = request.getRequestDispatcher("/Login");
			rd.forward(request, response);
			return false;
		}
		return true;
	}

	/*
	 * Called after request is executed by target controller.
	 */
	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		super.postHandle(request, response, handler, modelAndView);
	}

	/**
	 * Called when request processing is completely done.
	 */
	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		super.afterCompletion(request, response, handler, ex);
	}
}
