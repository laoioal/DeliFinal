package com.githrd.deli.interceptor;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.githrd.deli.service.FaqService;
import com.githrd.deli.vo.adminVO;

public class AdminLoginInterceptor implements HandlerInterceptor {
	// 컨트롤러 호출 후 처리
	private static final Logger log = LoggerFactory.getLogger(AdminLoginInterceptor.class);

	@Autowired FaqService service;
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		String uri = request.getRequestURI();
		System.out.println(uri);
		adminVO admin = (adminVO)session.getAttribute("admin");
		System.out.println("admin : "+admin);
		if(admin==null) {
			System.out.println("로그인 실패");
			uri = "/deli/faq/admin/board/loginCheck.dlv";
			System.out.println(uri);
			response.sendRedirect(uri);
			return false;
		}
		System.out.println("pass");
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		String id = request.getParameter("id");
		System.out.println(id);
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {

	}
}
