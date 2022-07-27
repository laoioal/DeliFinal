package com.githrd.deli.controller;

import java.util.*;

import javax.servlet.http.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;
import org.springframework.web.servlet.view.*;

import com.githrd.deli.dao.*;
import com.githrd.deli.vo.*;

/**
 * 쿠폰 관련 작업을 전담해서 처리하는 클래스
 * @author	안은비
 * @since	2022.07.26
 * @version	v.1.0
 * 
 * 			작업이력 ]
 * 				2022.07.26	-	클래스제작
 * 				2022.07.26	-	eventPage()
 * 				2022.07.27	-	evtProc()
 * 				2022.07.27	-	myCoupon()
 * 									담당자 ] 안은비
 */

@Controller
@RequestMapping("/event")
public class EbEvent {
	@Autowired
	EunbeeDao eDao;
	
	@RequestMapping("/slot.dlv")
	public ModelAndView eventPage(ModelAndView mv, HttpSession session, RedirectView rv) {
		if(session.getAttribute("SID") == null) {
			rv.setUrl("/deli//member/login.dlv");
			mv.setView(rv);
			return mv;
		}
		
		mv.setViewName("event/eventPage");
		return mv;
	}
	
	@RequestMapping("/evtProc.dlv")
	public RedirectView evtProc(HttpSession session, RedirectView rv, EunbeeVO eVO) {
		eVO.setId((String)session.getAttribute("SID"));
		eDao.insCoupon(eVO);
		
		rv.setUrl("/deli/event/myCoupon.dlv");
		return rv;
	}
	
	@RequestMapping("/myCoupon.dlv")
	public ModelAndView myCoupon(ModelAndView mv, HttpSession session, RedirectView rv, String id) {
		if(session.getAttribute("SID") == null) {
			rv.setUrl("/deli//member/login.dlv");
			mv.setView(rv);
			return mv;
		}
		
		id = (String)session.getAttribute("SID");
		List<EunbeeVO> list = eDao.getClist(id);
		session.setAttribute("CLIST", list);
		
		mv.setViewName("event/myCoupon");
		return mv;
	}

}
