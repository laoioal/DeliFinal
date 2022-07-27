package com.githrd.deli.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;
import org.springframework.web.servlet.view.RedirectView;

import com.githrd.deli.dao.*;
import com.githrd.deli.service.EunbeeService;
import com.githrd.deli.vo.EunbeeVO;

/**
 * 아이디 비밀번호 찾기 작업을 전담해서 처리하는 클래스
 * @author	안은비
 * @since	2022.07.14
 * @version	v.1.0
 * 
 * 			작업이력 ]
 * 				2022.07.14	-	클래스제작
 * 				2022.07.20	-	idFind()
 * 				2022.07.20	-	idFindResult()
 * 				2022.07.21	-	pwFind()
 * 				2022.07.21	-	pwFindResult()
 * 									담당자 ] 안은비
 */

@Controller
@RequestMapping("/find")
public class EbFind {
	@Autowired
	EunbeeDao eDao;
	@Autowired
	EunbeeService eSvc;
	
	@RequestMapping("/idFind.dlv")
	public ModelAndView idFind(ModelAndView mv, HttpSession session, RedirectView rv) {
		if(session.getAttribute("SID") != null) {
			rv.setUrl("/deli/main.dlv");
			mv.setView(rv);
			return mv;
		}
		
		mv.setViewName("find/idFind");
		return mv;
	}
	
	@RequestMapping("/idFindResult.dlv")
	public ModelAndView idFindResult(ModelAndView mv, HttpSession session, RedirectView rv, EunbeeVO eVO, String mail) {
		if(session.getAttribute("SID") != null) {
			rv.setUrl("/deli/main.dlv");
			mv.setView(rv);
			return mv;
		}
		
		String id = eDao.getId(mail);
		session.setAttribute("FID", id);
		mv.setViewName("find/idFindResult");
		return mv;
	}
	
	@RequestMapping("/pwFind.dlv")
	public ModelAndView pwFind(ModelAndView mv, HttpSession session, RedirectView rv) {
		if(session.getAttribute("SID") != null) {
			rv.setUrl("/deli/main.dlv");
			mv.setView(rv);
			return mv;
		}
		
		mv.setViewName("find/pwFind");
		return mv;
	}
	
	@RequestMapping("/pwFindResult.dlv")
	public ModelAndView pwFindResult(ModelAndView mv, HttpSession session, RedirectView rv, EunbeeVO eVO, HttpServletRequest req) {
		if(session.getAttribute("SID") != null) {
			rv.setUrl("/deli/main.dlv");
			mv.setView(rv);
			return mv;
		}
		
		String mail = eDao.getMail(eVO);
		session.setAttribute("FMAIL", mail);
		
		if(mail != null) {
			eDao.editPw(eVO);
			String npw = req.getParameter("npw");
			eSvc.sendMail(mail, npw);
		}
		
		mv.setViewName("find/pwFindResult");
		return mv;
	}
}
