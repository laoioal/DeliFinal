package com.githrd.deli.scheduler;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.githrd.deli.controller.YonghyunController;
import com.githrd.deli.dao.YonghyunDao;
import com.githrd.deli.service.YonghyunService;



public class SelectCoupon {
	@Autowired
	YonghyunService ySrvc;
	
	
	public void upSal() {
		ySrvc.mailsend();
		System.out.println("성공");
	}
}
