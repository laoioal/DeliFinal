package com.githrd.deli.controller;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;

import com.githrd.deli.dao.*;

@Controller
@RequestMapping("/event")
public class EbEvent {
	@Autowired
	EunbeeDao eDao;
	
	@RequestMapping("/slot.dlv")
	public ModelAndView eventPage(ModelAndView mv) {
		
		mv.setViewName("event/eventPage");
		return mv;
	}

}
