package com.githrd.deli.scheduler;

import org.springframework.beans.factory.annotation.Autowired;

import com.githrd.deli.service.*;

public class SelectCoupon {
	@Autowired
	YonghyunService ySrvc;
	
	
	public void upSal() {
		System.out.println("3");
		ySrvc.mailsend();
		System.out.println("성공");
	}
}
